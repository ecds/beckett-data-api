# Letters API

## Language facet

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| q | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients,mentions,destinations,origins,repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | nil
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | nil
| recipients | Comma seperated list of recipient labels | false | nil
| destinations | Comma seperated list of destination labels | false | nil
| origins | Comma seperated list of origin labels | false | nil
| senders | Comma seperated list of sender labels | false | nil
| repositories | Comma seperated list of repository labels | false | nil
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | nil

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
Link: &lt;http://example.org/letters?languages=German%2C+italian&amp;page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?languages=German%2C+italian&amp;page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?languages=German%2C+italian&amp;page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 32
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1409777ae44e1ed933e4f1d823096943&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c3953b1c-d96a-4a71-90bd-b4a46cbc89c3
X-Runtime: 9.520270
Vary: Origin
Content-Length: 54385</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/b8aed45f-8620-4aa8-a17e-45164086ce92.json",
      "date": "1957-02-21T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6ca05111-5510-4ed7-b524-06720a391f8e.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1910-1982). Vegan pour-over asymmetrical pitchfork celiac godard intelligentsia crucifix.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/46d0f191-02dd-46b1-a5bd-1ebe42564e57.json",
          "type": "place",
          "label": "Horse and Groom",
          "description": "<span>Horse and Groom.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/9e5c6d0a-d5f5-4294-a622-d16556c98e86.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/af6ca872-c0a0-4914-a91e-0fdc9607233a.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Kogi you probably haven't heard of them authentic gluten-free semiotics.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/b105aa81-b736-4b2f-b34f-d4ec3672d445.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/07f476de-b377-429e-99bc-37b87e6eaa6b.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/d474240a-ada0-485c-984f-32ff0114adab.json",
            "type": "writing",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/4332ced3-7dce-42a3-92a8-78f15877373e.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/c9667da1-06ca-41ed-81a9-390af0079406.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d0b5f3c7-181c-425f-9241-35ecf93fe0bb.json",
      "date": "1957-03-14T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6ff65df4-ef2f-4164-9118-eb344ad83387.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1914-1971). Cornhole occupy vinyl lo-fi wolf mixtape fanny pack.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/42769812-9af1-4248-b041-259fb306f6f3.json",
          "type": "place",
          "label": "Sector XXXZ5QZX",
          "description": "<span>Sector XXXZ5QZX.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/6b93ffc1-00a0-49a1-9d5a-22a79f01963d.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/73524da5-a395-41d8-b0d2-e7848a9ce692.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/5b0811ef-f8c6-4cd7-acad-68336cc7dd93.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/4a470ed0-e7db-4652-bcbc-ad12bb6e504b.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/a8dc026e-3c5b-4f83-b38f-d6a94de3263b.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/bc9a53c4-b31f-4ea8-b1d0-b2030c7a56bb.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Post-ironic +1 viral echo ugh mustache chia.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/5e6488f4-13bb-4c59-939f-78075a993722.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e2a13441-1a3e-483b-9528-467d39170489.json",
      "date": "1957-03-31T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/203a039c-248d-430a-9bac-e5fe7b3fc070.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1926-1984). Chartreuse you probably haven't heard of them seitan celiac beard lo-fi.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a2cd34d6-d9ea-471e-9391-9b1ba4d31f70.json",
          "type": "place",
          "label": "Rickmansworth",
          "description": "<span>Rickmansworth.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/f075985f-c12b-432f-a0a0-420d7f868322.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/550d7393-a950-4d30-a228-c047910f4bb0.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/ce2e1435-3063-4119-b156-2b193a545420.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/821ecd03-987b-426f-b01d-e290bcdfb1e9.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/bf917b3c-8229-4d4c-ace7-353353d289b5.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cee5ff84-43bc-4ea1-ae94-62b2e9087a96.json",
      "date": "1957-04-03T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/9892ac77-6a01-4465-b6d4-0be589c90575.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1916-1970). Kombucha pbr&b food truck mlkshk wayfarers direct trade gluten-free semiotics drinking.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/3ab9d6c7-3f2f-408d-a8ae-f0633a7d57c4.json",
          "type": "place",
          "label": "Space",
          "description": "<span>Space.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/60130e16-a971-4016-a2bf-c297894f3050.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Asymmetrical pop-up meh messenger bag photo booth viral sustainable lumbersexual biodiesel.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/5780bee8-39d7-40fe-b9b1-7c6134912915.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/bfb973a3-beaf-4b98-9f31-1b9efaca57cf.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/03cce365-1acf-4baa-aa0c-e533a1e87c58.json",
            "type": "public_event",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/2a93e6a1-ab3a-47ac-a164-a0d4847dcfe3.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/db03ddf2-e56f-4d46-9648-509698f2c137.json",
      "date": "1957-09-06T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/81c4a23e-6a57-4b5c-a91d-fb21d6f664c6.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1927-1983). Selfies shoreditch art party skateboard 8-bit.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/336e5b04-4d28-4cab-a025-d10f245c9865.json",
          "type": "place",
          "label": "Barnard's Star",
          "description": "<span>Barnard's Star.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/22832395-409a-44ee-96c3-cf5a34d6c6a5.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/b1ab8337-8897-4bd7-a563-70a41152265f.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/4e63aa05-c8a6-4e3c-8f02-f5520b95d791.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/005d827b-eb66-4217-ad55-b2ec087255da.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Gastropub chartreuse lomo sustainable.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/967876b3-4375-44a3-868a-6d95cb3dfa8f.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/bd5d9079-1b05-423e-81fb-79146542896d.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/b05495ee-2db5-4de8-9324-d82ceb799323.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/73486f75-8cf5-4818-b794-f4fbe65a5e68.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/10286e3e-d6e6-44ca-ab7f-07496db80322.json",
      "date": "1957-11-19T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/f5bc3dff-7bcc-4a97-bae2-90fccffb4709.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1928-1971). Williamsburg polaroid aesthetic dreamcatcher fixie humblebrag.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/5a207721-9ff6-442d-8c25-db869bbf73df.json",
          "type": "place",
          "label": "Lord's Cricket Ground",
          "description": "<span>Lord's Cricket Ground.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/2afbf377-422e-497a-b66a-537f6c78b23b.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/61e96c21-ed7f-462d-b8fd-1a85e64d0a34.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/31a6d5aa-117c-4b1b-b65e-b3e88158db26.json",
            "type": "organization",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/b9056852-2ccb-4f2a-9eb1-d34b8c63adae.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Neutra farm-to-table sartorial kogi gentrify.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/ff79cdf4-a92d-4958-a323-3a0174bf04c5.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/cd2638a4-215e-4445-a04a-9cb456be9d47.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/26cfd57c-37ff-4ee0-be1f-a05ef2c08b28.json",
            "type": "publication",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/1fe90ba5-b80b-4349-adf2-b2d9d19926a7.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/87f48630-ff10-4a3a-a209-e7eb9a06b878.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/84fbeef8-e3b9-4dfa-831d-e3fe2c9a065f.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/a41c6d1e-5960-4672-81a6-c00f06832469.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Raw denim meh cleanse selfies mlkshk hashtag jean shorts twee food truck.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bd22c115-349f-4573-a8fd-0fbb52d30c11.json",
      "date": "1958-04-18T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/801b85b0-353e-4124-a313-8f5401de92ab.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1926-1981). Post-ironic leggings mlkshk asymmetrical kombucha.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/2f569de6-4645-4f75-a7f2-e27ce193b946.json",
          "type": "place",
          "label": "Betelgeuse",
          "description": "<span>Betelgeuse.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/d39ea479-04de-4c96-844f-2d1716576646.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/305f5616-bb30-47a0-9096-cd744f425947.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/0fbda7b2-78bc-4057-9934-a8afee345c9f.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Marfa pbr&b etsy seitan aesthetic chartreuse.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/dcbdda87-7140-4253-9df6-693e335cb919.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/81e19ff7-4c56-48a8-9dcb-4f74367b06ca.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/d478024a-f5f8-493f-bfa4-fbc093b5c8d6.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/c6d42df9-fd68-4bd9-953c-3307a8f03b50.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/dfaf6a1d-433a-42d9-a17c-fbe9efc00fac.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/34f5061b-6e05-4a91-9e04-2dad0f137abf.json",
            "type": "writing",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/726f336c-5fb3-4951-b7bb-58c332300ed1.json",
      "date": "1958-05-15T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/46ade128-68e6-491b-ac78-ba7361de8880.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1922-1990). Tofu loko church-key distillery occupy.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/1bc41709-74a6-45d8-99bd-8e18f21147d8.json",
          "type": "place",
          "label": "Rickmansworth",
          "description": "<span>Rickmansworth.</span>"
        }
      ],
      "mentions": {
        "public_events": [
          {
            "id": "http://example.org/entities/3e49c443-6905-4916-95ac-4c3894c499d2.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/a33327ae-daf5-4113-92ce-c8856c9ae4cb.json",
            "type": "publication",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/9ce4174a-7087-46fe-a0c9-cfc83a682570.json",
            "type": "publication",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/8ce11cef-bf8b-4819-b8d1-34dfc370a17f.json",
            "type": "reading",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/fddcb689-f356-445a-8cfe-0a3fb0efc498.json",
            "type": "writing",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9f69f8df-9448-4e20-8f9e-9a818069acd9.json",
      "date": "1958-06-14T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/43d728f2-2245-431b-a8d9-2e57b1a01088.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1927-1986). Venmo tofu banh mi muggle magic next level.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/930727e7-d529-49df-8681-5c08b6dbad8a.json",
          "type": "place",
          "label": "Zarss",
          "description": "<span>Zarss.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/45225dff-12ad-4ccf-bcd9-8f4c14549d93.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/db01d994-be95-49b6-876a-364ee78c750f.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/1e345f49-8add-4cef-9f02-5b42e3fa0e0e.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/052574a3-4d9b-4272-ad65-0894bc329916.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/1e2276e7-0f42-4277-a81a-5ffe97bf8b70.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/02436e1c-3849-4556-93ca-217bafc9ed92.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/85d34909-2983-4778-ab77-f555d10c4e53.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/6516997a-bd79-48f3-be5b-257c4a8622b3.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/b40d927e-3f65-47f9-bfb6-5ae94a8b2342.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/fd631234-c464-4f36-9384-13f5e4f8fdd7.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Single-origin coffee whatever austin irony microdosing keffiyeh.</span>"
          },
          {
            "id": "http://example.org/entities/a7595d24-76ec-4f02-a783-2d817f5717cd.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Street lo-fi gluten-free direct trade.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/000d088a-e5dd-4e1e-91b9-5127f1b64f6e.json",
      "date": "1958-06-23T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6f0c5d3c-7085-4322-a638-00464d21a29e.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1917-1977). Post-ironic retro stumptown literally put a bird on it.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/279b1309-f9b2-4c8f-a4e8-a49698bb00a4.json",
          "type": "place",
          "label": "Sector XXXZ5QZX",
          "description": "<span>Sector XXXZ5QZX.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/a12aae24-ba82-4c65-b657-fff420c46bf1.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/f1f42cc6-2d0d-4d37-add3-821da578b342.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/7994f0e3-9d59-40f4-bdf8-78298b4adb65.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/c08e45e9-ae97-46fa-a62c-8258e21d5c75.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/178efc00-11ec-4563-87bb-6df684c4e7c4.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Cold-pressed crucifix mixtape flexitarian godard before they sold out salvia pug.</span>"
          },
          {
            "id": "http://example.org/entities/b4d2fac5-c499-40cf-b5cb-9af8586bcd77.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Cray tofu roof bitters brooklyn biodiesel tousled tacos normcore.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/fed3f27f-530d-4b81-9084-8c608acb142b.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/f7ef58a5-1041-4e9d-80c6-c7f7fd0cb99b.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/af5728d8-df07-49f2-8f82-5f343a739930.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/ddd362c8-5331-4f31-b1ab-42fb7d62994c.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Readymade poutine drinking meditation sustainable try-hard selfies +1.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/51884e51-31ba-43af-a6ef-d5c7f1173290.json",
      "date": "1958-11-16T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/e07aa4cd-ebbe-4ddc-8112-c4a49f168b51.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1907-1996). Seitan direct trade everyday tote bag freegan.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/22833f44-909c-4bb5-bb73-61da4e6cf225.json",
          "type": "place",
          "label": "Han Dold City",
          "description": "<span>Han Dold City.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/6ca5bb20-ed8d-4785-8eb3-e05b53ae0037.json",
            "type": "organization",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/71d74b2d-af1c-46d1-987c-74c72e5ac5bb.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/be9696b4-f1ce-49df-9e4d-988bb8f2f987.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/64e958b8-898a-45c9-bc5f-7f7dd8d69fac.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/381d3407-db0e-467a-ae0b-d4a97f1b57f0.json",
            "type": "translating",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/c2c0a777-8d1f-4eec-8efa-ce6cbaab68b5.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Keytar green juice everyday bicycle rights five dollar toast yolo marfa.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/6d03f94e-07cf-4923-9a7c-bb5107a43aba.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c86480ad-01b6-4895-8cee-f5e2e18d782e.json",
      "date": "1959-01-10T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/378b8b1d-b1a7-44e2-bcf9-e230596a7752.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1909-1978). Yuccie distillery leggings single-origin coffee cliche.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/16774ced-a3dd-41e4-a78c-b8cfa837a87d.json",
          "type": "place",
          "label": "Ziggie's Den of Iniquity",
          "description": "<span>Ziggie's Den of Iniquity.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/0d7ead40-beb6-4258-af13-bb66733ce265.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/2fba4087-57ce-4117-bd37-bc1c556ed381.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/411606a8-428a-4af9-850a-b77b181d2f95.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/b9bcf4b8-322c-4348-b7bd-195b8f7f318b.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/266ad5ff-91c3-4c71-b87b-2aa200a7f879.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/329783e8-55fe-493f-babd-54e853f5aa6a.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/3c6e1692-62c2-4a4e-a292-f4592236b284.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Dreamcatcher occupy tattooed synth cornhole.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/4a177085-e078-4e3e-b33f-260329e0fc06.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/dc17ac87-47e1-4b70-be08-e35a35e3a9c7.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/8548cc85-e867-4e38-824b-f5a1f834936f.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/62c57d79-42b3-47c9-a1d0-1e5e393033c4.json",
      "date": "1959-01-11T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5123919a-6764-4a0e-aa34-749f30087b1d.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1929-1994). Flannel health +1 pabst cold-pressed.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f99e62d9-8b69-4fc0-acf9-fddd6bca1a99.json",
          "type": "place",
          "label": "Horsehead Nebula",
          "description": "<span>Horsehead Nebula.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/9e687388-7439-48d2-a668-b8b8ec00d772.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/30848a1d-0f31-4424-b5aa-871fe258ce52.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/7ce5b731-fa03-4420-a075-a3d09eb7e630.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/a2550f1b-8964-48ec-9577-ca3059092240.json",
            "type": "publication",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/718e1960-c65a-48ab-8997-9d8a3024debe.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/a54db788-5ea5-4587-8044-6907c9dbc395.json",
            "type": "reading",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/05e4d928-ec5d-4930-b8cc-c0c2fc4bdca0.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/0ce6f64d-f478-4c85-b512-4b8442eca0cd.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4d1322d5-aff8-4422-ac3c-c3d695a78fef.json",
      "date": "1959-02-11T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/01f80991-a888-473f-8cfe-6bcaded5caba.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1907-1980). +1 meditation wayfarers fixie deep v 90's sustainable.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/098a9c7e-9cc1-4bcd-89d4-d4f4c305115b.json",
          "type": "place",
          "label": "The Domain of The King",
          "description": "<span>The Domain of The King.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/46aef705-658a-4a3b-8a54-3f85cdf19729.json",
            "type": "music",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/8c0a9b0b-ec04-4791-ab6e-165724cb0232.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9ef781d6-311c-4034-9377-a9483cc87c27.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Intelligentsia street truffaut meggings +1 pop-up tattooed wayfarers hella.</span>"
          },
          {
            "id": "http://example.org/entities/f6168641-66a9-43c9-8203-58a389e3864e.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Chia freegan cred xoxo carry.</span>"
          },
          {
            "id": "http://example.org/entities/0ee01873-a217-49a8-a6cb-336bc6a94f6b.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Sriracha put a bird on it yolo umami.</span>"
          },
          {
            "id": "http://example.org/entities/1c58b108-a184-4c7d-8f13-a7e7262e4128.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Pop-up raw denim literally iphone ramps waistcoat dreamcatcher.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/52da8125-6ab5-4217-9b4b-842c28aba653.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ef46e1c2-6248-4c76-b969-d55976ceb9b6.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/82b30d27-99dd-4fae-b409-c5b868c79374.json",
      "date": "1959-04-16T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/545c36a7-6fa8-4744-a1d3-92ad523e665b.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1909-1994). Xoxo keffiyeh photo booth trust fund meditation phlogiston.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/f6ba5a66-1f15-4d19-a03f-515cabf056a2.json",
          "type": "place",
          "label": "Oglaroon",
          "description": "<span>Oglaroon.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/96fbbef4-a6ac-4479-be1c-2024efe36bdc.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/2915e195-94b0-48cb-aa3f-99d4804be77e.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/0041d59e-a901-477f-839b-1427a0d2a686.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9df08ef4-45f1-415a-bb6b-593625c71fd0.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Diy sustainable muggle magic health photo booth fashion axe portland disrupt locavore.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/f1dc60ed-389e-419e-a557-47a85b385a5b.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/d536b47e-0968-43f5-aa87-043d6def3b4d.json",
            "type": "production",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/33814f50-b78a-4955-b98e-990c9761d012.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/3d8d0ccf-51c6-4d1c-83db-bf0db93f9920.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/6d870f3f-43c2-4cc4-8d2c-6c7093635c34.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bbb77266-f12c-4fd5-8ba4-f02461e119ee.json",
      "date": "1959-07-07T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/cc3b43a9-c00d-4425-9396-a8d6609f47c4.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1926-1996). Tofu selfies venmo stumptown pinterest poutine flannel everyday tumblr.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/2f2894af-2c37-4778-84f1-2832482a94fd.json",
          "type": "place",
          "label": "Belgium",
          "description": "<span>Belgium.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/c6d49298-1ced-4eff-9807-31011a6016db.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/aea8f3d7-a08b-428b-b91c-cd6507f55fa7.json",
            "type": "music",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/5d6bfd00-3df9-4e0a-8df9-b7b9fb49af03.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/451cac62-1075-4fbd-b3d1-b1862bb0d107.json",
            "type": "person",
            "label": "Donny",
            "description": "<span>Donny. Green juice neutra five dollar toast scenester.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/33b36fe3-a42f-42be-8ad6-997fe062424b.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/b2b9b020-e9ee-4e19-8035-2cd01633faf8.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/99192916-536f-48ef-8f4e-374e807eb3f1.json",
      "date": "1959-08-17T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/aaba4202-dcfd-4159-815e-a125d221eef7.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1903-1978). Sustainable waistcoat goth echo selvage cold-pressed celiac neutra chicharrones.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/b2f0cd4e-10a5-4fc0-b4ed-07b60e0852a3.json",
          "type": "place",
          "label": "Betelgeuse",
          "description": "<span>Betelgeuse.</span>"
        }
      ],
      "mentions": {
        "people": [
          {
            "id": "http://example.org/entities/898cd3c4-4260-4a80-9d18-1c06d8d73d61.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Intelligentsia cold-pressed meggings green juice.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/629b4b54-d650-451b-8cab-ed140bafc8f0.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/bf6b07df-4717-4848-8bed-812dda304b23.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/83747ac9-d5ea-49e5-b54b-b085b30adff5.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/7bef75c6-7da9-4b61-b8cd-5b1125e7f27e.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/52e92aa5-51fa-4266-a6c6-90ace5dd16b7.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/b8e4aba4-9b3a-4e0c-9f15-ffc1a2f2ead0.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Goth organic forage butcher raw denim retro meh mixtape.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5b5c072d-4bc7-4635-8c83-592a27b6fea0.json",
      "date": "1959-09-24T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/dc722118-6f4f-48bd-83ef-def4cabb6d32.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1902-1985). Loko tilde chicharrones try-hard lumbersexual.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/c0bc2dd0-aacc-4b8d-9d6d-2ee6f8254a97.json",
          "type": "place",
          "label": "Islington",
          "description": "<span>Islington.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/a395db6e-cc60-497e-bd2c-3d03cf2deef5.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/d3def3fc-eb9e-4a9c-8895-7a93106a4240.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Trust fund forage diy truffaut pinterest.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/9c3b10fb-ed33-41d5-916e-3194291f5167.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/843c45c2-4dfd-4c77-9af3-55d1f0fec6e0.json",
            "type": "production",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/935fa9d9-5794-403b-b839-3646ba748f95.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Migas crucifix seitan goth occupy mumblecore intelligentsia.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/6d066d24-6e58-411a-94e5-ce78eaf224d9.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bd371707-3d67-4d9c-9890-ab39900a5fbd.json",
      "date": "1960-01-28T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/dad93995-fdef-47ea-be63-c4ac2a6cb20f.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1908-1997). Literally knausgaard flannel cliche scenester.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e5bcb05d-5d8a-471b-b7be-854fbdc1902e.json",
          "type": "place",
          "label": "Fenchurch Street railway station",
          "description": "<span>Fenchurch Street railway station.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/06d5a7d2-04db-4b1c-b55e-126bdc264b06.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/dd4a2977-4df1-4272-868d-e91c0869ceda.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/d5419b24-701e-4a2d-b442-5dc058fb5d3a.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/18425b4f-a229-488c-8204-f3d62662a398.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/2d9c38c6-8d1d-4000-9cc5-f5c58bff0b29.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/05bcfc30-f972-4c2f-b6e5-81b37b829118.json",
            "type": "place",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/4186e49c-6b1a-4299-82dd-283ec85b66f0.json",
            "type": "reading",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/abab424d-8026-419a-9405-727499783419.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bf0e817f-2295-40ec-8af6-fffbcd50a48f.json",
      "date": "1961-02-14T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/0783e928-e7c7-472d-ae53-23c37af50797.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1901-1970). Next level carry distillery fingerstache echo drinking slow-carb.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9b9c0f3b-c51f-42f2-877e-07afa409c1d9.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/75757c0f-4f9e-4eac-aacb-af778a5931af.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/17be1632-7e01-49c3-8129-fd1bfda15fdd.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/3755fcfe-093b-4e3f-a36b-f6ad52d01e1a.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Meh food truck schlitz kinfolk kombucha church-key fashion axe bitters wolf.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/b9b30e6a-5283-4bc9-89da-12547afdfdd1.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/099ce8c3-6c35-4c71-abd1-7a519837fb57.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/4d96ea08-422e-4e5e-b622-46886e113b80.json",
            "type": "writing",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a90ef866-4830-4bd5-b03d-0d7c1024ea52.json",
      "date": "1961-06-23T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/f0730bb9-b5d3-48c2-a76a-c78638876a99.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1923-1992). Knausgaard diy asymmetrical typewriter raw denim phlogiston letterpress gentrify.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/6533228e-f279-4143-84ad-f146e7299c2f.json",
          "type": "place",
          "label": "Lamuella",
          "description": "<span>Lamuella.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/89383b56-54e7-41fa-92c0-4f31c616a0d1.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/a9bb9fd8-04b5-4ea0-8ff7-d8177ce37587.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/32e460b0-22e5-4ef7-a15f-f7fafc3157f1.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/13f0c4f9-10b0-4919-863e-0a84580c3b71.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/eb62246a-d66d-4824-841a-a46ea3440779.json",
            "type": "public_event",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/f5867137-c2d8-423d-a200-f42d2ba93d26.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/a3368ce7-7edf-470a-8e74-73ad4dcdb095.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Poutine butcher banjo scenester tilde mustache hammock.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/6ec38358-ab0e-44fa-94ca-31c74a1f4a16.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/adc0f4ed-df97-48cd-a805-af511ad4fab0.json",
      "date": "1961-07-08T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/514cd019-317d-4b20-8a9d-cc4482be32ee.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1908-1971). Truffaut roof austin chartreuse.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/44318dcb-9186-45af-96f0-b7fe027971d0.json",
          "type": "place",
          "label": "France",
          "description": "<span>France.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/cd7acc37-79d0-4ed1-b59c-b1820adabb42.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/2ef43c3d-5186-4585-9de8-298841fff32b.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/80146f5c-040f-48e4-9042-2bf4908e0c92.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Keytar chia pinterest retro everyday venmo semiotics chicharrones.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/9b9bd0cc-d523-4127-8ead-6f7f035361f3.json",
            "type": "publication",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/181fa39b-dad7-453f-afb9-ea0645ed08e1.json",
            "type": "reading",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/ce7b8efe-3071-4bae-99f0-fa34a806fd65.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8407b02f-af63-4560-a49f-e5f2380df3b9.json",
      "date": "1961-12-25T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/9176aa35-4629-4d55-afd0-674e54922ece.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1926-1982). Occupy chillwave small batch shabby chic put a bird on it cronut.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/7775676a-ac1f-4738-8b57-976ef22e3af0.json",
          "type": "place",
          "label": "Horse and Groom",
          "description": "<span>Horse and Groom.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/34790efd-2534-4bea-9e1b-26272ce4653a.json",
            "type": "music",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/f42b9146-ac99-4188-9e2a-8b28f0f30fb0.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/55f7082c-88b3-4757-ae38-53ee98f0bc61.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/4a15c84e-79f6-4c28-9fc2-6d5f1d475e53.json",
            "type": "place",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/a58ccd07-8006-4596-b24f-0d1682754c50.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/e49063c7-6e85-41c1-b581-afe8a9a7717d.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/933db595-b11d-48aa-824f-a8b937cf4dec.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/b47a401f-fecc-4782-b0a2-c780ae3370b7.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6391dca2-afd3-4a91-bc1d-2ef0d5d7f18e.json",
      "date": "1962-05-24T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/31ea964a-e165-4840-82e5-0ff8e23a1163.json",
          "type": "person",
          "label": "Jesus Quintana",
          "description": "<span>Jesus Quintana (1906-1981). Meggings sustainable muggle magic small batch kale chips vinegar raw denim slow-carb messenger bag.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/ad58cd7b-a547-40c3-a6ba-e0ae3cdaed13.json",
          "type": "place",
          "label": "Preliumtarn",
          "description": "<span>Preliumtarn.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/f33e73af-2e83-4be7-94f6-0618a9691cb2.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/351124de-9caf-4548-840c-a1db1bc61a14.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/61d39b2a-6e82-493b-9634-aaf8ab56fbaa.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Normcore freegan shabby chic biodiesel.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/17ffc0bd-a53f-4b6f-86ba-a3918cf753e4.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/d690dfda-c6c7-48fa-8ab5-98d8724f6326.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/8656a325-7bd0-464f-8cc1-d34429e5a7d8.json",
            "type": "work_of_art",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn, Shabby chic lomo pour-over tattooed.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/9c27c0f3-027c-4ce9-a660-d58ddbf207c3.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6178302d-7695-403a-bd15-c5990fa58629.json",
      "date": "1962-06-18T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/fa90d168-45c1-4651-a8fc-3b9e34cdc2df.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1917-1977). Tousled pork belly poutine single-origin coffee farm-to-table.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/bde7788f-aaac-4840-9460-b8d276fb7463.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3aab30be-0e37-4cdf-ad39-c6965f3dfc9d.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/dd2527d2-c436-4716-98e7-e5a53ac6a7a7.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/99287f7a-db6d-483b-b342-a8ad7758150b.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/20cbbe6e-2e32-43aa-b2c2-72852a3ef9a5.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 32,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 6
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 5
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 7
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
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
      "doc_count": 32,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "The Cruickshank Academy",
          "doc_count": 17
        },
        {
          "key": "North Cartwright Academy",
          "doc_count": 14
        },
        {
          "key": "East Beahan Institute",
          "doc_count": 13
        },
        {
          "key": "South Bailey College",
          "doc_count": 12
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 50,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "italian",
          "doc_count": 21
        },
        {
          "key": "english",
          "doc_count": 12
        },
        {
          "key": "german",
          "doc_count": 11
        },
        {
          "key": "french",
          "doc_count": 6
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 32,
    "links": {
      "self": "http://example.org/letters?languages=German%2C+italian&page=1",
      "last": "http://example.org/letters?languages=German%2C+italian&page=2",
      "next": "http://example.org/letters?languages=German%2C+italian&page=2"
    }
  }
}</pre>
