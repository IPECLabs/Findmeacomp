import requests
import pycountry

from bs4 import BeautifulSoup


def getCountryCode(country):
    """To get the country code in alpha3 format by using the country's name"""
    for c in pycountry.countries:
        if country == c.name.lower():
            return c.alpha_3


def getList(soup, city = None):
    """To get the list of the available tournaments"""
    table = soup.find('div',{'id':'main-col'}).find_all('table')[1].find_all('tr')[2].find('td').find_all('table')[1]
    trs = table.find_all('tr', bgcolor=True)
    myList = [tr.text for tr in trs]
    myList = [x.split('\xa0') for x in myList]
    myList2 = [y for x in myList for y in x if y != ""]
    new_list = [myList2[i:i+5] for i in range(0, len(myList2), 5)]
    nlist = []

    for i in new_list:
        i[1] = i[1][:-1]

    for i in new_list:
        if city is not None:
            if i[1].lower() == city:
                nlist.append(list(i))

        else:
            return new_list

    return nlist


def main():
    city = input("Enter City Name!")
    country = input("Enter Country Name!")
    countryCode = getCountryCode(country)
    url = 'https://ratings.fide.com/tournament_list.phtml?moder=ev_code&country={}'.format(countryCode)
    res = requests.get(url)
    soup = BeautifulSoup(res.content, "lxml")
    myList = getList(soup, city)
    print(myList)


if __name__ == '__main__':
    main()
