import requests
from bs4 import BeautifulSoup


def getComps(soup):
    """Get hackathon events or challanges from devpost.py
        :results: object having challenge info
        :rows: list of challenges objects
        :data: containing all the info
        :name: name of the event
        :link: link for the event
        :date: date of the event
        :location: location of the event
        :lis: lis having name, date, location and link
    """
    lis = []
    results = soup.find('div', {'class': 'challenge-results'})
    rows = results.find_all('div', {'class': 'row'})
    try:
        for elements in rows:
            data = element.find('div', {'class': 'large-12 columns'})
            link = element.find(
                'div', {'class': 'large-12 columns'}).find('a').get('href')

            name = data.find('div', {'class': 'large-9 columns'}
                             ).find('h2', {'class': 'title'}).get_text(strip=True)
            location = data.find('div', {'class': 'large-9 columns'}).find(
                'p', {'class': 'challenge-location'}).get_text(strip=True)
            date = data.find('div', {'class': 'large-3 columns'}).find_all(
                'div', {'class': 'row'})[1].get_text(strip=True)
            lis.append([name, location, date, link])
    except AttributeError:
        pass
    finally:
        return lis


def main():
    city = input("Enter your city ")
    url = 'https://devpost.com/hackathons?utf8=%E2%9C%93&search={}&challenge_type=all&sort_by=Submission+Deadline'.format(
        city)
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'lxml')
    lis = getComps(soup)
    print(lis)


if __name__ == '__main__':
    main()
