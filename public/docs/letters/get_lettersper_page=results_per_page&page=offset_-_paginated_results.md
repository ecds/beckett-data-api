# Letters API

## GET /letters?per_page=:results_per_page&amp;page=:offset - Paginated results

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

<pre>GET /letters?page=2&amp;per_page=10</pre>

#### Query Parameters

<pre>page: 2
per_page: 10</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=2&amp;per_page=10&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;first&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=3&amp;per_page=10&gt;; rel=&#39;next&#39;, &lt;http://example.org/letters?page=1&amp;per_page=10&gt;; rel=&#39;prev&#39;
X-Total-Count: 30
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9ce6f5d128b9dde2926c270fd883ad92&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fee49e19-6e12-41cf-8c2f-8ee55347c347
X-Runtime: 3.720617
Vary: Origin
Content-Length: 12525</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/5e71c7a6-019a-476a-915a-79912ccf6f9b",
      "date": "1960-01-09T00:00:00.000-05:00",
      "label": "09 January 1960 - Mosciski, Kennith",
      "recipients": [
        "Mosciski, Kennith"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e68773c2-d94e-4474-84da-63acb198ccd6",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/72bf1454-0225-4c95-9183-3bd8b800a06a",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/568c7fcb-6ecc-4612-8376-6e911b1bffa6",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/947693d0-c031-46a9-99f2-baf0f8c43e16",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/702352d9-ebdd-47bf-8950-25622df9ebd0",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/81f13d4b-572a-4725-9246-bb3d5e72f1ca",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/2918aa2f-0263-4080-b137-8b6f533689d1",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/8f63ca4d-0e1c-4048-aa06-607b126faca1",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/74a13963-a378-4fd1-b550-c41fe74d92d3",
      "date": "1960-03-03T00:00:00.000-05:00",
      "label": "03 March 1960 - Frami, Ted",
      "recipients": [
        "Frami, Ted"
      ],
      "destinations": [
        "<i>Megabrantis cluster</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e596bab1-8f91-4ca2-a0d8-200745218420",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/e12fa4cd-5b2c-4fc8-9d43-300a520d0a4b",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3e720451-7e85-4b07-9b60-a927b469b3de",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d70c047f-3c45-4de0-8c70-a2950b65bb4e",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/9e8836c5-248c-48f5-92e3-8d724526f3d1",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/de8b48b0-2224-493e-bfa6-faa70587be2e",
      "date": "1960-04-08T00:00:00.000-05:00",
      "label": "08 April 1960 - Hartmann, Kathline",
      "recipients": [
        "Hartmann, Kathline"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/5d5a63f6-61a4-46fe-a49d-62974dc7f51d",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/4b961e56-5356-4ab8-9529-b0c4e0b802d9",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/0f680753-cd5f-4465-ab96-253f1b298ac8",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a06dabfe-d4a7-4f64-a5dc-ec2d44ac94f8",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1e7dc77b-fca6-4a4e-9868-f85c01de94a6",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/0bd929ba-3144-432f-8d14-9cad8e741733",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/aae11c90-1d79-4913-b2ef-a891f1aa2e57",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8be90585-12cc-4e16-8a3b-c14db3378e6e",
      "date": "1960-06-02T00:00:00.000-04:00",
      "label": "02 June 1960 - Effertz, Emeline",
      "recipients": [
        "Effertz, Emeline"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/dec583c5-cb15-4087-9290-d836f940e754",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/87133f5c-af00-4dbe-ab72-214960986fcd",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/32e235bf-4bc5-45b7-909b-7d56e85b2e41",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/dce0820d-f522-4c00-b741-5d4b699544c0",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ccfdd353-8300-4fc6-9a4d-45a56def7690",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cb1cdb44-98dd-4cc6-9129-c7e93c9aef6b",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/a36361d8-da59-4d48-8b3a-a605311e23ed",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cb1b49f6-5b03-4ab5-9500-2abdf821e991",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ee992c10-2fe0-4cea-8a0c-556eccc0e01e",
      "date": "1960-06-22T00:00:00.000-04:00",
      "label": "22 June 1960 - Altenwerth, George",
      "recipients": [
        "Altenwerth, George"
      ],
      "destinations": [
        "<i>Bistro Illegal</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/9d286f86-02c0-42e2-9018-a232d2eb0ebd",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e55d3b5d-881b-4c0f-a790-d7be54b386e0",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e06e898b-23fd-4796-9f6b-b0f6111e2956",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/163618ec-a0b8-45e2-9f46-36990f816054",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/7668ed9e-71cb-4caf-ba86-b0570cea1133",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d8d556df-39c6-4cfe-a0cc-3b9af0583757",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5244b336-84e5-4b03-915e-dd0402d82546",
      "date": "1960-07-18T00:00:00.000-04:00",
      "label": "18 July 1960 - Larkin, Mason",
      "recipients": [
        "Larkin, Mason"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/08b6a3ce-6499-4e84-bd4d-430b067ef3b1",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/f50be1f6-6f8e-45a5-b7ba-2be6abe4ea89",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/129e373a-8074-4573-929d-3bfb17b47111",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/30b0e5a0-f3b5-40c4-a7ac-f280b59c2ffb",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e0a1c701-8175-4e52-9bb7-138ac0317bda",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5489ee9e-8291-4134-aa48-2c9b6a10182d",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cb1f89c7-6314-44a3-933b-0faddbc86f05",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/91cc662b-0504-4379-9f2f-e349fd025ee6",
      "date": "1961-04-11T00:00:00.000-05:00",
      "label": "11 April 1961 - Hessel, Silas",
      "recipients": [
        "Hessel, Silas"
      ],
      "destinations": [
        "Belgium"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2e633d99-032e-45aa-8bf0-85dbd3c78fb5",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/0e4e2e14-94fe-47f7-be3f-334ca675ab40",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/73877453-a811-4e97-a8ff-52829e840e53",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7977ad9b-1f47-4105-894e-0ce4dfd2aa9e",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ae8de386-a24b-4ff4-bf94-46a042cde633",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/1dda3d91-cfc3-4c85-a423-1774d3c9a73c",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/bac97598-2354-423c-9bdc-e300acd50551",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/2782be82-186d-4b87-a8fa-ece6d2953a94",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/48d0e4e9-ca6f-4e03-a916-1486bee3dc88",
      "date": "1961-07-01T00:00:00.000-04:00",
      "label": "01 July 1961 - Glover, Iliana",
      "recipients": [
        "Glover, Iliana"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/8362e814-d332-42f1-a76b-e01ade75dded",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c1d432db-b2b2-497e-94fb-b1fb4550ae57",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/d8d6b3b6-92a9-4a7e-a395-d755c5bf57c2",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/a7b63ef3-875e-4bb4-b044-805bfabd213f",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/470796a8-9850-4c30-9794-849d9f87e8aa",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b80d65a4-61cc-402d-8c3f-4abea66afbad",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/db69a284-0add-4f7a-97a1-9a695eb39628",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3f76901b-cf9e-4d4f-a9c2-54a087ef95d9",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/b2d8b66c-4ab7-408d-ac37-35421014f337",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/cee3ca70-42ce-44e0-8637-6964c6916e56",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7db20a68-ec1f-4902-91f9-513aaff3476b",
      "date": "1961-09-19T00:00:00.000-04:00",
      "label": "19 September 1961 - Osinski, Norman",
      "recipients": [
        "Osinski, Norman"
      ],
      "destinations": [
        "Bournemouth"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/43f4a943-b0a2-4108-ab3e-175816474105",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/1f4b5abb-1a1f-420e-a413-bf4942b6f1c3",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a88f4f2f-e252-4a48-b0ab-9e66b69ce7a1",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/19a0808d-9137-4fca-a6df-1ce9d6bd5cfa",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d262f6a3-d9ba-4567-bd55-8cc7e32372c5",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9b5c9117-b2b2-49b5-aa5d-9a68fcceaf29",
      "date": "1961-10-06T00:00:00.000-04:00",
      "label": "06 October 1961 - Prosacco, Salvador",
      "recipients": [
        "Prosacco, Salvador"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f48818bb-a31f-455a-95b1-2f8aade83fb2",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/bd4a2e48-8ce4-41c7-a937-3c770fdacf01",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/a1f064e2-3962-4b55-9cbd-011ef86c8eb9",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/644087f8-5c7c-4020-9ed4-9a6c9a6880f4",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/13a75720-884e-418e-84a0-361783a8612d",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/9518c9fa-ea5f-4d13-9851-9262bbff4a5e",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/728e8eaf-0651-4c2b-8064-56d403cec109",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6a61f10f-f5cc-41cd-846f-86460bb1de4a",
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
      "doc_count": 30,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 6
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 4
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
          "key": "Northern Hermann",
          "doc_count": 16
        },
        {
          "key": "Western O'Reilly Academy",
          "doc_count": 16
        },
        {
          "key": "The Spencer",
          "doc_count": 12
        },
        {
          "key": "Kessler College",
          "doc_count": 11
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
          "key": "german",
          "doc_count": 10
        },
        {
          "key": "french",
          "doc_count": 9
        },
        {
          "key": "italian",
          "doc_count": 6
        },
        {
          "key": "english",
          "doc_count": 5
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 10,
    "page_count": 3,
    "total_count": 30,
    "links": {
      "self": "http://example.org/letters?page=2&per_page=10",
      "first": "http://example.org/letters?page=1&per_page=10",
      "last": "http://example.org/letters?page=3&per_page=10",
      "next": "http://example.org/letters?page=3&per_page=10",
      "prev": "http://example.org/letters?page=1&per_page=10"
    }
  }
}</pre>
