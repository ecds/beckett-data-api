# Letters API

## GET /letters?start_date=:YYYY-MM-DD&amp;end_date=:YYYY-MM-DD - On or Between Dates

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

<pre>GET /letters?start_date=1961-06-18&amp;end_date=1965-07-15</pre>

#### Query Parameters

<pre>start_date: 1961-06-18
end_date: 1965-07-15</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1965-07-15&amp;page=1&amp;start_date=1961-06-18&gt;; rel=&#39;self&#39;
X-Total-Count: 14
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cc1de537c3b19df34d1a13c79a11dde7&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: bebd8dea-0271-490a-8ec6-2a3292435650
X-Runtime: 3.139768
Vary: Origin
Content-Length: 17966</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/4bca6d03-cb2f-4a5a-8356-ecc560b737e9",
      "date": "1961-06-18T00:00:00.000-04:00",
      "label": "18 June 1961 - Hackett, Wei",
      "recipients": [
        "Hackett, Wei"
      ],
      "destinations": [
        "<i>Evildrome Boozarama</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/37194f3a-b6dc-4e8f-8a34-9c64af0b4dd2",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/7a867aab-77d1-48fe-9f63-9480b9741f4f",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/91d31378-f24d-441c-8507-4052159a9809",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e3aa3845-916b-404c-9848-b3a6716fa6a7",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e10362fd-181d-4fb1-9345-6eba209cb5b0",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/46d43f1a-4498-4775-a40e-a2214240483b",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0cafb88d-1b5e-43ca-a6e7-8b99f8157e43",
      "date": "1962-08-04T00:00:00.000-04:00",
      "label": "04 August 1962 - Parisian, Dorothy",
      "recipients": [
        "Parisian, Dorothy"
      ],
      "destinations": [
        "<i>Ibiza</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/400c52d7-ac1c-4e26-8257-ae16ece4a4f9",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1bce7a3e-789d-4db5-8551-fe0135fdeef9",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/804b51c3-34a3-4be4-b64e-9ceb8c3ef947",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0c0c4eed-970b-4816-837d-ff755f1672ed",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/90e0b29d-473e-4420-8b76-79feca2c3b5c",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/103fab5a-8da7-4803-9ae8-2ba5aa993ddc",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cddea35d-b358-4849-b258-31555e54cdb4",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/ec4fabf9-0f8c-49c6-81bd-f26b80c1c5b5",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/95cc6f97-f37d-4717-98c0-00f647fa62b5",
      "date": "1962-12-14T00:00:00.000-05:00",
      "label": "14 December 1962 - Terry, Berneice",
      "recipients": [
        "Terry, Berneice"
      ],
      "destinations": [
        "Seventh Galaxy of Light and Ingenuity"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/a3fe281c-2ed3-4326-b7e4-65f1fb070c95",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/4713554d-bd38-4d01-b441-2f15a7e168c4",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/55741f06-d587-4c3f-b0c3-673c03cdb0e8",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/5c91dc5c-339f-41b0-899d-b6059cf34bbb",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/09057311-12b6-475d-825d-79a6433a005b",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/157e2998-68dc-415e-998d-d04e4e415cb0",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c4d4595b-2a88-4efd-aaa2-8f8888c21a2d",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e781c09f-7186-47df-bee6-00a0a526d7bf",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cb166d28-af44-4c89-bc6f-f3b0fafe3030",
      "date": "1962-12-17T00:00:00.000-05:00",
      "label": "17 December 1962 - Bosco, Norman",
      "recipients": [
        "Bosco, Norman"
      ],
      "destinations": [
        "Megabrantis cluster"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/27b04c1e-8ab9-4fd2-8660-8373871f2177",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/76c8490c-d2eb-4414-9733-f91621994dd8",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/8af583a1-b9b1-47be-9a15-1071bbd3e67f",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/4ce19fcc-a341-4e13-a12b-87cf191f1564",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/4ce6cfc3-948a-4b0e-a93d-ab6bb9444553",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3f7a9456-e2ad-4064-a66c-a6c7b77611c8",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/570d9328-ee10-40ae-a899-3f20980a58fc",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ba3e6868-0413-4866-a024-1d37b9008c78",
      "date": "1963-04-04T00:00:00.000-05:00",
      "label": "04 April 1963 - Raynor, Deshawn",
      "recipients": [
        "Raynor, Deshawn"
      ],
      "destinations": [
        "Stavromula Beta"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/16c277ff-b01e-4b89-bfb2-e39b8206deee",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/40230ded-eb4c-4cd9-9805-412f87ccfdb5",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/8da1a28e-1738-43e4-b739-cbc7a7619979",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9e27e06d-36c6-4c40-940b-d63267fe02d6",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2f2a87c3-58bf-4c12-bad8-d8e790f9978e",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ca1d8b22-f4bb-407e-ab77-feb3d5dcb17c",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7846a015-016b-4ff3-ba33-36812c3d9f47",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/a527f8ff-dcfb-4a56-a300-f6c4ba90a2e6",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9711424b-449f-4d76-a889-55d4f65619c1",
      "date": "1963-05-10T00:00:00.000-04:00",
      "label": "10 May 1963 - Lueilwitz, Modesto",
      "recipients": [
        "Lueilwitz, Modesto"
      ],
      "destinations": [
        "Lamuella"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3aad2ced-9885-441b-98e3-5f65bca5a8da",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/3df08204-a183-4932-b1f0-f456befd788b",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9e5281ad-fffe-4cc4-a816-e3a6e3416ddf",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/dfde0459-c90a-48a8-bf2f-7d300f241e18",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a4e1c63c-14cc-4387-a27e-e202d67402df",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e05edde3-0db6-4e4d-9759-bb3ef5257536",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f0111b9b-d75c-40c8-b944-0dcf840bf8ea",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/5abd9cb1-9174-4f92-8821-8df184d8edcd",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5f1bd84e-906c-447d-8a80-99239131c8d8",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/780c4466-a93e-4497-8e9a-0648d74943d2",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/10afa27d-65ab-4960-ac18-358ae7ece76c",
      "date": "1963-08-02T00:00:00.000-04:00",
      "label": "02 August 1963 - Carroll, Chantel",
      "recipients": [
        "Carroll, Chantel"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ae2b9997-e5f9-4d75-af47-5792d155d397",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bc60e62a-8808-43f1-8727-f3a0b5deabd1",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/00449459-a73e-4ea1-b0be-34b7ff650227",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/46cbb079-533e-4c33-8579-c6c47f6d1364",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ff65895e-2ea3-461c-8c79-4688b0b5fca1",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8230a212-42eb-48aa-9db9-707dda499570",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/e501018a-e488-4eff-9079-baf12387e88c",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b8de49eb-df21-4d9f-8ba4-5df80c0b9299",
      "date": "1963-09-21T00:00:00.000-04:00",
      "label": "21 September 1963 - Friesen, Sharda",
      "recipients": [
        "Friesen, Sharda"
      ],
      "destinations": [
        "<i>Ysllodins</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/83897f3b-247a-4068-b6df-98dda595e01f",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a4b060ce-f9bc-4398-b4e9-c093160aba7d",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a51769e3-480d-4029-9d48-cb6a09fd564d",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f126e95d-1a70-41d7-b7ee-99614256cfdf",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/518c46fb-7785-426f-9cd0-e0b2f9e8ba57",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ac78bbb8-6b83-42fb-8dc9-c318874ab3a8",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/62ca6ee0-d39d-4741-8855-b818bfb537a2",
      "date": "1963-10-10T00:00:00.000-04:00",
      "label": "10 October 1963 - Leffler, Leah",
      "recipients": [
        "Leffler, Leah"
      ],
      "destinations": [
        "<i>Croydon</i>"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3bd3d9ed-57cd-44b6-ae4c-f92dd5d04a51",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e2a51dec-b3a9-40b4-9117-f30990cb5d98",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e40ca0af-2d49-4bf2-b1e3-c57f01203157",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/01995e1c-31e1-4d68-bc4b-15850a678759",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/d62ef108-054f-42f5-913a-df917a2fd514",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ffb9d8ce-138b-4e40-8fc2-c9690be18529",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2431c56c-3fbc-497e-845c-c90c56065dc9",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/955c59af-371a-4448-a080-b2c0c5b8a63a",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/27895f00-7c69-49be-9713-216c9abc86fc",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/6cc087fe-3771-4b18-a7a5-dd988c17e467",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a172f449-8681-4065-be0c-428cb5bb9426",
      "date": "1964-03-11T00:00:00.000-05:00",
      "label": "11 March 1964 - Goyette, Elia",
      "recipients": [
        "Goyette, Elia"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/22009708-ccc7-4025-afb7-43b5cbc86fe2",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/73f44f57-07ae-41eb-a48a-3a16d087857b",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a2a5810a-02b0-4973-bf0e-4c389f213ab4",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/99273ae1-52d1-49fe-8156-0c0be65346fa",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a3802dde-fbea-4da3-838d-9ba907a98c35",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/03ec93bf-6fe9-4f16-a40b-26e5dc136122",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/bc337d8e-fba5-40b7-b91d-d43558e5b914",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e002443c-e5b6-4c29-9658-4409402f2049",
      "date": "1964-04-15T00:00:00.000-05:00",
      "label": "15 April 1964 - McGlynn, Stefan",
      "recipients": [
        "McGlynn, Stefan"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6a43eab5-9508-4316-a20b-222f57052818",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fd8f4220-2cc1-4b50-896e-f8e8c92ba9ca",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7220aae3-e944-4d47-a5e4-860c92764b47",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a13ec8d0-0405-406a-a138-d8fdd3c77013",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/f90ce13c-f2d4-41f2-b315-d8f753281622",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/26e17763-0e78-4fbf-b45d-b300f1558479",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/83f7a664-b4fb-440a-973b-b7effb6f03b1",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b8e8d081-770b-4165-9abd-cd2fe6a9f321",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/33c0ae29-afff-4cd1-9ff9-d6cd98556495",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/865f17ba-db9b-45fb-bf81-245e453093e5",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bbad63b7-a520-4042-aa9b-fbbaf9d73584",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c40c9a50-7853-46f3-97fd-d2e375cde05e",
      "date": "1964-06-01T00:00:00.000-04:00",
      "label": "01 June 1964 - Keeling, Quinn",
      "recipients": [
        "Keeling, Quinn"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2aa59f2d-3f29-4bfa-986b-f67f8420d581",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/346aec67-c554-44ff-b880-0f252a655b38",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/96f5b933-5f0e-4519-a1ae-3ad23513c023",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c37eae63-0f2b-44c7-95f5-f3cf39d3c673",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/444d4675-b654-4a9a-a963-de6c16b60dfd",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a9d89acf-7090-411c-bde9-8d588a2fa47b",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/caacfc18-6983-4de2-839f-ef6bd236cfee",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/63a0afb0-5a8d-41de-9049-21c8580dfa6e",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/88a5b833-8ba4-44cd-a918-09b37ad2ba5e",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/98a9312c-1d3e-462a-bb3a-b2b15c7e22b7",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2955740c-0aea-4b29-b2e7-e2e1358134ee",
      "date": "1964-06-10T00:00:00.000-04:00",
      "label": "10 June 1964 - Wisozk, Olimpia",
      "recipients": [
        "Wisozk, Olimpia"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1b0f7ff2-871c-4400-ab3e-d824c1215066",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/91f46517-1d6f-4b78-89d3-ac12097fb711",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ad56f99b-ec5c-4455-9971-fe10a3cdb2fa",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/68badb00-8d9f-4421-8af6-3e990e593886",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/864945d9-f8c7-4d8c-a0cc-062b2d0a682b",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/bd754aff-3ef4-42ad-b9f7-249264dc2d40",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3ff0bdf7-bf88-45c7-b8cd-02af15eba9ba",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/81e8cac7-9ed5-4cc7-b566-5dc59b52f3a9",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/b2e84cd4-8e2a-4494-b072-f9061e70b288",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8d2b8a14-f6dd-43a9-b345-9a3b5dc0e231",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c44ed6a5-1720-493e-ad78-b8b83e26f9f2",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/853cdec9-ec7b-4191-aafd-4edc29d3eacc",
      "date": "1965-07-15T00:00:00.000-04:00",
      "label": "15 July 1965 - Reinger, Eusebio",
      "recipients": [
        "Reinger, Eusebio"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/50368035-afab-45a5-9bf1-46d162830ddc",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/16eb90e6-63b1-4898-bfff-d2c50539226f",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/f5a323ee-dcec-4468-93da-efac567400b3",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/26ca4ced-a4f1-4ec4-a2dd-51c23d8d4de2",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3cbac504-073c-4220-91ca-8784b027d30b",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/cd3e7c54-7973-43a2-8fbf-f6b6d052764b",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d36463e2-3170-4106-8519-d3c80d0555f8",
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
      "doc_count": 14,
      "buckets": [
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
          "doc_count": 5
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
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
      "doc_count": 14,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "South Wisconsin Academy",
          "doc_count": 9
        },
        {
          "key": "Hegmann College",
          "doc_count": 7
        },
        {
          "key": "Northern Lakin",
          "doc_count": 5
        },
        {
          "key": "Western New Hampshire University",
          "doc_count": 5
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 14,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 4
        },
        {
          "key": "french",
          "doc_count": 4
        },
        {
          "key": "german",
          "doc_count": 3
        },
        {
          "key": "italian",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 14,
    "links": {
      "self": "http://example.org/letters?end_date=1965-07-15&page=1&start_date=1961-06-18"
    }
  }
}</pre>
