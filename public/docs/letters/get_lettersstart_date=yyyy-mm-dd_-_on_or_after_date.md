# Letters API

## GET /letters?start_date=:YYYY-MM-DD - On or After Date

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

<pre>GET /letters?start_date=1960-06-08</pre>

#### Query Parameters

<pre>start_date: 1960-06-08</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;start_date=1960-06-08&gt;; rel=&#39;self&#39;
X-Total-Count: 17
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6bb7480e18e4fe8b9e5d80463303fb61&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5c7eb6dc-7886-4c38-be4a-561a19f3c7e1
X-Runtime: 2.772984
Vary: Origin
Content-Length: 21155</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/1a5b80d5-2730-4250-9ecc-66a244386be9",
      "date": "1960-06-08T00:00:00.000-04:00",
      "label": "08 June 1960 - Crooks, Dana",
      "recipients": [
        "Crooks, Dana"
      ],
      "destinations": [
        "Rupert"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/d83ad33e-5598-4b3b-bfd4-434d376ca82d",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/09073f61-4971-4dcf-85c1-a9aefbdf942f",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d312ffdc-d271-43c6-9568-a3803c7128c2",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1cf3e21f-1b5a-4684-b3f3-cb67c8222be7",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/6cfa90a5-1b57-43e0-8f67-5c93f04dc176",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/50a334b5-ceef-4c3d-9f60-8031337e5220",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/384410cb-d09f-421b-a802-7a923da48a01",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/03bc66c1-2615-4244-afc5-e5aa43b8669e",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7ea4baff-53cc-4790-b1e3-a489379c9109",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3fdb3172-08a8-403d-9fd5-04119a3abfa7",
      "date": "1961-03-24T00:00:00.000-05:00",
      "label": "24 March 1961 - Daniel, Danille",
      "recipients": [
        "Daniel, Danille"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cd969596-2fc3-4f85-a6a0-91186a4dfe84",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e65e7218-ef9e-481a-9dd7-902370bc4173",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e76d4564-3342-4cee-8edb-3a8987df5c0d",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/7ebdf727-1220-424b-a95a-7320b7a0851a",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/dc0f8e9e-f1d8-4a76-874a-7c1a3e58ef46",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/e5db69f8-21c4-46fb-9790-4e879312c2a0",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/cfd229a2-4cb5-4bae-9d90-dfee108c6a2e",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8871d492-45fc-4786-89d8-eec41a050aad",
      "date": "1961-06-29T00:00:00.000-04:00",
      "label": "29 June 1961 - King, Jeane",
      "recipients": [
        "King, Jeane"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/c316fc94-5fda-4f78-8b5c-43b3e337c877",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/c3a6d01f-a687-4cd1-a914-6ae4f7ce6e26",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/1f0a45b0-bf1f-4976-aeb1-1e38a3886f56",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7eb29374-cca9-4cdb-bd94-5eb1910dc093",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1c96aa74-5bb0-4560-b151-583c7b19f01a",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/7492ead3-705c-4283-9a09-b91b2a2147cf",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/58077dc3-518a-42a3-bc72-900a05fb65cc",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/df7673cc-c746-44c8-ab9f-7593b909269e",
      "date": "1961-12-25T00:00:00.000-05:00",
      "label": "25 December 1961 - Gutmann, June",
      "recipients": [
        "Gutmann, June"
      ],
      "destinations": [
        "Sector ZZ9 Plural Z Alpha"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2b005ae0-8355-46f2-86af-e934bcf3bb0b",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/5b822c0e-b3f7-4966-87eb-c6446988d37d",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/332a4290-8295-4992-9249-a0fbadde795b",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9743f42b-f6e7-4189-a81b-c9f4ded63bcb",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2e50d509-4d86-4416-9cae-898f0583f8bd",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/57112982-1bba-4767-96d5-2f5c6907f40e",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/83a38383-e27c-423f-8449-96223a83eba1",
      "date": "1962-01-07T00:00:00.000-05:00",
      "label": "07 January 1962 - Heaney, Enoch",
      "recipients": [
        "Heaney, Enoch"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/ef56b5e1-e26a-4279-98b2-9b9a2694a13e",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/3f17065f-8ccf-4324-877c-83475548d468",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/641b59df-d837-40f6-89e6-65024b5c0c99",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ddff2bb5-e633-491b-b00a-4660ae282879",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/74665d21-16c7-46bb-9180-3fab898a7205",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0f3c9aa9-fa84-4ed5-9cf3-0e04af6629bb",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/27bbb374-f156-4a51-8b61-dc9266ea0994",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8ad0d64e-59a7-48d3-a7d3-0d6a62eeab02",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/44136c6a-8367-4ea8-a22c-f5c74df69743",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/23f1e6fe-9f26-4dec-9bd0-d088f2862032",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b9707a63-a149-4915-9936-23c77cc33486",
      "date": "1962-01-19T00:00:00.000-05:00",
      "label": "19 January 1962 - Roberts, Jae",
      "recipients": [
        "Roberts, Jae"
      ],
      "destinations": [
        "<i>Highgate Cemetery</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7b304d15-fd84-47d1-a71c-a0c6f0471250",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/bc610335-fe84-48ac-9365-05d711adf66a",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/0403a405-029e-49b1-8104-cee1c4999b82",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/98e608e2-d365-4349-8080-fa23a85f9433",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9f965d92-9ba4-4f1f-8113-9fa6aa1238fe",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/9c604020-32a0-4dbb-bcd0-48408f8c0602",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f292c5dd-ff89-448b-8bff-c2b19b0a781c",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ce721229-2e42-4ca6-b649-f25934e85b0d",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/45e3df67-dde2-4943-ba29-7c70d5a557c8",
      "date": "1962-05-29T00:00:00.000-04:00",
      "label": "29 May 1962 - Goldner, Lorean",
      "recipients": [
        "Goldner, Lorean"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/996bf1c8-e901-4aaa-93fa-cbe34ab3e894",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/758175a1-04cd-47f7-a233-5d76138b2359",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/6f104b51-a289-41b1-ab28-c8d9657e0722",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/e181acfa-261f-487c-9284-7e3ed1278c4c",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d8c4ecd2-2016-4b41-a208-3ebff35ed659",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/ced951a2-4b24-4e64-9ebf-4d4b7da7fe7d",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/3064a311-1a2a-46e8-9f66-fb573336f478",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5041e694-6f38-40a9-b6f2-37ec9179eddd",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/a977e325-fdf8-422f-94d2-130eb8e2a3a7",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e99e9d56-ae9f-45de-b17d-f8227c1441ee",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ca7e1958-75bc-4dfb-adef-c332d4c125f8",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5913bb4e-c388-46a6-a9ac-6b5b7bd3642b",
      "date": "1962-06-19T00:00:00.000-04:00",
      "label": "19 June 1962 - Lubowitz, Jacinto",
      "recipients": [
        "Lubowitz, Jacinto"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d1c096ff-7296-4abd-bcab-bb8b94fbc119",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/2b39ef2c-82e9-4404-b1d4-01efcc54eca9",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/56ba5ebf-5f70-4a7b-b6f6-c161d07a0ca7",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5e8a8286-cb41-4869-9583-8578ed293aba",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/6cccb226-45b7-4965-bded-ddb0c6be4ec8",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/697f4a0c-f07a-48bd-990b-cf5d8ae932f0",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3b5a2518-55cc-4272-9526-0b28f5e8ea0c",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c10abd89-eb9e-466a-9e3a-50e9e9ef490a",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4f418fbf-7873-43a3-ab0e-aabda092cc2e",
      "date": "1962-07-24T00:00:00.000-04:00",
      "label": "24 July 1962 - Gorczany, Deedee",
      "recipients": [
        "Gorczany, Deedee"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c5d53720-1a31-4287-9d2f-2e0e1690eb29",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ede8f22d-7d69-4f73-9964-66577d7770ec",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/36df93b7-1bf1-4399-aaa4-1de278388f40",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2cc345ec-7c8f-40cc-bbf4-abb670209493",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/fd60259c-13aa-47f5-a797-5993b9e4bd63",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3dab77f0-ef1a-48ed-bed9-eb57176c4a4f",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/e1cbf26d-0cb3-4ad3-95d2-750f53331eeb",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/50f4fb56-1497-4d73-bd63-97847b3fa761",
      "date": "1962-09-14T00:00:00.000-04:00",
      "label": "14 September 1962 - Sawayn, Jarrett",
      "recipients": [
        "Sawayn, Jarrett"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/d914732b-7599-465d-b429-6003dbb42449",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/6d30a5fc-da14-4315-8d1e-c568d43a18ed",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/574533b2-3e58-42cc-83c4-26cbbe3068eb",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/e69ada60-a794-405a-bdc5-b340c24d1007",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/62512082-11b5-4c43-8005-7f852dfbe3ab",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f1c0e510-9fc0-4ea7-8c1f-6eb59073c3e2",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ec5a9d3f-2077-4d58-9842-dfcc1a43e5b8",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4d1e9c06-ba93-45f5-8073-a4172cd34681",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/40d2ee85-c671-4342-a42d-4c2eeb7c5103",
      "date": "1962-12-01T00:00:00.000-05:00",
      "label": "01 December 1962 - Parisian, Moses",
      "recipients": [
        "Parisian, Moses"
      ],
      "destinations": [
        "Café Lou"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/18bedba2-edfe-48eb-9a89-5a78a6cb7165",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/d78b0a69-deaa-4ec6-b9a8-aeab125a7fbc",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/46235931-c364-417c-8f7a-01de58558157",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/28fac923-45d7-41f7-9700-0de20b52973e",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8fd9ecb3-f7d0-478e-90ac-612b0bc4f616",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a5b6afb1-bb8c-48be-8e66-2789812861fd",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/450303b0-4fdd-4fb9-b3e5-3b6321a74725",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/70051ee3-b483-4bd8-b07f-b87bdd85f166",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bde0598e-421f-4618-b363-cb29d8eaccb0",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a74d277a-3546-4991-8c17-7eb122319b1a",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/08f12569-618b-40a3-b46a-627ba64d018e",
      "date": "1963-03-22T00:00:00.000-05:00",
      "label": "22 March 1963 - Moore, Lashon",
      "recipients": [
        "Moore, Lashon"
      ],
      "destinations": [
        "<i>Zarss</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/bda77688-8042-4dd4-986b-fd66ea3585aa",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c53f469d-e1a7-4632-8395-80e443e7ac31",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/feff64c9-81f3-443c-a5de-a92c208aa04b",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/5599f563-da1a-4f47-b5df-f8bf1276ad93",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/63df24df-5d85-4343-b4c8-ace52ab7ab89",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/2b80004e-8362-4d1f-85b4-eb7810b1157c",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/d3c74e0a-c0f8-4daf-b2af-5cfe46929126",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/01861925-13a2-48d8-abc5-ddf1b2276f8c",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ceae2c00-d490-4ad1-918a-5d13654a6a2d",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/ea3552ca-d434-41ed-85ee-175d130cb521",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/d7a29606-1143-4ef8-86d2-d86bbbe78776",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8b2b78ca-f730-4ab6-ab7a-56a82def0b02",
      "date": "1963-10-08T00:00:00.000-04:00",
      "label": "08 October 1963 - Williamson, Christy",
      "recipients": [
        "Williamson, Christy"
      ],
      "destinations": [
        "<i>Lamuella</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f43c9adf-a5bf-4d10-b481-50feeefd9ebc",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/29746020-68c3-4e22-b8a0-970fd4e91bcb",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/695d32dc-7d37-4ddb-b43c-c828bbd033a2",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9adc5201-b8b0-429f-ab38-c2fbd94b72a2",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/56e9a10c-97d0-4241-9073-0c0ea0a90960",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c2c75415-0bb5-4fad-aaae-81c370114c95",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/1032d6b0-bf83-4782-aeb5-c6f52b856d73",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f4372ba3-bacc-458e-864f-7cd8deebd001",
      "date": "1963-10-09T00:00:00.000-04:00",
      "label": "09 October 1963 - Waters, Augustine",
      "recipients": [
        "Waters, Augustine"
      ],
      "destinations": [
        "<i>Rickmansworth</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/068ce8e0-f2bf-4db2-ad52-fca866248567",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/c9540db9-2e6c-4f6c-a590-d4ee2356ece1",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/cd2394bb-89e6-4eb5-b73f-2e88ff460c57",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1d30eea1-0a66-40e9-8dd9-cd6d0717e10f",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/65a096eb-c770-4497-b4cd-70a50d97f563",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/40fb4de9-c7ce-4999-bf08-877d340066a5",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/10cf2313-1f55-4aa8-ac56-9d868f908a65",
      "date": "1964-01-31T00:00:00.000-05:00",
      "label": "31 January 1964 - Abernathy, Rachal",
      "recipients": [
        "Abernathy, Rachal"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f0f7f2ae-adc2-4158-97eb-2d2c6366c291",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/83dc1a0c-4f57-485f-912d-1abe42231dcc",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/46213a8d-32e8-44ff-9189-6cdd7f22b707",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/fa56e7a8-b8c2-4c0e-85ae-a4fa8befcdef",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/e90b84dc-dd2b-4e8f-b0d0-4270507a23d9",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/ccfd9316-a7e5-463d-9278-4709bd73b7cf",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/fd09123b-4c3d-41bd-9a4d-355918d6be82",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5eca35f2-38cc-47ec-86c6-82fb4ab5a5c4",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/bcbcea02-f3e7-4ad8-95da-88f4c292e2b4",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/02e1c09e-8856-495e-870e-12242e3cc756",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/da475340-1f48-491f-a88e-ab067301841a",
      "date": "1964-06-16T00:00:00.000-04:00",
      "label": "16 June 1964 - Kreiger, Theron",
      "recipients": [
        "Kreiger, Theron"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6b5c14bc-a293-4afb-a962-57255c7617d7",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/970c6354-e336-4ffa-8cbb-0b376263f696",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/612ca402-d749-406c-ac74-caf7a55ca9a9",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/40de17d6-2103-40a9-879f-5a1c4602c3a4",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/441347cf-47c1-448a-beaf-3b6e3ccff93a",
      "date": "1965-06-12T00:00:00.000-04:00",
      "label": "12 June 1965 - Maggio, Major",
      "recipients": [
        "Maggio, Major"
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/78b69235-10ee-484d-b855-36ad9b4447b4",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/3d12fc86-9134-46ca-8ef6-35badda6a9b4",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c1d4b86f-4725-4852-b026-32f0d8ee1d63",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/dd0ce489-7787-4fc7-9558-fb08b969566c",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a708c8d4-29b8-4db5-88ce-67b67e5199de",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/87acecd8-fe97-4f5c-ae90-b08cfccd5ec8",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f365b0a9-f887-46c5-a2b7-04fcd5d714b2",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c55abcc2-1bf2-4b91-bf25-4f01f89a442b",
            "display": [

            ]
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "doc_count": 17,
      "buckets": [
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 7
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "doc_count": 17,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "The Idaho College",
          "doc_count": 10
        },
        {
          "key": "South Blick Institute",
          "doc_count": 9
        },
        {
          "key": "Southern Maine Academy",
          "doc_count": 6
        },
        {
          "key": "West New York Academy",
          "doc_count": 6
        }
      ]
    },
    "language": {
      "doc_count": 17,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 7
        },
        {
          "key": "english",
          "doc_count": 5
        },
        {
          "key": "french",
          "doc_count": 4
        },
        {
          "key": "italian",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 17,
    "links": {
      "self": "http://example.org/letters?page=1&start_date=1960-06-08"
    }
  }
}</pre>
