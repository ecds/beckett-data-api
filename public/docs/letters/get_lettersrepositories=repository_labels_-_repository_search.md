# Letters API

## GET /letters?repositories=:repository_labels - Repository Search

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

<pre>GET /letters?repositories=The+Wuckert</pre>

#### Query Parameters

<pre>repositories: The Wuckert</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories=The+Wuckert&gt;; rel=&#39;self&#39;
X-Total-Count: 11
Content-Type: application/json; charset=utf-8
ETag: W/&quot;04de3b5a4d9ff863c07c10f0b06a7daa&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: df7954b9-b236-4725-b026-aa4a56210cf2
X-Runtime: 2.775185
Vary: Origin
Content-Length: 13799</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/f5ece9b2-ea63-403d-adab-67047f813898",
      "date": "1957-06-03T00:00:00.000-04:00",
      "label": "03 June 1957 - Sporer, Lucio",
      "recipients": [
        "Sporer, Lucio"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/d96418e8-428d-46f4-9c0f-84ce8a7de657",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a9de0e04-e903-4a3c-b2bc-7d928c83b643",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/569e8a5f-f98f-465e-9caa-91f499166032",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/15d88f4f-e476-436f-9026-9308948b79a3",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6d9656fa-bb81-4901-a3ea-edfb524832e4",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9feaf8b1-34fc-4558-b362-d9af13c7d56f",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/aa10afef-3546-4de8-97b3-3defac55e4e2",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d068aba6-cf81-4c47-a43b-ad6fa16f26c5",
      "date": "1957-07-06T00:00:00.000-04:00",
      "label": "06 July 1957 - Corkery, Solomon",
      "recipients": [
        "Corkery, Solomon"
      ],
      "destinations": [
        "<i>Frogstar World B</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6423fb8c-8d06-4d9f-8fa2-3648fa68dc27",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6add9053-b0fc-4f54-a3c3-f0ce5ab7e518",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b3dec9f8-6fd5-4f91-b9b8-e3f1c51ee883",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/30e44160-4a9b-4173-9179-fb526a48d898",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/31f8d219-e327-4285-96da-f65ec8d88123",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/b5e2754f-24f6-47b1-b829-49853c93a548",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e677c3d2-4bbd-4eec-b463-a2c6ba03dd90",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e93475c9-1cdd-4a34-9140-fa8a36e3de2e",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5fb8cd64-f5d3-4ddc-9365-60c061fdce58",
      "date": "1957-12-31T00:00:00.000-05:00",
      "label": "31 December 1957 - Mann, Seymour",
      "recipients": [
        "Mann, Seymour"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/29575e83-242f-4b63-92e7-6e034c5820be",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4b09ac37-9960-42d1-b3db-b342a49f64b6",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/dd51ed3b-95cb-4331-a45e-31a90db4a322",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/62809ada-88cf-4f2a-a0a4-30d0e9903aa7",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/735cc53e-17b8-4c6d-ba42-3af5de298a11",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ecae0e67-904a-4cd7-8a7a-51caa44b501b",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a78a485b-e4d1-4ce7-b4fc-549bc843697b",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6fefccdf-5263-4566-9b81-043488e46247",
      "date": "1958-08-21T00:00:00.000-04:00",
      "label": "21 August 1958 - Howe, Sharee",
      "recipients": [
        "Howe, Sharee"
      ],
      "destinations": [
        "<i>Kakrafoon Kappa</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/47562519-f7bb-4382-a204-faba2c6ac234",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/7c6ae687-3533-4f36-89ff-16516cd89bcb",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7918b1c6-1b21-4225-9f1c-33bf066e7a89",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/9c48bfba-ff6b-4d34-8701-bbfd691c1040",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4de94d6f-db6e-4783-add9-a62dbc406077",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/38d6f7c8-74df-4dfe-98bb-710e0cded14e",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ff8ed95a-bf72-405b-8ecb-4a2dc6fe0501",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2eb48973-f69b-44ed-ad01-1be64febcb67",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a8e6b67f-ba7d-4fb4-85ad-ac09925594a4",
      "date": "1959-01-24T00:00:00.000-05:00",
      "label": "24 January 1959 - Smith, Etsuko",
      "recipients": [
        "Smith, Etsuko"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3631fe61-b11d-4c3a-a49a-e71975380630",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1898f2df-41b1-4c67-9a71-c3a56196026b",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/58d659dc-db61-4da3-a055-ed229563d9b3",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/dfeda2e9-8e8c-4dc8-a951-ead18b8fa8f3",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d8bb21db-8735-47f4-b779-733575847681",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/327d0417-09a4-4cdd-9db1-ea186a32304a",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/945f84d1-fc92-4cac-a6bd-62caedaf82bc",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8984ff49-5fa7-4c4e-9ec2-9f5241be2801",
      "date": "1959-12-01T00:00:00.000-05:00",
      "label": "01 December 1959 - Hudson, Cody",
      "recipients": [
        "Hudson, Cody"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/203c6ee4-24d0-4c3a-bbe8-09dfce479b62",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9ff6b1e3-c82f-42c8-8550-e2bef7025580",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ee292ae3-1d48-40b1-9948-15cbff25d204",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b851e089-526e-466c-abc2-0d0a87e9901c",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d2e3fd11-7422-46ba-9e1d-04e06905d8cc",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/582be58f-64c7-4cb8-bdac-e094a7065f5a",
      "date": "1960-11-21T00:00:00.000-05:00",
      "label": "21 November 1960 - Bogan, Talisha",
      "recipients": [
        "Bogan, Talisha"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/29efdde4-04dd-489a-848d-15b281fb7174",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/842f290a-fe7a-4731-9cb9-e769e082b2d4",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5c38c866-7fe7-4338-800a-be2d5c1101a4",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3c5e9cd7-0b6d-431a-9ba1-d06bf3088a05",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/654aeb72-7b85-4476-a6a6-fad30fd321c8",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f716444e-54e9-4d8d-b9d5-daacae9ad8fc",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1e442399-049a-44e0-bf27-231767894575",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/12999519-681b-4ce1-98f8-3bed3f09ba49",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a437942b-ec0c-41c9-b16b-414983f67eca",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/917d2199-5b59-4c2d-995a-716a308577db",
      "date": "1960-11-25T00:00:00.000-05:00",
      "label": "25 November 1960 - Little, Orville",
      "recipients": [
        "Little, Orville"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/26fc807f-c207-4bf4-93f0-92f6eb6db765",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/e601bf48-6c2b-4df1-806e-4339306ffadd",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0cf6980a-049d-4dda-ba7b-83145f5e5221",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f92f4ca2-3eea-4186-a1ab-d877ede3c387",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/12fc8ae1-8ae4-4ca2-844e-64b6d4b7efbf",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a6450c1c-49b4-4a84-b540-98386cd488f6",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3d235405-1e96-4e58-9f02-0a98b8b606e9",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ec6ccbfd-68a8-457d-a181-876eb8cc7cc6",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/0f1a9a62-9b45-43ff-bd42-8f89c8bdd848",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3f364fe8-0714-41b5-ab01-aaede64ffc02",
      "date": "1961-07-01T00:00:00.000-04:00",
      "label": "01 July 1961 - Christiansen, Zelma",
      "recipients": [
        "Christiansen, Zelma"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9baea8cd-5176-49cc-8ab5-0aa897dd7bd8",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ffb44366-c288-4fa7-aea3-93e95e371128",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/1255ac88-b84d-4a1e-97e7-a4ed35957594",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/4aab0d90-e283-4491-b310-b48ca5379eda",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7d799185-f9c4-401d-8dc1-5226bc8e7c80",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a09fd23d-37b8-417d-b4e7-1642988d4549",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/28509310-e028-46ee-9e61-8cc9108863af",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c004a428-3140-47e4-9c8e-839ca8d82db7",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/213b149c-6f33-4ea1-9bd6-bae9708a8ba9",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d5c7824f-6e2b-4b90-8f06-41b4e747d945",
      "date": "1965-01-01T00:00:00.000-05:00",
      "label": "01 January 1965 - Sipes, Rodger",
      "recipients": [
        "Sipes, Rodger"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0b0a3c52-d0c1-4050-95f4-e29dac491512",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/9d320609-4c59-45b9-96bc-31fb34b48077",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/caa6b71d-9177-4673-811b-7cfb307ca2e6",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/850a1327-f41b-41e5-860e-9ec4e4570adc",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/510254d9-7854-49cd-a6a5-8d746282dbc5",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/2ad8370c-620a-4e33-b571-a28bc400f8ff",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0cb160c1-6d5b-4995-82db-e418b180997e",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c9604809-3d5a-40a1-8eec-b63abb9e0436",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d5629597-96a0-4b4b-a258-e8c1ba0cd6ce",
      "date": "1965-11-22T00:00:00.000-05:00",
      "label": "22 November 1965 - Daniel, Kurtis",
      "recipients": [
        "Daniel, Kurtis"
      ],
      "destinations": [
        "Highgate Cemetery"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9e082197-1a25-4027-9847-f1bc59f37ead",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9e163829-2979-41a8-ac02-2bd019ca946d",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4f7b6e7d-7672-47a8-8583-516305bfa9b7",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/001a2cf3-6319-4261-b4ff-49e2bccde889",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ffd38f5b-42f4-400a-a53c-3a92ebf8d602",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/2b6a50f8-ac79-43d2-aa69-7c2930453cfc",
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
      "doc_count": 11,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 2
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Heaney Institute",
          "doc_count": 14
        },
        {
          "key": "Northern Waelchi",
          "doc_count": 11
        },
        {
          "key": "The Wuckert",
          "doc_count": 11
        },
        {
          "key": "Eastern Botsford",
          "doc_count": 10
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 11,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 5
        },
        {
          "key": "english",
          "doc_count": 3
        },
        {
          "key": "french",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 11,
    "links": {
      "self": "http://example.org/letters?page=1&repositories=The+Wuckert"
    }
  }
}</pre>
