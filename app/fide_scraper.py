import json
import requests

from bs4 import BeautifulSoup
from geopy.geocoders import Nominatim


def getCountry(city):
    """To find out the country based on the city entered by the user"""
    geolocator = Nominatim(user_agent="my-application")
    location = geolocator.geocode(city, language='en')
    country = str(location.address).replace(" ", "").split(",")[-1]
    return country


def getCountryCode(country):
    """To get the country code of the country entered by the user. It reads the country codes from a json file CountryCodes.json"""
    with open('CountryCodes.json') as f:
        data = json.load(f)
    for d in data:
        if d['name'].lower() == country:
            return d['code']


def getList(soup, city=None):
    """To get the list of available tournaments"""
    table = soup.find('div', {'id': 'main-col'}).find_all('table')[
        1].find_all('tr')[2].find('td').find_all('table')[1]
    trs = table.find_all('tr', bgcolor=True)
    myList = [tr.text for tr in trs]
    myList = [x.split('\xa0') for x in myList]
    myList2 = [y for x in myList for y in x if y != ""]
    new_list = [myList2[i:i + 5] for i in range(0, len(myList2), 5)]
    nlist = []

    for i in new_list:
        i[1] = i[1][:-1]
        if city:
            for c in i[1].lower().split(', '):
                if c == city:
                    nlist.append(list(i))

        else:
            return new_list
    return nlist


def main():
    city = input('Enter your city name! ')
    country = getCountry(city)
    countryCode = getCountryCode(country.lower())
    url = 'https://ratings.fide.com/tournament_list.phtml?moder=ev_code&country={}'.format(
        countryCode)
    res = requests.get(url)
    soup = BeautifulSoup(res.content, "lxml")
    List = getList(soup, city)
    print(List)


if __name__ == '__main__':
    main()
