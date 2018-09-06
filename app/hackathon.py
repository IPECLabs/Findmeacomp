import requests
from bs4 import BeautifulSoup


def getComp(soup):
    lis = []
    tables = soup.find('div',{'class':'ht-page__content'}).find('div',{'class':'row align-center'})
    ta = tables.find_all('div',{'class':'small-12 medium-6 large-12 column'})
    try:
        for t in ta:
            location = t.find('a', {'class':'ht-idt-card__location'}).text
            link = t.find('div',{'class':'ht-idt-card__banner'}).find('a').get('href')
            cName = t.find('div',{'class':'ht-idt-card__right'}).find('a').text
            date = t.find('div',{'class':'ht-idt-card__date'}).get_text(strip=True)
            lis.append([cName, date, desc, location, link])
    except AttributeError:
        pass
    finally:
        return lis


def main():
    city = input("Enter city ")
    url = 'https://www.hackathon.com/city/india/{}'.format(city)
    response = requests.get(url, verify=False)
    soup = BeautifulSoup(response.content, 'lxml')
    lis = getComp(soup)
    print(lis)

if __name__ == '__main__':
    main()
