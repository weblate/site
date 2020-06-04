#!/usr/bin/env python3
"""Calls `./src-to-pot.sh` and `./po-to-src.sh` for all source repos"""

import json
import hashlib
import os
import pprint
import urllib.request

URL = "https://webmention.io/api/mentions.jf2?token=UK_X-MlZDHSDueSEw2UWXQ"
DATAFOLDER = "./data/webmentions/"
DEST = "prod" # set to localhost for tests
JSON_FILE = DATAFOLDER + "/mentions.json"

def main():
    os.makedirs(DATAFOLDER, exist_ok=True)

    urllib.request.urlretrieve(
        URL, JSON_FILE
    )

    with open(JSON_FILE) as json_data:
        data = json.load(json_data)
        urlData = {}

        for item in data['children']:
            wmProperty = item["wm-property"];
            url = item[wmProperty];

            if url not in urlData:
                urlData[url] = {}

            urlDataItem = urlData[url]

            if wmProperty not in urlData[url]:
                urlData[url][wmProperty] = []

            urlData[url][wmProperty].append(item)

        for key in urlData.keys():
            item = urlData[key]
            if DEST == "localhost":
                key = key.replace("https://languages-in-floss.eu", "http://localhost:1313")

            md5url = hashlib.md5(key.encode('utf-8')).hexdigest()

            with open(DATAFOLDER + md5url +'.json', 'w') as outfile:
                json.dump(item, outfile)

if __name__ == '__main__':
    main()
