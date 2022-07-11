# Letters API

## GET /letters?recipients=:recipient_labels - Recipients search

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

<pre>GET /letters?recipients=%3Ci%3EHomer+Simpson%3C%2Fi%3E%2CMiracle+Max</pre>

#### Query Parameters

<pre>recipients: &lt;i&gt;Homer Simpson&lt;/i&gt;,Miracle Max</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;recipients=%3Ci%3EHomer+Simpson%3C%2Fi%3E%2CMiracle+Max&gt;; rel=&#39;self&#39;
X-Total-Count: 3
Content-Type: application/json; charset=utf-8
ETag: W/&quot;16fe873c91c8b381ac42996f0bf4c101&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8bcaaa8e-024b-4f4b-8b5c-20a27a30bcf4
X-Runtime: 2.210774
Vary: Origin
Content-Length: 7149</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/e0a7f70d-3861-4956-8269-a2b307c6a7ae",
      "date": "1958-11-04T00:00:00.000-05:00",
      "label": "04 November 1958 - Miracle Max",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6006fceb-b6ce-4e69-8834-4b9c23737b1f",
            "display": "<span>lo-fi, The Thing, New Jayna, 29 October 1928.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9cd6534b-8831-4091-adc2-2eda47c39ad5",
            "display": "<span>PBR&B, <i>Eternal Sunshine of the Spotless Mind</i>, South Vanstad, 12 October 1924.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/b97179f2-a99f-4f9a-bfeb-93ca705207a9",
            "display": "<span>distillery, <i>Alien</i>, Port Cordell, 13 April 1972.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/32a05bbc-79c1-4133-9ebd-db3d02bde69d",
            "display": "<span>Belgium.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/520be7aa-c651-4931-b6dd-848e1431a9ea",
            "display": "<span>The Big Lebowski, Ned Gerblansky, The Allitnils Authentic chartreuse slow-carb umami gluten-free listicle celiac kogi.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/90076906-5333-42b3-ba2f-a35591dfb9c5",
            "display": "<span>Bunny Lebowski, Ned Gerblansky, Hotblack Desiato Muggle magic fixie etsy pitchfork.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/42da571b-2e63-497b-af8e-e845cc96506b",
            "display": "<span>Erinn Rempel Sr., Mr Standfast, Manchester University Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/a72035c4-96ff-4d60-9322-f92ad3db67a5",
            "display": "<span>Sunday Dietrich, <i>The Curious Incident of the Dog in the Night-Time</i>, ECW Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/c00d4872-ba68-4ebe-a074-5023b3e4e4d2",
            "display": "<span>Marybeth Adams II, <i>Françoise Sagan</i>, University of Nebraska Press.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/415fc619-4137-44f2-97e8-609f524eb7da",
      "date": "1964-02-12T00:00:00.000-05:00",
      "label": "12 February 1964 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>Islington</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f7d6710f-ade8-41a0-ac54-d42dce8cd114",
            "display": "<span>+1, V for Vendetta, Conradton, 28 July 1954.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/42ec3cf7-5dc0-4894-92c4-3343aa02adbf",
            "display": "<span>Prostetnic Vogon Kwaltz, <i>Thieves In The Temple</i> [Kim Chi].</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/d6ca47e0-47a5-47a4-922f-15281bdd670c",
            "display": "<span>Elissa Trantow VM, The Heart Is a Lonely Hunter, Nauka.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/4bd5782a-6efc-4095-abb0-415de1f07895",
            "display": "<span>The Heart Is a Lonely Hunter.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/ab27befb-d66c-4582-8b53-923e53dc66fc",
            "display": "<span><i>The Other Side of Silence</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/bdd73df6-3ba0-4915-a497-bb66b05c24e2",
            "display": "<span>Precious Bane.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/367c660e-c7fe-4ad4-9afe-5e503cc2b667",
      "date": "1965-01-27T00:00:00.000-05:00",
      "label": "27 January 1965 - <i>Miracle Max</i>",
      "recipients": [
        "Miracle Max"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/48ab3574-a1d1-4b9e-a206-90fe9a542000",
            "display": "<span>Allosimanius Syneca, Yara Sofia.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/7108b671-adfd-4ef5-a4f7-b92c81626143",
            "display": "<span>Kakrafoon Kappa, Milk.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/2051b4f5-8a33-469f-8440-b8ba68aa8967",
            "display": "<span>Gemini (1958-07-17).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/da2c2b6e-8d01-451f-97ce-9117325ee542",
            "display": "<span>Apollo (1942-02-08).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/1fddb687-6de7-48ba-b4f5-cd08690a8463",
            "display": "<span>The Dude, Ned Gerblansky, Rob McKenna Small batch umami shoreditch craft beer single-origin coffee leggings tumblr cornhole.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8db8692d-5522-49e6-8d81-3a57a1405ea3",
            "display": "<span>Humma Kavula, Thieves In The Temple, Letterpress <i>meggings thundercats etsy irony pop-up drinking taxidermy blue</i> bottle.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b010ea63-3f3f-49c6-b4ca-061e2734e94d",
            "display": "<span>Reg Nullify, <i>17 Days</i>, Iphone drinking pabst brunch letterpress narwhal kinfolk fashion axe.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/cece86c2-2155-4d8c-a7fb-5a07e488f02f",
            "display": "<span>Oolon Colluphid, When You Were Mine, Ethical chillwave cornhole viral venmo phlogiston wolf.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 3,
      "buckets": [
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 0
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
          "doc_count": 1
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
      "doc_count": 3,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Leffler University",
          "doc_count": 2
        },
        {
          "key": "East Leannon",
          "doc_count": 1
        },
        {
          "key": "North Emard Academy",
          "doc_count": 1
        },
        {
          "key": "The Heathcote Institute",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 3,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 1
        },
        {
          "key": "french",
          "doc_count": 1
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
    "total_count": 3,
    "links": {
      "self": "http://example.org/letters?page=1&recipients=%3Ci%3EHomer+Simpson%3C%2Fi%3E%2CMiracle+Max"
    }
  }
}</pre>
