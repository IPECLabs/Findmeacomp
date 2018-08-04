import os
import json
import requests

from bs4 import BeautifulSoup
from geopy.geocoders import Nominatim

THIS_DIR = os.path.dirname(os.path.abspath(__file__))
URL = 'https://ratings.fide.com/'


def getCountry(city):
    """To find country based on the city entered by the user"""
    geolocator = Nominatim(user_agent="my-application")
    location = geolocator.geocode(city, language='en')
    country = str(location.address).replace(" ", "").split(",")[-1]
    return country


def getCountryCode(country):
    """Converts country to country code using CountryCodes.json"""
    path = os.path.join(THIS_DIR, 'CountryCodes.json')
    with open(path) as f:
        data = json.load(f)
    for d in data:
        if d['name'].lower() == country:
            return d['code']


def getList(soup, city=None):
    """ To get the list of available tournaments"""
    table = soup.find('div', {'id': 'main-col'}).find_all('table')[
        1].find_all('tr')[2].find('td').find_all('table')[1]
    trs = table.find_all('tr', bgcolor=True)
    myList = []

    for tr in trs:
        link = URL + tr.find('a').get('href')
        data = tr.find_all('td')[2:4] + tr.find_all('td')[5:6]
        tds = [td.get_text(strip=True) for td in data]
        tds.append(link)
        myList.append(tds)

    list_ = [i for i in myList for c in i[1].lower().split(', ') if c == city]
    return list_


def chess(city: str):

    country = getCountry(city)
    countryCode = getCountryCode(country.lower())
    url = 'https://ratings.fide.com/tournament_list.phtml?moder=ev_code&country={}'.format(
        countryCode)
    res = requests.get(url)
    soup = BeautifulSoup(res.content, "lxml")
    competitions = getList(soup, city)
    return competitions
