# Letters API

## GET /letters - All

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

<pre>GET /letters</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 30
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d41cd4240776fd00658558cae1314142&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 49c54489-4c14-4e63-8bdc-39ef5f07f468
X-Runtime: 2.806544
Vary: Origin
Content-Length: 30763</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/a7f8b126-fae0-486b-82d8-980eb0cdf32e",
      "date": "1957-01-18T00:00:00.000-05:00",
      "label": "18 January 1957 - Ward, Tammie",
      "recipients": [
        "Ward, Tammie"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1e5814e8-bbc9-4b07-939e-d4955f7511b9",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/af24af64-d1cd-460b-8dce-0c121d2ea73b",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/ac3ec354-209f-4f96-a92b-a0c33fb3da28",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0f153ca2-acfa-4c03-9431-3edf5540777a",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a697e35c-8c37-4f3f-9fe6-06c2560c5643",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dcde1bde-bcab-4e38-8b74-ab74f7bc8d2a",
      "date": "1957-10-02T00:00:00.000-04:00",
      "label": "02 October 1957 - Tremblay, Gladis",
      "recipients": [
        "Tremblay, Gladis"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/47c3c1ee-a179-41bf-977d-261ea9200aa9",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/15b5a12a-d324-414a-86c0-7b151cdee69b",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1de2e403-606c-4c6b-84c6-4a03881adf6a",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/4f846204-0558-47c3-beb7-d457d4f0e3e0",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0d234af3-0131-496e-a2b6-5cd860474d18",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/569bed26-e200-4f09-98da-26e8c826caec",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/3b2fbf9b-bc73-4bee-aae8-adbaba1c4f61",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8f6670cf-74ab-493a-bb2f-47d62b8beee8",
      "date": "1957-12-22T00:00:00.000-05:00",
      "label": "22 December 1957 - Hettinger, Benton",
      "recipients": [
        "Hettinger, Benton"
      ],
      "destinations": [
        "<i>Madagascar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/1a12abcf-2b83-413f-a6a6-2b3a3443ac5d",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f3fd0a44-f5b4-414e-8eb1-548f9f5ced15",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/17168045-a323-40d3-a509-79cb588cf8a4",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/615ea47b-b5d3-4de2-ae60-a42d6fea2ee5",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cea488f7-ec26-4296-b30b-141a0b11ac86",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2e1fe24b-2e63-483f-b3cf-3e410aca6db0",
      "date": "1958-07-15T00:00:00.000-04:00",
      "label": "15 July 1958 - Jerde, Brock",
      "recipients": [
        "Jerde, Brock"
      ],
      "destinations": [
        "Seventh Galaxy of Light and Ingenuity"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/60563dcc-e913-445d-9c97-758afa7a5000",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/68e54ab1-7cf4-4c6a-823e-e81e9e8fe7d1",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/cc39c0b6-2aa7-4fad-81b5-3443a97dcf23",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/76692a98-0a19-4bda-8f64-6cbb88f243d1",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/da76ec58-a1c2-4e05-9625-44be1cfe90a7",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/28c8e878-19c4-4b0f-8dd4-6deb72725959",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/3718db99-c42f-4125-86b2-e44a07f63699",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/c87ed614-3b94-42fa-bed9-07c31fbf81eb",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c8073a32-240e-4491-9d11-ccf5277bfe82",
      "date": "1958-12-07T00:00:00.000-05:00",
      "label": "07 December 1958 - Sawayn, Hector",
      "recipients": [
        "Sawayn, Hector"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0de59c70-499f-4b75-8709-ff8e3d9c869a",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2482fd79-08a2-486c-9a4b-4c2e830ab7ef",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b31f3337-36b6-4469-873a-95760477080e",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/5edca674-2ffc-4132-ac5d-00333a022510",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/7256f595-e252-4dea-b770-683d6964122b",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/8553d28e-5dfa-4aa6-a14f-404a26342656",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/5059dc89-e4a9-484f-b149-6eb6d0b58a46",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b7dc6182-63d6-4c15-a745-59bdd4b57c4a",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/04eabb2f-935b-4c65-b7da-900658152a2a",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3e0b36a8-65d0-406e-b8bc-21886dfb827f",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dde62b13-7afc-470f-a892-8b79f19e7f8e",
      "date": "1959-03-25T00:00:00.000-05:00",
      "label": "25 March 1959 - Weber, Pamila",
      "recipients": [
        "Weber, Pamila"
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3679a9cc-397a-435c-93a4-5492946afb78",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/a69bc22f-7df7-43ab-89c8-3584e0305f8c",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d9a0b659-6da2-4086-8fe3-a813eef36f41",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/69b4058d-fda4-42e2-9d44-ffb11c3de1c2",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/cac67c20-c286-40d3-b353-20739461625b",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a7e43368-feed-40f9-aa62-c5eb2708afb9",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/43da3e21-88be-4835-aab5-8d4c8eb4b15e",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0ae60975-7063-4e80-be7c-dcfd86a38658",
      "date": "1959-04-17T00:00:00.000-05:00",
      "label": "17 April 1959 - Rohan, Quincy",
      "recipients": [
        "Rohan, Quincy"
      ],
      "destinations": [
        "<i>Café Lou</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/0ca4aeaa-d6b1-463d-8cac-8d7b6703fccd",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/85978496-228f-40f1-9d8c-69b3103d0957",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0457fd1d-2299-4809-aec7-ce37425d46a5",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1178bcf4-0519-405e-8076-c1c6a4b35a96",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/a069e054-093f-45e6-86e9-8c6007ecc9fa",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0f5082a5-6972-49ae-b499-3591d59e3a7b",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dc2786b7-ddc7-491b-85b2-00ef3207eb3a",
      "date": "1959-08-14T00:00:00.000-04:00",
      "label": "14 August 1959 - Jacobson, Aron",
      "recipients": [
        "Jacobson, Aron"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6195ec06-79f0-49c8-b959-09ae43c58e38",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/9847782a-c023-4f74-bd56-e1f6feac33c7",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f33ab211-d9f0-4ca7-baa6-96c376749cc4",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/7bd4854e-41f0-43ae-a715-f67285bde9de",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/a69fbdb4-ed02-4912-87cc-ec38e6b6440d",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/8e5f0cf9-51db-4e5f-8f14-508417a5d0b0",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/c21fbf09-ac98-4c68-82c7-dfc740b9bf80",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1f9df49a-7e67-4210-9bc0-a323af298aca",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0e2b8af2-5af7-451f-b520-8d8990273b76",
      "date": "1959-10-04T00:00:00.000-04:00",
      "label": "04 October 1959 - Beatty, Tommy",
      "recipients": [
        "Beatty, Tommy"
      ],
      "destinations": [
        "Islington"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/02aa27d4-facd-4e9b-a208-047c6bb9dc47",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/4b77ea20-2ead-4824-85d1-9eeba4f9eb39",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/5470e0e0-8780-4509-b963-f0a312c05122",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/00a62235-65ef-440b-9352-1aadad7df70d",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/9e4d3929-4430-4e14-a787-a8cf624af54c",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/948b0f0d-4c22-4912-b075-744fc54c4c6d",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d62565b4-f374-4846-a3f5-ec9f635fa6e8",
      "date": "1960-04-04T00:00:00.000-05:00",
      "label": "04 April 1960 - Hilll, Gary",
      "recipients": [
        "Hilll, Gary"
      ],
      "destinations": [
        "<i>Sector XXXZ5QZX</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2c5ea84a-01c7-4371-b09f-a0f0bf2beb24",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/50b692af-81d5-4a96-924a-f298051ec7fc",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/98491d6f-71c4-4829-9fae-6c43c4bfec2b",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/75830861-c9b5-4144-896c-5874cfe6ca91",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/8822bfd4-9832-410e-9356-a93f0ce97772",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/e2ba77e3-9e41-47ba-8d68-75c25f9d429e",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/0c6987d6-fdf6-48d3-949f-44e1ade96dbf",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0c1fb3b0-9714-40f0-8b45-385d22974605",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3ed25419-a590-4ce6-93d1-dd0d219a11c1",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/77f378ab-aef9-4376-b2d6-bc05f953f452",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/500a5ad6-50f1-4b61-a054-72434ac543cd",
      "date": "1960-10-28T00:00:00.000-04:00",
      "label": "28 October 1960 - Spencer, Alita",
      "recipients": [
        "Spencer, Alita"
      ],
      "destinations": [
        "<i>Fenchurch Street railway station</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/3f7c6fae-b7ce-4b37-b861-e552b4fe01c6",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/84fa95aa-9cb0-402a-9291-f0d2cbf48f17",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/a2f1d352-23e5-4a3c-8dda-6bfd640f6e57",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/76d1e93a-dc0a-4ce0-9960-70284c6301fb",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/c8ad4d61-a16f-4c07-be43-62dc3eea3d4e",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/73dfb407-b221-4f2b-9055-8e3d24d8a767",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/de936fbe-5245-47c3-a394-a9e0909d2138",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/fed3fa16-a6c7-4f50-93b4-73b7126577fb",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d7705556-7d24-4c83-8f24-97ac15542d1d",
      "date": "1961-10-20T00:00:00.000-04:00",
      "label": "20 October 1961 - Larkin, Aurelio",
      "recipients": [
        "Larkin, Aurelio"
      ],
      "destinations": [
        "Rupert"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/d03c8a52-db37-461c-9d0d-4743cdd3a9ec",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f791a1a7-0406-4615-a1de-9764f95e5820",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/fab90c4d-63ba-4edb-9acf-76f19f15b6a9",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/0fa2d2c4-1aec-4bca-b7a0-06cb8e38b377",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/14612af2-7f78-4c95-b5e6-afa3376a5e14",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/1e661d82-eb1f-4b57-adfc-90272c362507",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/019703bb-f0f8-43ee-850c-4859f3ad5dac",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/2b6a0091-44e5-402e-9cca-8e8b9853049d",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/2e70347d-ffb3-4ff3-a372-65e415912747",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/447e18be-9253-40a9-a0f1-3006723e6b94",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/da36be87-4333-4edf-8f26-cabcf80c451a",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f7c3cb4f-ff2c-4779-a95b-59ec051b7e6a",
      "date": "1962-01-15T00:00:00.000-05:00",
      "label": "15 January 1962 - Considine, Avery",
      "recipients": [
        "Considine, Avery"
      ],
      "destinations": [
        "<i>Slim's Throat Emporium</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1639611b-ece3-47df-85b0-0baad12d44f2",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/346cbab1-09fd-486d-9071-41ac86c46840",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/392831e3-4764-4750-ac66-60cfcc54c0de",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/4ffc6ea4-b9c1-4847-913f-93c2babe6050",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e185e90b-b235-489d-ab89-7eb44a9b8921",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e4049c0f-81fc-4e07-8a41-00044ce2aa71",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/6bcf6285-1eb6-489d-a59e-60143c0b6ca5",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/02ce7c7c-59a5-48c9-b06c-a21d7babd762",
      "date": "1962-06-23T00:00:00.000-04:00",
      "label": "23 June 1962 - Schaefer, Darrell",
      "recipients": [
        "Schaefer, Darrell"
      ],
      "destinations": [
        "<i>29 Arlington Avenue</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6dabc350-f8e5-4d8c-8011-5b87ed654d74",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/ec72a125-a722-42d5-86a8-1294aa45dbfa",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/236571a9-618b-4ab0-a6f6-ff4ccdcd073a",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/790193f1-2d20-48a2-a5bf-0a530c8a6aa6",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/c6518cb8-b59f-4e18-a9d2-59620fad9fe8",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2924bea5-38f3-4dc8-a18e-e1e21b3b51c4",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/516a7748-87d0-4a24-825d-d4b8a184f830",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/c4bc3ae6-b82a-43cc-a06e-867642835307",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/051f8d05-42bb-4b38-b580-c3742b939f15",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/09f05027-f009-4800-881e-b2b9b677a97c",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b79c4044-f791-426c-bc57-9078aa063ac9",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ce927a0b-2af0-416f-b043-48cff4ddba9b",
      "date": "1962-08-21T00:00:00.000-04:00",
      "label": "21 August 1962 - Hessel, Eleanore",
      "recipients": [
        "Hessel, Eleanore"
      ],
      "destinations": [
        "<i>Asbleg</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/505de3cd-9697-4d5a-a7ae-0e58fce50dba",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5f5d6c75-8dc5-4d16-bcc8-1da3c2938635",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/4659ab49-e34b-4fbd-9b17-52fba3a04415",
            "display": [

            ]
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/127e5742-de13-4536-9eca-db67f6ada718",
            "display": [

            ]
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/61787d79-fe9c-48a4-aed4-5d8f3e5af659",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1895fd32-9c38-47e9-973d-0ffd246bfe19",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/2e720f16-07f6-4c4c-9586-55b3fa8256cf",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b16e8822-c485-4cf9-ae1b-892e5e144a65",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/02560d2a-ca29-4f2a-9308-83d0fe1788af",
      "date": "1962-09-28T00:00:00.000-04:00",
      "label": "28 September 1962 - Cartwright, Katelynn",
      "recipients": [
        "Cartwright, Katelynn"
      ],
      "destinations": [
        "Sector XXXZ5QZX"
      ],
      "origins": null,
      "mentions": {
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/3d7b5abe-9026-46ef-90e8-c18e6b838708",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6286c642-3a2d-4bd6-83dd-25f8727245be",
            "display": [

            ]
          },
          {
            "type": "production",
            "id": "http://example.org/entities/bf6fceea-a030-4708-b16d-836edd4fe24c",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/3da05f35-281e-4c0c-9a8e-af0eb7614054",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d41f8b68-3484-479f-af3f-f45098bbc131",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2fc05aee-5108-49c1-8a6c-db23c24b5e48",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/326b2601-da0c-4013-be11-ecb1af597def",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f43acd39-9f11-4822-941b-96eab1ea8689",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1cfb3929-ce78-4940-9de4-f19a4b8de107",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e5bf6ad0-2663-4706-9a58-8d7378ae6d24",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e8cd5760-9c7b-421c-a03d-08e77b8cb303",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6d36175d-c963-4db3-a854-e0faf6d455ce",
      "date": "1962-10-21T00:00:00.000-04:00",
      "label": "21 October 1962 - Farrell, Susanna",
      "recipients": [
        "Farrell, Susanna"
      ],
      "destinations": [
        "Space"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/bf323d23-a9e3-4df8-8439-8d259342fd44",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/def284e7-d490-419f-97d9-b0308f49f4fe",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/faea8677-e456-4386-a8df-a248de2480bb",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/119b2d40-3657-435c-9132-e45ace08d3fc",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/be02db0e-8b86-4d9e-9ba6-a11a84484334",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/7f7e0488-f3bc-419c-8b72-35bdf117992d",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4dc419fd-d276-4c17-84a8-17dea3a8160d",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8902c2e8-1252-4cfc-b15a-0cb69575d9a8",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6dfa0ae4-b2fe-4b8d-9769-9aa6da5632b0",
      "date": "1963-04-08T00:00:00.000-05:00",
      "label": "08 April 1963 - Purdy, Twanda",
      "recipients": [
        "Purdy, Twanda"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/9fe544fd-b409-460e-a042-0baeb9887500",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/f27979c2-0cfe-418d-9abd-0e6933483abb",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/10528162-12af-4a52-8951-b20b0f407760",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1ecf7347-5b0f-4b97-a0d1-1877e6257a89",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/32918fc7-4861-48cf-b8f4-898fd290b6aa",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/6303f70e-fd2c-44fa-95e4-91843a051741",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/a1a0631a-1c7d-47b3-8ef3-0dd56e73a8d5",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/1649029b-d488-4154-9bf0-b140626d388d",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/58e9d603-a6a3-4c24-8cb0-31a3efbaa171",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4656b084-1d3c-46b0-be00-b07ba74f85c0",
      "date": "1963-07-05T00:00:00.000-04:00",
      "label": "05 July 1963 - Daniel, Sherlene",
      "recipients": [
        "Daniel, Sherlene"
      ],
      "destinations": [
        "<i>Space</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/649c57a0-82ea-49c8-abf2-8594aa22c145",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d24fc203-d442-4835-8edf-26422166fc38",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fc421acb-3ab1-489c-a3d4-9d01e59b6748",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2e4a6582-e567-4453-8977-0017236897b0",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/a4775213-d22c-49c6-a1ea-bc8a9d4381f6",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/c13caf82-24d5-474f-ab19-c1903cf5faa0",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/0aa12aa1-1d39-48f3-9eec-75581ffc826c",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/a148d8ec-11a7-4d24-89b3-c147ffc1a649",
            "display": [

            ]
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/26d6a0bd-ce33-42e9-bda4-e58d7e656861",
            "display": [

            ]
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/894e428f-3860-4cc4-8fc3-b4253f3c891a",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a9d1b59a-8b68-42c8-a715-9a038e18a848",
      "date": "1963-07-07T00:00:00.000-04:00",
      "label": "07 July 1963 - Dooley, Milford",
      "recipients": [
        "Dooley, Milford"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/7cb9866c-22b0-4532-91af-49fc4a8cf0a9",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9158c58b-7f66-4134-9dff-7dec1c2d97f1",
            "display": [

            ]
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6d129f3d-67a1-422e-a9b1-574ad2ce3f4a",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/b69c2db9-c811-4def-936d-60c722648760",
            "display": [

            ]
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/b33a2b75-ab08-4140-b7a4-4471a1492008",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/73d24dde-4b50-4926-8c91-01c98e1682a5",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/e6c5f485-3c78-4f03-8031-ced125a3d574",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/128d526e-f2cd-4914-ad98-b3397b6b404c",
      "date": "1963-07-31T00:00:00.000-04:00",
      "label": "31 July 1963 - Nader, Coleman",
      "recipients": [
        "Nader, Coleman"
      ],
      "destinations": [
        "Han Dold City"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/cad1fbf9-febf-44b1-8872-652ac75b2a89",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7827ed1f-8275-45e3-b7f0-8f316aef3ca2",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/f96e257f-d236-4088-81d6-3115a24c992b",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/420589c1-202d-4947-93d7-7b751d9fe53b",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/200673d2-e57e-47af-8ad4-2399e117d4d0",
      "date": "1963-10-01T00:00:00.000-04:00",
      "label": "01 October 1963 - Runolfsdottir, Rafaela",
      "recipients": [
        "Runolfsdottir, Rafaela"
      ],
      "destinations": [
        "France"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/38a54ce9-b5ec-40e1-915c-74fbd96d5ec2",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c8eaa7bc-4ba9-41be-b976-117027320505",
            "display": [

            ]
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/1b766a11-0025-42fb-aeaf-595c61301fea",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/40e2971a-8b05-4e5b-a918-aa4d42398a42",
            "display": [

            ]
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f4a86e65-86ee-43fd-b898-a0e7780b8855",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1488b7e7-a936-4491-84e2-15db520bc6c2",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/ae92ad89-a294-4a30-a276-3c49143cd86a",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/05280d2d-8161-4347-8531-37d23fac66ab",
      "date": "1963-10-30T00:00:00.000-05:00",
      "label": "30 October 1963 - Beahan, Lorraine",
      "recipients": [
        "Beahan, Lorraine"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/960e5af0-8d27-4df1-891f-1f7e0b0045d0",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e47c7600-8ca3-45d8-89eb-83145c7c8490",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/b8c83024-b6a8-41f4-b67e-2e52805f8587",
            "display": [

            ]
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/43a601b4-2513-4841-8f1c-b0e640f6e93e",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/48828444-e273-4b9f-88df-99bc51a952cf",
            "display": [

            ]
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f05286ff-d156-49c3-b4b6-fb33532613db",
            "display": [

            ]
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/608e4618-fa0a-4842-84d6-36ba353f5dc0",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/e9b1476a-bb16-4628-98d0-b8e407eecb62",
            "display": [

            ]
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f9131539-d877-44b6-bd11-9b1f3de6835e",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/195deb8b-4591-4d83-a8be-8b1fa247290f",
      "date": "1963-12-05T00:00:00.000-05:00",
      "label": "05 December 1963 - Jerde, Sal",
      "recipients": [
        "Jerde, Sal"
      ],
      "destinations": [
        "Seventh Galaxy of Light and Ingenuity"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6b1bdf1c-ea5d-45a4-940a-56e1647c884a",
            "display": [

            ]
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/75ecd629-3ab7-4442-baee-94e237243657",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/2b5623da-46ce-4e02-a59c-ff093d9414c1",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7ff5f284-f070-4396-b71a-a5cd7c41ac1a",
            "display": [

            ]
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d763959c-9053-4e1f-b45e-7b0d2b671f9c",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/08af7d6b-a086-4f2b-a8aa-15e82c02bca7",
            "display": [

            ]
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/739fa59c-a698-439b-b79a-f19bbcac41fc",
            "display": [

            ]
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0228ff62-da34-4316-83ad-a15810333dfb",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/671e746b-8741-4e84-b2e1-768dc4834ae2",
            "display": [

            ]
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8cce371d-b17e-48c4-8715-180b85644fca",
            "display": [

            ]
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/977bd98b-3ef9-4ea2-9fa7-fbd10ee992b9",
      "date": "1964-01-13T00:00:00.000-05:00",
      "label": "13 January 1964 - Runolfsson, Wayne",
      "recipients": [
        "Runolfsson, Wayne"
      ],
      "destinations": [
        "The Big Bang Burger Bar"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/247e976a-6704-475b-b05c-e3eebe2b10e6",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/683abab8-2f0f-4229-8583-0a3a77502e49",
            "display": [

            ]
          },
          {
            "type": "music",
            "id": "http://example.org/entities/be4bd649-4c3f-4122-9707-4b2d2155b03c",
            "display": [

            ]
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/d4df6361-528e-4885-888a-1e1dac2144d4",
            "display": [

            ]
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/dff2d7a7-90f6-42e0-90f5-d6ac793ba8d8",
            "display": [

            ]
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/2ceb3de8-d0e4-4875-9a00-8798a50402bd",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/36d1bdb7-7d89-4163-89d7-ce43cdd3f8b7",
            "display": [

            ]
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/f6a28f0e-e369-41f2-b055-543234fa0ed3",
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
          "doc_count": 2
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 4
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
          "doc_count": 5
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 7
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 5
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
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Kris Academy",
          "doc_count": 17
        },
        {
          "key": "Volkman Institute",
          "doc_count": 14
        },
        {
          "key": "Carroll University",
          "doc_count": 13
        },
        {
          "key": "South Maryland Institute",
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
          "key": "french",
          "doc_count": 13
        },
        {
          "key": "english",
          "doc_count": 8
        },
        {
          "key": "italian",
          "doc_count": 6
        },
        {
          "key": "german",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 30,
    "links": {
      "self": "http://example.org/letters?page=1",
      "last": "http://example.org/letters?page=2",
      "next": "http://example.org/letters?page=2"
    }
  }
}</pre>
