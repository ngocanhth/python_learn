import requests
from bs4 import BeautifulSoup


def get_news():
    list_news = []
    r = requests.get("https://www.bloomberg.com/crypto")
    soup = BeautifulSoup(r.text, 'html.parser')
    mydivs = soup.find_all("h3", {"class": "info__heading"})

    print(soup)

    # for new in mydivs:
    #     newdict = {}
    #     newdict["link"] = new.a.get("href")
    #     newdict["title"] = new.a.get("title")
    #     list_news.append(newdict)
    #
    # return mydivs

get_news()