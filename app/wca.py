import os
import requests
from bs4 import BeautifulSoup
URL = 'https://www.worldcubeassociation.org'


def competitions(soup):
    """ Grabs all the wca competitions for a particular
        area/location.

        :soup: BeautifulSoup object
    """

    data = []

    try:
        ul = soup.find("ul", {"class": "list-group"})
        lis = ul.find_all("li")[1:20]
        for li in lis:
            date = li.find("span", {"class": "date"}).text
            venue = li.find("div", {"class": "venue-link"}).text
            location = li.find("div", {"class": "location"}).text
            detail = li.find("div", {"class": "competition-link"})
            name = detail.text
            short_link = detail.find('a')['href']
            wca_link = os.path.join(URL, short_link[0:])
            data.append([date, name, venue, location, wca_link])

        return data

    except AttributeError:
        print(" 404 competitions not found ")


def wca(city: str):
    try:
        url = """
                https://www.worldcubeassociation.org/competitions?utf8=%E2%9C%93&region=all&search=
                {}&state=present&year=all+years&from_date=&to_date=&delegate=&display=list'
              """.format(city)

        response = requests.get(url)
        soup = BeautifulSoup(response.text, 'html.parser')
        return competitions(soup)

    except ValueError:
        print("EK goli tere naam ki bhi")
