import requests
from bs4 import BeautifulSoup


def getComps(soup: object):
    """Get hackathon comps from hackathon.io
        :eResults: event results object
        :eventTeasers: list of all the event objects
        :event: individual event
        :date: date of the event
        :name: name of the event
        :link: link of the event
        :location: location of the event
        :lis: lis having name, date, location and link
    """
    lis = []
    eResults = soup.find('div', {'class': 'event-results'})
    eventTeasers = eResults.find_all('div', {'class': 'event-teaser'})
    for event in eventTeasers:
        data = event.find('div', {'class': 'seven columns description'})
        date = event.find(
            'div', {'class': 'two columns time'}).get_text(strip=True)
        name = data.find('h4').get_text()
        link = data.find('h4').find('a').get('href')
        link = 'http://www.hackathon.io' + link
        location = event.find(
            'div', {'class': 'two columns location'}).get_text(strip=True)
        lis.append([name, location, date, link])
    return lis


def main():
    city = input("Enter the city")
    url = 'http://www.hackathon.io/events?location={}'.format(city)
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'lxml')
    lis = getComps(soup)
    print(lis)


if __name__ == '__main__':
    main()
