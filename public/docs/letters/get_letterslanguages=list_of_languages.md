# Letters API

## GET /letters?languages=:list_of_languages

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels | false | null
| senders | Comma seperated list of sender labels | false | null
| repositories | Comma seperated list of repository labels | false | null
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?languages=German%2C+italian</pre>

#### Query Parameters

<pre>languages: German, italian</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?languages=German%2C+italian&amp;page=1&gt;; rel=&#39;self&#39;
X-Total-Count: 13
Content-Type: application/json; charset=utf-8
ETag: W/&quot;bd34b8266b41a782249a2d1764be3700&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c0342f7a-563b-45ec-ad7a-6099d4a49f7d
X-Runtime: 4.486221
Vary: Origin
Content-Length: 16721</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/403799c7-6b18-4b91-8951-16cf8b66919c",
      "date": "1957-01-19T00:00:00.000-05:00",
      "label": "19 January 1957 - Botsford, Elnora",
      "recipients": [
        "Botsford, Elnora"
      ],
      "destinations": [
        "London"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bc330501-2deb-4ebf-bbe1-e6a0f69b70c3",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/ff0ebc6f-61bd-48c5-a766-6bf7624cd10c",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1e34def7-4f69-470a-90b3-eab908261718",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4846543f-c93f-496a-ad18-9b60460518bd",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/323a4f18-c33a-4a3a-aa9b-e2fb97e0af05",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e9f06bef-6c0d-4f39-ad9b-628289cc646f",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/a6dbfbf4-8944-44ce-b3fa-7db68915d671",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b9a6acdb-0978-47ed-b19d-452c82f878eb",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f9b8ca0a-ad21-47cd-9cc7-ad164d5c6953",
      "date": "1959-04-07T00:00:00.000-05:00",
      "label": "07 April 1959 - Bailey, Sharan",
      "recipients": [
        "Bailey, Sharan"
      ],
      "destinations": [
        "<i>Lord's Cricket Ground</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/63389caf-c6c6-4ac0-9e90-4237b2110021",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f276d588-31df-4c91-a96b-442b9febaddc",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f75bedd3-b9a0-42f7-9f89-6e143ce7d1d2",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8c9a446b-8b8c-4a6b-a317-17e2a092e608",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/c3fc92b0-580d-41b8-81d2-72f6e3e8df3c",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f7574085-ad86-4782-b859-dd6eea9972dc",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1cffbff9-c6d0-4fc5-8247-991118075dd8",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/eec82a29-d782-4423-81ea-0005e44d3375",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/28154090-3dfc-4813-843e-364a2f286ebb",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/6e7d9dd0-d60a-44ca-9553-a74c22fa859c",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b1b8baff-1fbe-46ce-8d2e-b58a848ebd2b",
      "date": "1959-05-03T00:00:00.000-04:00",
      "label": "03 May 1959 - Goyette, Rodrigo",
      "recipients": [
        "Goyette, Rodrigo"
      ],
      "destinations": [
        "Slim's Throat Emporium"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8ecf5f91-d7d5-4d40-9513-13cfb19002c4",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f3d7b946-1145-4f24-ad7d-eac5f6056cc4",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/69e863ac-5534-4d5d-a7b9-93bed8027fd7",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1bc7b50d-f9e6-41a9-b043-09a54846f479",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/665d52b8-ace0-413a-8cf8-2c66b09846b9",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d9dad02a-7914-4f37-8cfb-a3e7e7928ed6",
      "date": "1960-07-12T00:00:00.000-04:00",
      "label": "12 July 1960 - Hoppe, Romeo",
      "recipients": [
        "Hoppe, Romeo"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1bf7037e-6b65-4e83-b8a2-199c55042e37",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2ec52ee1-6f52-41bc-95b1-dc5473b90314",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/718d8321-6f97-4c8b-b691-8259990b756e",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e1367da8-3a3d-4699-a500-14b815e7b86c",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d9555237-aad1-4214-b170-833987215c42",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e73f2fee-86ac-4326-af46-ad0deb7f3f2a",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/eb864f4b-3ced-4a70-9474-defa2065cc63",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/58bf9506-4167-49d4-acc3-e00bf295ef62",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/74a4117f-8d2b-419d-812b-052d0dc81921",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/dbc55fd3-608d-4328-a43d-7e07453e625f",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a71bee0b-7c7c-4f71-aee5-198fa68e4cad",
      "date": "1961-09-20T00:00:00.000-04:00",
      "label": "20 September 1961 - Purdy, Federico",
      "recipients": [
        "Purdy, Federico"
      ],
      "destinations": [
        "Zarss"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/75108a92-27f1-4853-ac50-14ddf73b97f6",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f33ccc73-6d59-4919-adb9-77cea334a8e6",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fe5e5072-180d-4731-96ca-4b88d512dfd1",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/3babc7d4-a8df-4f18-a136-12b7431515c6",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/baa9ce56-b451-4e81-b150-097f20a3c706",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/84c8f457-c13d-47a4-b99c-eb7e34c78eaf",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e790c448-8999-4194-83a0-ee0e35cd73c6",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/192db3b8-813b-4dec-8bd1-52af9da62a37",
      "date": "1962-01-30T00:00:00.000-05:00",
      "label": "30 January 1962 - Abbott, Davis",
      "recipients": [
        "Abbott, Davis"
      ],
      "destinations": [
        "Ibiza"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f829a4a4-e2be-411d-9f2b-26b370dc8761",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/162b5f0c-9fa0-45ee-a334-02e4bc8ddbae",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/356b3cd8-7540-46cf-8723-3d5ffc1fd909",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/de8e5749-8e7b-47dd-b021-a686df9157f9",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8eba0bd0-a369-43b4-9e9c-b55e881d4885",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/afd00aff-325c-4372-9941-7d59743eb544",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/02d5342e-bfa2-4b7f-81d1-38eb6d061521",
      "date": "1962-02-11T00:00:00.000-05:00",
      "label": "11 February 1962 - Borer, Kenna",
      "recipients": [
        "Borer, Kenna"
      ],
      "destinations": [
        "Fenchurch Street railway station"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/24ccb69b-f019-4e9d-a6f6-84590240bae9",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/602ba7c7-7469-42e7-99dc-04e74aa3d2e2",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/eb1d0f0d-25b0-467e-bc6f-eb92a702f034",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1aad8dee-0e49-483b-972e-7c748b8702c1",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/7250787c-e95d-4d0f-a363-de6e610abbc7",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/7325600c-d27b-4789-a861-692138731790",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b5721f70-b636-47f4-9046-880881698429",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f6f996c4-825e-4329-b8a2-ca0ee22470d2",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/88ee8dcc-e24d-4f97-a6fd-0b594d963e47",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a1bc7727-34a2-4cc9-bafa-0db81635c8de",
      "date": "1962-03-31T00:00:00.000-05:00",
      "label": "31 March 1962 - Aufderhar, Zona",
      "recipients": [
        "Aufderhar, Zona"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/b3e2c7b9-c954-42e1-ac1a-2316794906ad",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e8b008ca-8b29-4b1d-97e4-f1f19f2f4dae",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/022c1df7-f0c4-4ff0-b8a1-c4c9c6a9a1bb",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ae9105cf-e5a3-49a9-a6d3-6184a5edb212",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/62b19603-412f-4859-b007-d95e9601a4a7",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3463916e-074a-4452-a180-a08b80b404b8",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5ab73038-faf1-4a0b-a3fc-57dc450becd1",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d5bd8c8b-ceb6-4661-b825-3ccf13b11e58",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8de791a6-26e5-4205-bff1-3b3caee32683",
      "date": "1963-06-08T00:00:00.000-04:00",
      "label": "08 June 1963 - Yost, Carlotta",
      "recipients": [
        "Yost, Carlotta"
      ],
      "destinations": [
        "<i>Croydon</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/63341a41-f1bd-4ab2-9794-c9f3f3e3657a",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/7f425607-60c8-4a6a-8073-3f71bc3f161c",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/40aedafd-1d2e-4be4-a3b5-59607a4f82dc",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6fa4ea59-670c-4712-982d-abb42a16cb8c",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ee5fb39b-47ad-4a5d-ac86-54cdf87c2ce6",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ad6f34c3-1a4f-47ef-934a-425c903a1728",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8b93ee26-b853-491d-b8c8-bbe30b257b2c",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ad4bb237-f091-467a-847a-81b2fad08bee",
      "date": "1964-03-10T00:00:00.000-05:00",
      "label": "10 March 1964 - Senger, Holly",
      "recipients": [
        "Senger, Holly"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/19df7c4a-ef37-40b7-8c90-b9e252c5ad55",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e84d4700-4de2-4014-a0b7-0dc04d2e2615",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/db8e4e9e-ba2b-4dab-8f9d-5b1af56c76bb",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/5f5d34b2-6c36-4845-a824-a35e28153dad",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c99d1965-f5c1-4659-afd6-c00939d1690b",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ce1bd8f9-6e0f-43f3-a0d6-897dd18a9d47",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b1174d6b-4009-47a7-975c-87fb739b3fb6",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/73d4ccca-b123-4fd6-9acd-7634e2734912",
      "date": "1964-05-19T00:00:00.000-04:00",
      "label": "19 May 1964 - Pouros, Norberto",
      "recipients": [
        "Pouros, Norberto"
      ],
      "destinations": [
        "<i>Norway</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/70f78bba-2d88-488f-954f-9933d971f5b1",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d079e4bd-a13a-4533-ab1c-e699161410f4",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a26ac878-3b53-4265-b61a-6926b5f3f839",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b9735ab2-7e8b-4818-8f45-1bf914678eec",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/292a1593-4dde-454b-a5d6-230f723dda53",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/805bb49e-8abc-4786-b025-e46356cb881a",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/2a9d655f-79d3-4609-9373-9d2832fe8d6c",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c7f310c7-f5e2-48c3-a35d-24c15b5fb825",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/fb500827-70d0-49aa-afbe-f93cb89c9c62",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/162d70fd-b955-489a-81c5-b425a39a6d45",
      "date": "1964-11-02T00:00:00.000-05:00",
      "label": "02 November 1964 - Lebsack, Rosalva",
      "recipients": [
        "Lebsack, Rosalva"
      ],
      "destinations": [
        "<i>Boston</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5cd66f1b-a918-46b4-8ef2-ce7d012ab5b6",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b8d97906-b013-43b0-a814-4b2ef4733d9f",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/edb9138b-0222-487c-87ef-f29a44210b85",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/254e43ae-1623-4d15-8283-2aebcb74d9a2",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5253525a-6ac4-48bf-a92b-b231678d7e27",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8ca4df6a-0294-4fd0-b9a4-525024f2ea17",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3a054a75-cc6f-436e-9ea5-31cec2557fa6",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2b6eb22a-c367-4fe7-a71a-bc7e587c29a9",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ee79ad7b-3726-4e46-b0ee-c17cad80d2c8",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ff0495c2-ceef-40e8-ba45-1302cf8b88d3",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/404ba9b8-b361-4f6e-b320-7890268194ed",
      "date": "1965-09-01T00:00:00.000-04:00",
      "label": "01 September 1965 - Koelpin, Edna",
      "recipients": [
        "Koelpin, Edna"
      ],
      "destinations": [
        "North West Ripple"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/0d4dd1ee-47b3-4e03-97aa-b69f5e72b44e",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5ace560f-a05d-42e1-9a99-c206ba6495ec",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/03567d4b-eff0-46b3-9f90-89a8a39e47ac",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/0e1a1973-9836-4296-8115-253b9165d5c1",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/44f6db33-b1d8-44ac-9bcd-1d84831b5cd5",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b2ff871d-fde7-481b-8689-051e325ba0c5",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/03a5bd09-a540-4339-9b0a-a2facbdabf03",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/20f1b805-8156-4688-bc55-3c543fe8ec19",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/debf5903-019d-4124-b446-d5a4f3b31cfb",
            "display": [

            ]
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 13,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 13,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Douglas Institute",
          "doc_count": 7
        },
        {
          "key": "Koch College",
          "doc_count": 7
        },
        {
          "key": "Eastern Mississippi Academy",
          "doc_count": 5
        },
        {
          "key": "The Pacocha",
          "doc_count": 3
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 11
        },
        {
          "key": "italian",
          "doc_count": 9
        },
        {
          "key": "english",
          "doc_count": 6
        },
        {
          "key": "german",
          "doc_count": 4
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 13,
    "links": {
      "self": "http://example.org/letters?languages=German%2C+italian&page=1"
    }
  }
}</pre>
