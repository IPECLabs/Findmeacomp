import requests

from bs4 import BeautifulSoup
from selenium import webdriver

browser = webdriver.Chrome()


def getComps(soup):
    """Get hackathon events from hackathonsnear.me
        :section: section object containing all info
        :hList: list of objects having hackathon info
        :data: data containing info about hackathon
        :name: name of the event
        :link: link for the event
        :location: location of the event
        :date: date for the event
        :lis: lis having name, date, location and link
    """
    lis = []
    section = soup.find('section', id='main-section')
    hList = section.find_all('div', id='hackathon-list')
    for h in hList:
        data = h.find('div', {'class': 'columns small-5'})
        name = data.get_text(strip=True)
        link = data.find('a').get('href')
        date = h.find('div', {
                      'class': 'columns small-3 medium-2 large-3 ng-binding'}).get_text(strip=True)
        location = h.find('div', {
                          'class': 'columns small-4 medium-3 large-2 ng-binding'}).get_text(strip=True)
        lis.append([name, location, date, link])
    return lis


def main():
    url = 'http://hackathonsnear.me/'
    browser.get(url)
    html = browser.page_source
    soup = BeautifulSoup(html, "lxml")
    lis = getComps(soup)
    print(lis)
    browser.close()
    browser.quit()


if __name__ == '__main__':
    main()
