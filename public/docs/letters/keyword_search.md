# Letters API

## Keyword search

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

<pre>GET /letters?q=brandt</pre>

#### Query Parameters

<pre>q: brandt</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;q=brandt&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=2&amp;q=brandt&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=2&amp;q=brandt&gt;; rel=&#39;next&#39;
X-Total-Count: 28
Content-Type: application/json; charset=utf-8
ETag: W/&quot;918c820d6383ecec0ee2fed363c46d55&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: dbefa30a-b681-4025-b585-dd39044424fc
X-Runtime: 15.524643
Vary: Origin
Content-Length: 54360</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/7317be92-aa23-4ceb-9a04-33df0816f1d0.json",
      "date": "1957-03-25T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/1feaa975-9700-4372-8f7e-5b327eee9d3d.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1924-1986). Occupy plaid meh goth small batch marfa single-origin coffee helvetica skateboard.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/635ea2c4-3026-44e3-8733-a25bd616f2f1.json",
          "type": "place",
          "label": "Madagascar",
          "description": "<span>Madagascar.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/c2ca8c8f-8af7-47d4-9fbe-db4cf0e8c428.json",
            "type": "music",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/5ca6638f-183d-4559-85cb-ea4a0ea17bb7.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/99d3c398-7261-457b-b18d-1709c90da318.json",
            "type": "reading",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/e86fb74a-6bb5-4e74-86b2-7d1050274049.json",
            "type": "translating",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/23e8eb70-cad6-4f37-b1a2-d4d7a36f2054.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Thundercats literally pop-up locavore paleo.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/daecf010-1955-482b-9a0b-684635864705.json",
      "date": "1957-10-01T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/0a18597e-e8f9-4402-b7c9-42c919777873.json",
          "type": "person",
          "label": "Karl Hungus",
          "description": "<span>Karl Hungus (1901-1976). Blue bottle actually paleo brunch intelligentsia plaid.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e4e19ad1-9dbe-4d50-bdef-04a5916d454e.json",
          "type": "place",
          "label": "Milliways",
          "description": "<span>Milliways.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/8f38d1a9-65d0-4f86-86fa-ab3ceac735a0.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/ab49ea67-8138-4acd-8027-a1a66a1fb785.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ef11508d-47ae-4863-b462-9b0c9ed5a03d.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/031d3580-4f0e-4b46-aaf0-5ba539577755.json",
            "type": "production",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/708644cb-33be-4aba-9cea-beb500fa03cd.json",
            "type": "public_event",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/d9d2d1e2-0e73-4066-9a1e-5022ba50b1c1.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/e77e6aa4-61b4-4fee-93ce-365c96fb8dc0.json",
            "type": "work_of_art",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski, Jean shorts fashion axe bespoke meditation street knausgaard irony.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/b0dd1970-7d18-465e-ba93-9a4bfae895f9.json",
            "type": "writing",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/7566d82a-1e2e-4589-9322-c532cb1a8ddf.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/726f06cc-9477-4043-b184-00387a2e7047.json",
            "type": "writing",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2bf82e74-ecbe-4229-8e4e-6d99ababd835.json",
      "date": "1957-10-03T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/8a79c663-4680-44db-a27b-ac43299bb948.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1929-1983). Single-origin coffee intelligentsia diy austin drinking sustainable polaroid vinyl hella.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/791acc4f-d89d-49fc-8636-fb9d7d08e6d2.json",
          "type": "place",
          "label": "Seventh Galaxy of Light and Ingenuity",
          "description": "<span>Seventh Galaxy of Light and Ingenuity.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/c08972e8-f7aa-4d27-abb3-b85e1e094781.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/35268274-3fd7-4c97-b78f-9eff11f38c7d.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/e9e4ea86-c37a-475e-8d54-5844aa0c4e2e.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/403583c3-652d-442c-9cdd-da7043edf3ef.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ad3d7330-4800-4e86-81d4-7b5cb355fcd7.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/efb67f0d-0ae4-450b-be0c-8530be8b6d3b.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/d88f922d-21a4-41cd-86fd-b037ed484236.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Park disrupt meggings tumblr photo booth iphone whatever swag cornhole.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/59a85477-357e-4f08-ae04-3d4784c49ee7.json",
      "date": "1958-07-18T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/58f69a06-f5c3-49ed-849f-6f1846dd542a.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1909-1992). Mumblecore before they sold out cronut hashtag.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/102f164a-a58e-4275-b09d-3fbd17f56764.json",
          "type": "place",
          "label": "London",
          "description": "<span>London.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/77d553d3-9a67-44b0-a09e-46c1746af5d8.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/f576348f-84e5-45d0-b8b5-d5866f70fbfa.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/f2a269bc-c263-4a4e-bf57-30adeb623bf0.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/3db39810-4135-43b6-8c6a-bb476544c626.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/8a7914f9-d288-4541-9fd1-19eb3974a434.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/d733c0c4-579a-478b-99fb-b9c3a62203c9.json",
            "type": "production",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/b5707438-bdd9-47de-b0c2-175ec3f452c7.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/98417315-374c-4fb8-8107-c3916a4909b3.json",
            "type": "reading",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/7404bb42-cd52-4b7a-bd9d-9da47560fd43.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a4fa8da9-1754-49b6-a8b7-88581086e414.json",
      "date": "1958-08-03T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/95b53dd0-2f73-47dc-b90f-c9b5f826ba4f.json",
          "type": "person",
          "label": "Donny",
          "description": "<span>Donny (1918-1996). Cred chia pitchfork 3 wolf moon.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/45f21593-585a-4a36-89f3-f226f8603357.json",
          "type": "place",
          "label": "The Big Bang Burger Bar",
          "description": "<span>The Big Bang Burger Bar.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/238df88c-6646-471d-82b5-00aca043bb15.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/eb7efcbf-3dad-49b4-be11-088d16235ee7.json",
            "type": "music",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/bd17ff19-2853-4089-a828-41d3c10b9e1c.json",
            "type": "organization",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/0b2f2d61-b784-4913-ae42-65460783667c.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Fashion axe ramps marfa chambray farm-to-table.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/b14570b7-86d6-4ada-a3ae-b781faa3c278.json",
            "type": "writing",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dd8919c7-1ad6-47c5-b8b5-42b89f7e12b4.json",
      "date": "1958-09-10T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c84d92ea-c3cc-4d06-80a8-1a70fce0520e.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1924-1997). Swag mustache disrupt craft beer.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/22c9efe2-591a-4635-8e0c-033b6ef3429e.json",
          "type": "place",
          "label": "Boston",
          "description": "<span>Boston.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/d62f7c25-5451-46a1-999c-7ceecd4b1f27.json",
            "type": "music",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/e2a8c33a-0ebf-4a6c-907d-670c93ab7d80.json",
            "type": "place",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/556831d6-3a63-488f-b53b-ad72c911b6f3.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/9ef68548-b69a-4e6a-963b-6067d3c53129.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/f7429001-55dc-4b00-b61c-88a02e588362.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/950c3918-5cbb-47b4-ab7c-478044cf62b8.json",
            "type": "writing",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/4a0bd011-1666-45ea-bc20-4d8f368d7607.json",
            "type": "writing",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5d9eee56-c224-4e7c-8aac-f31231b128c2.json",
      "date": "1958-12-29T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/6add163d-8bd5-4d69-82ec-6c04fcfbc116.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1901-1983). Irony humblebrag bespoke muggle magic artisan yolo.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/0feeb745-d335-4cd9-8d12-77016692c7bf.json",
          "type": "place",
          "label": "North West Ripple",
          "description": "<span>North West Ripple.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/58300221-97a4-49ee-b129-55823f460e32.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/93409834-8c60-4b37-b87a-207711da766e.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/8b73cb8f-9d2b-41d2-9e49-a4e817f5e86c.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/fbdf4223-2be2-4898-92bf-560cebbe964b.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/c2060f32-337d-4e9d-afec-2b91e9991aed.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/23c1ed24-c548-42bf-9df7-b957df5897a4.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/6a11b822-c8b7-478b-886f-a5ea55e85df4.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Pour-over asymmetrical microdosing butcher.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/9ee921ee-5cc9-4229-aa6e-2fb1addb8079.json",
      "date": "1960-05-25T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4687f7e6-be59-4426-9d61-8cc49191271c.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1902-1985). Messenger bag normcore craft beer tilde bicycle rights keytar locavore.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/05d0b3fc-7760-4097-8352-8c8519c3e4c8.json",
          "type": "place",
          "label": "Islington",
          "description": "<span>Islington.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/12c9819f-64ae-4275-8da0-9dcb08eb8da1.json",
            "type": "attendance",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/25d8cdec-dbf5-4651-8d76-a4a427f02b59.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/dfab63d0-9352-4bdf-8a2d-d0f53a9c7582.json",
            "type": "production",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/a72f3da0-2a18-4274-ad4b-8f4429125326.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6ea9a6bd-b2a3-4622-8ba2-912d240914e2.json",
      "date": "1960-06-02T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4c5050a1-a387-424e-bd6e-7d981bb917b9.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1916-1987). Hammock food truck banh mi tacos kickstarter waistcoat.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/5bc8a965-c47f-444c-a863-4ac1ac5c6fb8.json",
          "type": "place",
          "label": "Evildrome Boozarama",
          "description": "<span>Evildrome Boozarama.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/794c6809-18b8-4533-82be-366230002ead.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/64f3a6ee-2302-44ac-8c66-8eff8f6a0f71.json",
            "type": "attendance",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/3c98d734-1352-43fc-8253-2e49ddad427f.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Raw denim wayfarers typewriter pork belly hammock occupy everyday kogi.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/d2d89ec3-e9ff-45e6-b8be-b63309f460df.json",
            "type": "place",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/c5b2c86d-0995-4655-bdfe-d347621bd5a0.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/a627a4d1-4678-47e0-9782-5ab3d2e02a4d.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Ethical phlogiston portland heirloom put a bird on it narwhal hashtag bitters.</span>"
          },
          {
            "id": "http://example.org/entities/a576c0c5-1776-4720-894a-3aa6c015dc26.json",
            "type": "work_of_art",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus, Letterpress photo booth etsy phlogiston fingerstache.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/64abfdc5-477b-474d-ad3e-3a6b353e2776.json",
      "date": "1961-01-02T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c9f67f9c-55f6-498a-91b8-112984d18df5.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1918-1989). Banh mi ugh sriracha pop-up vinyl microdosing food truck farm-to-table.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/85f305a9-a085-4b11-9b6d-4aed8e86d68a.json",
          "type": "place",
          "label": "Cathedral of Chalesm",
          "description": "<span>Cathedral of Chalesm.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/f30da510-1b4e-42bd-9125-3a3450cd6303.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/2aa81fb8-8fa2-40d5-b265-d9f809be7898.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/32697b37-c542-4efd-a754-2386d7e3d242.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/5621fd34-d836-421a-942d-68bc77c3e275.json",
            "type": "production",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/f3ac6177-b336-459e-aebf-c8891cf32d9d.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/90b4e4f0-c046-4cde-8ca9-3ae29e491f98.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/95973fae-6dbc-424a-b195-39781bd2f370.json",
      "date": "1961-01-30T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/b59287a0-235f-4260-a8dd-594ef8aced87.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1901-1998). Occupy tousled retro 8-bit you probably haven't heard of them sustainable.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/815d7fb9-4c42-46f7-a021-ff8ee8086087.json",
          "type": "place",
          "label": "Islington",
          "description": "<span>Islington.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/26f6acfb-50cd-434d-b8f7-69b023be271e.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/e72e1588-b253-4394-87f4-70b343484967.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/1c8b1177-c2c8-4abf-9815-d92e7751d0b5.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/a210ed8f-2614-4a00-9ea6-6a0f7c41e6c7.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e1852bfd-a653-43b1-bd2a-6dbf7fa105e0.json",
      "date": "1961-02-07T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/0ea48672-0936-440b-89c5-e5b255714f09.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1916-1970). Plaid iphone shabby chic banjo readymade.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/cf625271-5eda-473d-a1f6-2fbb9f81c8e5.json",
          "type": "place",
          "label": "Horsehead Nebula",
          "description": "<span>Horsehead Nebula.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/9e465bd8-ad66-4bfa-9556-08613fb381f8.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/d073a6fc-c978-4243-86dd-c509cb611254.json",
            "type": "music",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/590ea104-6707-43ad-8773-eeeefe09c32a.json",
            "type": "organization",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/a4f8e16d-0afa-4b13-82a9-0e9e5ec955c0.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/e9cd73de-9c53-4865-9af1-3b21ef0eed53.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Paleo wes anderson austin sriracha.</span>"
          },
          {
            "id": "http://example.org/entities/23a9b534-3e0a-4da5-8b9a-c057aec613ba.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Leggings sartorial wayfarers pork belly fingerstache kombucha flexitarian.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/21b6d9cb-5b31-4212-94e8-dfaa0d780662.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/e42bdf8b-89fe-466b-b6c4-609f4415749e.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/d3bc5e9c-de48-43de-9715-8458106e51b3.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/0a54545b-6b26-4183-9d4a-98b277d0f7c8.json",
            "type": "translating",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/00fd59db-2846-42f0-864a-d7b94fd55eed.json",
      "date": "1961-04-10T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/8c50bce4-3166-4609-9360-309a8d7bfc1c.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1902-1991). Jean shorts retro yolo ethical bespoke sartorial bicycle rights.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/ee218f9a-e93b-4a3a-b094-0e4e032ec55b.json",
          "type": "place",
          "label": "Total Perspective Vortex",
          "description": "<span>Total Perspective Vortex.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/71d9018e-1bd6-46e5-9d86-ee8bffc56cf7.json",
            "type": "attendance",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9b93bf27-aa2a-4908-ac63-c5737f0c28b3.json",
            "type": "person",
            "label": "The Dude",
            "description": "<span>The Dude. Bushwick yr pop-up twee kickstarter shoreditch park.</span>"
          },
          {
            "id": "http://example.org/entities/9bd3aa3b-5c56-4723-b48c-b9dc6f10b3fe.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Shabby chic brunch neutra portland post-ironic.</span>"
          },
          {
            "id": "http://example.org/entities/eaae2705-0991-4665-9c74-db7a9a618a40.json",
            "type": "person",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana. Butcher post-ironic kinfolk vhs yolo health meditation.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/840f434e-9642-4dee-a536-384a130fafe2.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/24b5c74a-cb1c-4948-aecf-a89b4024d107.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/2831fb71-bf92-4a90-ae75-7fbf2c235139.json",
            "type": "reading",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/130f1087-9b5b-4fb8-8ed7-53c57b358635.json",
      "date": "1961-10-07T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/8cd34f30-229b-42b5-848d-fda41b885abd.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1918-1983). Seitan kombucha fingerstache echo 90's.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/b0ae15fc-9892-4db2-9b81-08d4e9d58f9e.json",
          "type": "place",
          "label": "Rickmansworth",
          "description": "<span>Rickmansworth.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/557f2f3b-a0b7-4fed-bcd4-bc0ca93ab71e.json",
            "type": "organization",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/b103f852-9ce8-4316-9c41-0c1c7548ad55.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Lumbersexual hella authentic plaid.</span>"
          },
          {
            "id": "http://example.org/entities/0e113540-5318-40a7-a5bb-95b9a9d8a167.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Locavore single-origin coffee sartorial 8-bit sustainable readymade.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/05e74f38-4901-4529-a835-18e97a4e9b19.json",
            "type": "place",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/20f35411-71ce-4352-babd-8cf5b55ebd8d.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/1389362c-e042-4778-bbe6-cf89e321d047.json",
            "type": "public_event",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/bd1c86be-cf22-42cb-a417-542b3dfa6bb9.json",
            "type": "public_event",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/2731372b-9b86-4304-8fa7-261076878f7a.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/ffa0b49a-d2af-4906-a667-2268bf873c77.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/afad4114-2f9c-4c23-8f57-44dcc31007f4.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Shabby chic blue bottle truffaut yr pabst.</span>"
          },
          {
            "id": "http://example.org/entities/294343a7-c8b2-41a9-afa1-c063149420a2.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Phlogiston mlkshk meditation franzen carry banh mi bitters yr kogi.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d97b08a1-3862-43eb-83a0-53e183e198e5.json",
      "date": "1962-01-06T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/25f31e58-3531-4d5c-9e43-e8b7f659d65f.json",
          "type": "person",
          "label": "The Dude",
          "description": "<span>The Dude (1909-1995). Marfa 90's chartreuse muggle magic disrupt readymade.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/8f312f42-4aad-4377-87d8-4afff8e0d8ae.json",
          "type": "place",
          "label": "Xaxis",
          "description": "<span>Xaxis.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/3c3a8c19-fa6f-40ac-9e7a-3fb0ca53d082.json",
            "type": "attendance",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          },
          {
            "id": "http://example.org/entities/8d14d898-d145-411b-aa7b-70bc7e690d75.json",
            "type": "attendance",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/ce8db647-edf7-49b7-849f-6016a1146b5b.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/06b90781-cb0b-44b2-b032-68ea48835f7a.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Brooklyn 8-bit poutine fingerstache goth blue bottle tofu pop-up.</span>"
          },
          {
            "id": "http://example.org/entities/a031692a-d86a-4a0f-a9c4-73763b690011.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Deep v xoxo organic williamsburg cronut single-origin coffee neutra.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/91377815-ca82-470d-b59b-97223e8c22a6.json",
            "type": "production",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/f1465167-76e6-4c87-8eff-9506d6bf6599.json",
            "type": "publication",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/4cdb7279-7734-4f0d-89fe-0726abe18278.json",
            "type": "work_of_art",
            "label": "Brandt",
            "description": "<span>Brandt, Umami brunch tofu cronut literally typewriter loko yr semiotics.</span>"
          },
          {
            "id": "http://example.org/entities/7d593883-0afd-4c8d-aa73-5cadc5d3b785.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Brooklyn twee food truck quinoa sartorial yuccie mixtape.</span>"
          },
          {
            "id": "http://example.org/entities/44676576-f1f4-4979-b8df-1b5dc5d55e35.json",
            "type": "work_of_art",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak, Dreamcatcher banh mi chia ugh aesthetic.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/c54a51ed-d214-4953-a7f1-f5edfdda94f4.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/cd950a70-2cb6-45e1-b71f-1e1c4114e348.json",
      "date": "1962-02-06T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/06a1c339-5d79-4473-8c77-d9df7e99c01f.json",
          "type": "person",
          "label": "The Big Lebowski",
          "description": "<span>The Big Lebowski (1903-1990). Pour-over yuccie normcore cleanse.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/2b537e6c-66df-4706-a252-509675b47ffa.json",
          "type": "place",
          "label": "Guildford",
          "description": "<span>Guildford.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/aa5f21d6-40d0-48e7-8951-1462d2809bc4.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/9483b87a-99f6-4e19-a423-136fc18cb3a3.json",
            "type": "place",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/c8eb0091-2564-4904-8fe7-2d87024e1879.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/23553801-203d-4c6e-86dc-97faa8318b61.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/12688288-11e8-4a22-97ca-cf27cf538167.json",
            "type": "reading",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/0d112551-3b3e-4917-b51c-fe48d81ff99a.json",
            "type": "writing",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/659cedaf-d3b3-455e-b689-64bd8ac3ba4a.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a6527213-0bf3-4521-b9c6-57490bb41bbf.json",
      "date": "1962-02-18T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/078919f0-6b56-4782-a073-0043964404f0.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1909-1975). Brunch five dollar toast hoodie phlogiston.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/be5be238-33b7-4de7-bf66-80828aa2859d.json",
          "type": "place",
          "label": "Bournemouth",
          "description": "<span>Bournemouth.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/d1fb473f-36c8-4e36-9d8e-57cdd5d9d271.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/1b08fa40-ab79-48d9-84dd-3810784af83c.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Brunch viral pbr&b health ugh chicharrones vhs.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/7c15b6bf-c37f-4550-96e3-7b6c8358b99a.json",
            "type": "place",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/0d9ce13c-bdfe-4326-9002-6d6bf5cd6041.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a6f3ec9d-9efc-4272-a211-3e3d27da5969.json",
      "date": "1963-02-11T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/4502233a-79ec-49cf-9449-5a3157c08b1f.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1921-1974). Blog synth health selvage direct trade freegan vinyl.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/2302287e-4673-474f-9c4e-f7a59c1c51f1.json",
          "type": "place",
          "label": "Slim's Throat Emporium",
          "description": "<span>Slim's Throat Emporium.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/6fd3f354-936c-4169-b607-c353153234c5.json",
            "type": "attendance",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/baee9e87-5d20-4a87-856c-ad0968633f0d.json",
            "type": "person",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski. Swag gentrify chicharrones 90's offal tousled.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/c6264539-06cf-4259-8b9d-9b9463b7e7fe.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/fc233ac2-8465-4f97-bb10-360432570862.json",
            "type": "production",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/5c14342f-9c10-4929-a87c-479892f90d6e.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/c07a95db-17f2-4ef8-9f19-62ec77cf7665.json",
            "type": "publication",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/28e6557e-1582-4d23-b21a-853c8adfff8a.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Neutra godard pour-over mustache.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/d8c3d522-741e-4af6-810b-0bd3576c36dd.json",
      "date": "1963-04-23T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/c4d5fdf5-3aa4-47e5-b7e8-8dda49832d33.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1927-1995). +1 helvetica poutine keffiyeh gluten-free loko stumptown paleo cred.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/a4af4767-0b0a-4e20-bbdb-b7dfc3aacbe0.json",
          "type": "place",
          "label": "Croydon",
          "description": "<span>Croydon.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/5b0cd9bd-a2d8-4dd7-9a3c-a635a933fb91.json",
            "type": "music",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/21ac4ca3-9aed-444f-bc14-db17ef84b6fa.json",
            "type": "person",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak. Venmo wes anderson crucifix neutra.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/ed448a73-d531-4337-9e64-fdf80bbba3c1.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/8a0e077b-0ac6-452a-b4d1-9a6179bb4133.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/cd429568-3c4c-46ee-976f-55ee9800151b.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/cc37338a-ac52-49ba-b8a0-8d6733679037.json",
            "type": "translating",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          },
          {
            "id": "http://example.org/entities/036599d6-f187-415c-b7aa-d62b18e8ddef.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/5d8670e5-f700-4832-8154-2c1ab1204ccc.json",
            "type": "work_of_art",
            "label": "The Dude",
            "description": "<span>The Dude, Locavore twee kitsch slow-carb mixtape.</span>"
          },
          {
            "id": "http://example.org/entities/2aa2e63f-ea69-4d0d-befb-cac98d5ab050.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Hashtag irony bicycle rights green juice vinyl salvia drinking.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/036c042d-ef02-4246-8274-c7dce86a5d16.json",
      "date": "1963-10-17T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/5747e419-4d1d-473f-836b-b5662563e1cb.json",
          "type": "person",
          "label": "Jackie Treehorn",
          "description": "<span>Jackie Treehorn (1924-1991). Drinking asymmetrical meditation scenester tumblr.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/fc6db2ea-8769-4765-be16-9144b1f43021.json",
          "type": "place",
          "label": "Xaxis",
          "description": "<span>Xaxis.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/0e1d9d43-303f-48ec-9f80-e55639ffdf0f.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/54502886-929e-4031-b0dc-77d27c89a4b1.json",
            "type": "organization",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/cc49e05b-6ade-42f3-9cdb-96a82f137891.json",
            "type": "public_event",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          },
          {
            "id": "http://example.org/entities/b01dbc6d-835c-4124-928c-538b3b04c139.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/ef91f797-3dac-40f5-85b2-501b6d432505.json",
            "type": "publication",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2775aa02-99f0-4457-8295-cbe1671f1275.json",
      "date": "1963-11-12T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/9171815b-9f46-47c6-88cb-ebf201ff1777.json",
          "type": "person",
          "label": "Maude Lebowski",
          "description": "<span>Maude Lebowski (1917-1984). Distillery pinterest next level ugh mixtape skateboard leggings dreamcatcher.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e9860f91-7373-41d6-a460-e9a8f4364747.json",
          "type": "place",
          "label": "Rickmansworth",
          "description": "<span>Rickmansworth.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/b91be496-78ed-4d14-a1e7-54b2e6a834f1.json",
            "type": "attendance",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/366a4cc1-fe6e-4b6a-b781-2156942a5c48.json",
            "type": "attendance",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          },
          {
            "id": "http://example.org/entities/f1329042-ab0b-4ba7-bed6-1c04e8a05be1.json",
            "type": "attendance",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/a68902d4-d67c-4a8c-ae21-0141f0515a49.json",
            "type": "person",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski. Bitters lo-fi ennui brunch carry retro pour-over shoreditch microdosing.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/433bb160-0fb7-4324-89f1-74e0b98816c5.json",
            "type": "public_event",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/8c93d0a8-cdeb-4462-ab82-6fc2f5501bcc.json",
            "type": "publication",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/718127c8-8f2e-4fcb-8939-9abf44693b08.json",
            "type": "translating",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/acbb934f-0019-4581-9c4a-9b36745873bf.json",
            "type": "translating",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/fa6be049-6828-4ac3-b049-da44ac140c05.json",
            "type": "translating",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/af3ee5e3-fcef-491a-941e-5da0d0c51023.json",
            "type": "work_of_art",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana, Tattooed polaroid artisan carry.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/0d898150-5914-42ce-9278-4784ac36b05a.json",
            "type": "writing",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/52d5458d-d8c9-4056-95ef-4bba06d5a978.json",
      "date": "1963-11-13T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/679b169b-c29e-4888-ae89-8ac4cc8762c3.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1902-1982). Chicharrones before they sold out wes anderson plaid synth dreamcatcher neutra cronut.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/e623ae1d-ca26-4423-b0d6-d5121afde431.json",
          "type": "place",
          "label": "Sector XXXZ5QZX",
          "description": "<span>Sector XXXZ5QZX.</span>"
        }
      ],
      "mentions": {
        "musics": [
          {
            "id": "http://example.org/entities/45177046-8cbb-47d9-8003-879dc416a4f0.json",
            "type": "music",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/6a766925-4f37-45f4-98c0-23b9089e4e7b.json",
            "type": "music",
            "label": "Walter Sobchak",
            "description": "<span>Walter Sobchak.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/36c7ca59-5128-4813-91c1-886040cfede1.json",
            "type": "organization",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski.</span>"
          },
          {
            "id": "http://example.org/entities/6d880ad8-cd78-42be-b2f7-b62f598ff801.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/598cf7b5-a3b9-4a03-a1b1-cf90a65e948e.json",
            "type": "organization",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/9d3fda58-3df0-4d97-aeea-6d19fc2fc9cf.json",
            "type": "person",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus. Disrupt green juice diy heirloom keytar tote bag crucifix.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/d49b71b7-b7ca-4efb-a7c2-91aca3119bbe.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          },
          {
            "id": "http://example.org/entities/3b1fa1f1-e84d-46f4-a96a-3b3ca303fa7d.json",
            "type": "public_event",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/77ca0f5b-9316-4f7a-92c1-c54e64f0f8dd.json",
            "type": "work_of_art",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski, Meggings asymmetrical art party try-hard freegan poutine craft beer.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/4a6610ea-06d8-4af0-bee1-ffd44497a572.json",
            "type": "writing",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/da080c2a-fa7d-4aca-948a-c247cd354d18.json",
      "date": "1964-01-30T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/a4aa1f99-7123-431d-8664-efab27b3a357.json",
          "type": "person",
          "label": "Walter Sobchak",
          "description": "<span>Walter Sobchak (1928-1991). Chartreuse food truck crucifix art party mlkshk cold-pressed keytar fashion axe.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/cc6f26d0-f02d-4390-9e71-a1be02bb93a1.json",
          "type": "place",
          "label": "Evildrome Boozarama",
          "description": "<span>Evildrome Boozarama.</span>"
        }
      ],
      "mentions": {
        "public_events": [
          {
            "id": "http://example.org/entities/951cf940-5f15-44fa-97e3-e819da6bb430.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "publications": [
          {
            "id": "http://example.org/entities/a48f9d14-af42-4d5b-83ac-50a4c145a0e4.json",
            "type": "publication",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/b682f940-1d39-49d9-ba50-8e727b177e5f.json",
            "type": "reading",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/7c657d49-ccb0-4a33-b7d2-7e5127942c4a.json",
            "type": "translating",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/edbd6d50-f16f-4a32-ade0-8de824554f9b.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, +1 narwhal shabby chic forage squid.</span>"
          },
          {
            "id": "http://example.org/entities/d0e2459d-c107-4d91-8868-d6d590500e86.json",
            "type": "work_of_art",
            "label": "The Big Lebowski",
            "description": "<span>The Big Lebowski, Pour-over williamsburg waistcoat selvage taxidermy crucifix yr pickled tousled.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/349e27b6-c927-4d51-abb6-2386202632a3.json",
      "date": "1964-04-09T00:00:00.000-05:00",
      "recipients": [
        {
          "id": "http://example.org/entities/071ead68-203a-40ee-aaab-d443b38c87d6.json",
          "type": "person",
          "label": "Bunny Lebowski",
          "description": "<span>Bunny Lebowski (1900-1984). Lumbersexual direct trade slow-carb intelligentsia knausgaard.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/9468437f-9f8e-4569-946c-ddd97e0eced5.json",
          "type": "place",
          "label": "Café Lou",
          "description": "<span>Café Lou.</span>"
        }
      ],
      "mentions": {
        "organizations": [
          {
            "id": "http://example.org/entities/b5fbdc80-1028-4f7d-baa6-55ee83a1e3b2.json",
            "type": "organization",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ],
        "people": [
          {
            "id": "http://example.org/entities/6e5b7372-841b-47dd-91ae-12ac0c8f7e16.json",
            "type": "person",
            "label": "Brandt",
            "description": "<span>Brandt. Etsy gluten-free vhs whatever thundercats fixie church-key tumblr.</span>"
          }
        ],
        "productions": [
          {
            "id": "http://example.org/entities/92c3de5f-d938-4b9a-a611-79acc246d574.json",
            "type": "production",
            "label": "Donny",
            "description": "<span>Donny.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/a8f63211-7f7e-43e6-8db5-c79fffcebd1c.json",
            "type": "public_event",
            "label": "Bunny Lebowski",
            "description": "<span>Bunny Lebowski.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/75961558-04d2-4bad-ad1c-2302a0cd0ce2.json",
            "type": "reading",
            "label": "Maude Lebowski",
            "description": "<span>Maude Lebowski.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/666765e0-225c-40d8-aecb-1807d2c9107f.json",
      "date": "1964-05-20T00:00:00.000-04:00",
      "recipients": [
        {
          "id": "http://example.org/entities/d0ba05a9-5bb3-4a91-af79-46f416bdc5a9.json",
          "type": "person",
          "label": "Brandt",
          "description": "<span>Brandt (1914-1979). Waistcoat five dollar toast listicle gluten-free ennui.</span>"
        }
      ],
      "destinations": [
        {
          "id": "http://example.org/entities/91306dab-217e-40f7-8fe3-5421634d100c.json",
          "type": "place",
          "label": "Preliumtarn",
          "description": "<span>Preliumtarn.</span>"
        }
      ],
      "mentions": {
        "attendances": [
          {
            "id": "http://example.org/entities/717befdb-8be5-408b-8e41-732edeaa9ff7.json",
            "type": "attendance",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "musics": [
          {
            "id": "http://example.org/entities/1a458619-da93-4a37-b354-9f92d45831fc.json",
            "type": "music",
            "label": "Brandt",
            "description": "<span>Brandt.</span>"
          }
        ],
        "organizations": [
          {
            "id": "http://example.org/entities/ab8c62a9-2e49-40fc-9dd0-15e52b934605.json",
            "type": "organization",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "places": [
          {
            "id": "http://example.org/entities/04f681a5-28af-4021-ac07-19d06650416c.json",
            "type": "place",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          },
          {
            "id": "http://example.org/entities/a8c3e9d4-ace7-4006-8f6c-5cc170e90211.json",
            "type": "place",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ],
        "public_events": [
          {
            "id": "http://example.org/entities/0056d749-7aee-436d-9145-f57009648ba0.json",
            "type": "public_event",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          }
        ],
        "readings": [
          {
            "id": "http://example.org/entities/26fd9c64-df6d-4c4b-840b-3e323de6d438.json",
            "type": "reading",
            "label": "Karl Hungus",
            "description": "<span>Karl Hungus.</span>"
          }
        ],
        "translatings": [
          {
            "id": "http://example.org/entities/988c9bdc-7df8-424b-8c5a-90f708dcf880.json",
            "type": "translating",
            "label": "Jesus Quintana",
            "description": "<span>Jesus Quintana.</span>"
          }
        ],
        "work_of_arts": [
          {
            "id": "http://example.org/entities/51e22d96-e039-48e0-9a8f-a0d517eef05d.json",
            "type": "work_of_art",
            "label": "Donny",
            "description": "<span>Donny, Forage kogi fixie knausgaard art party bespoke skateboard actually paleo.</span>"
          }
        ],
        "writings": [
          {
            "id": "http://example.org/entities/05f02976-0367-4b76-938b-d66f3998502b.json",
            "type": "writing",
            "label": "The Dude",
            "description": "<span>The Dude.</span>"
          },
          {
            "id": "http://example.org/entities/05657913-3a10-43b8-9e18-87dc696ba581.json",
            "type": "writing",
            "label": "Jackie Treehorn",
            "description": "<span>Jackie Treehorn.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 28,
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
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 5
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
          "doc_count": 3
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 3
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 28,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "South Florida Academy",
          "doc_count": 14
        },
        {
          "key": "Jones Academy",
          "doc_count": 12
        },
        {
          "key": "Northern Washington Institute",
          "doc_count": 12
        },
        {
          "key": "West Heathcote",
          "doc_count": 9
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 28,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "french",
          "doc_count": 11
        },
        {
          "key": "english",
          "doc_count": 7
        },
        {
          "key": "italian",
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
    "page_count": 2,
    "total_count": 28,
    "links": {
      "self": "http://example.org/letters?page=1&q=brandt",
      "last": "http://example.org/letters?page=2&q=brandt",
      "next": "http://example.org/letters?page=2&q=brandt"
    }
  }
}</pre>
