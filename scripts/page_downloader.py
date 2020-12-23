#!/usr/bin/env python3
import requests as r
from bs4 import BeautifulSoup
from sys import argv



def parse_html(url: str) -> str:
    response = r.get(url)
    body = response.text

    soup = BeautifulSoup(body, 'html.parser')
    title = soup.find('title').string
    return body, title



def save_web_page(body: str, name: str) -> bool:
    with open(name.replace('/', '|')+'.html', 'w+') as _file:
        _file.write(body)

    return True




if __name__=='__main__':
    for url in argv[1:]:
        save_web_page(*parse_html(url))
