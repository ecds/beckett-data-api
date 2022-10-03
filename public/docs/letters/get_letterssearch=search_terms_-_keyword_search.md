# Letters API

## GET /letters?search=:search_terms - Keyword search

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of paginated letters response. | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels. | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels. | false | null
| senders | Comma seperated list of sender labels. | false | null
| repositories | Comma seperated list of repository labels. | false | null
| languages | Case insensitive comma seperated list of languages. Options are English, French, German, and Italian. | false | null
| volumes | Comma sperated list of volumes. Options are 0, 1, 2, 3, and 4. Zero means no volume. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?search=ross</pre>

#### Query Parameters

<pre>search: ross</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;search=ross&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;391e9fb923934640c5532bac74c16780&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c0f94c0e-b684-4692-a321-51b5aa30dd6e
X-Runtime: 2.880190
Vary: Origin
Content-Length: 4919</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "letters": [
    {
      "id": "http://example.org/letters/4300bf6d-a809-4205-8716-6acf83f47247",
      "date": "1950-07-16T00:00:00.000-04:00",
      "label": "16 July 1950 - Powlowski, Ross",
      "language": "german",
      "volume": 4,
      "recipients": [
        "Powlowski, Ross"
      ],
      "destinations": [
        "Western Spiral Arm"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/76d3160c-b3e0-4dd0-aae5-60841e7231af",
            "display": "<section><p><strong>Composer</strong> Bowerick Wowbagger</p>\n<p><strong>Title</strong> Screwdriver</p>\n<p><strong>Description</strong> Vhs <i>mumblecore keytar art party pinterest ennui</i> flannel.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e8d37e28-59ba-4e58-8974-a073976c7ba5",
            "display": "<section><p><strong>Composer</strong> Zaphod Beeblebrox</p>\n<p><strong>Title</strong> Darling Nikki</p>\n<p><strong>Description</strong> Food <i>truck artisan meggings pork belly meh next level yr raw denim</i> tacos.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/ab98f372-324f-4374-a271-2c4d02f3c4d7",
            "display": "<section><p><strong>Kakrafoon Kappa</strong></p>\n<p>Food <i>truck migas keytar</i> loko.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/7ebc062d-f337-477d-90dc-1f929d83aa93",
            "display": "<section><p><strong>Stavromula Beta</strong></p>\n<p>Bitters venmo tryhard lomo vinegar green juice kickstarter selvage.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/b83099bf-5d09-4e41-a5ef-f055ab0c83d8",
            "display": "<section><p><strong>Café Lou</strong></p>\n<p>Skateboard 1 tilde cronut ennui brunch before they sold out.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/845234e7-aafc-4699-b764-2285f7e11a66",
            "display": "<section><p><strong>Title</strong> Eternal Sunshine of the Spotless Mind</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Krikkit One, Sonyamouth</p>\n<p><strong>Date(s)</strong> 1963-09-22.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/53411f39-c394-4f8c-a7f1-ad5b33239fbc",
            "display": "<section><p><strong>Author</strong> Zane Kshlerin</p>\n<p><strong>Title</strong> In a Dry Season</p>\n<p><strong>Publication</strong> Felony &amp; Mayhem Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/8c7f7e4b-1c0b-4fb2-bef7-48b8c58aea38",
            "display": "<section><p><strong>Author</strong> Chantay Hickle</p>\n<p><strong>Title</strong> The Line of Beauty</p>\n<p><strong>Publication</strong> Schocken Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/336e5fab-5baf-4da8-98e2-bf4c00d1d68c",
            "display": "<section><p><strong>Author</strong> Bulah Anderson LLD</p>\n<p><strong>Title</strong> The House of Mirth</p>\n<p><strong>Publication</strong> Simon &amp; Schuster.</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 1,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 4,
          "doc_count": 1
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 1,
      "buckets": [
        {
          "key_as_string": "1950-01-01T00:00:00.000Z",
          "key": -631152000000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 1,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "South Carroll Academy",
          "doc_count": 1
        },
        {
          "key": "Western Corwin",
          "doc_count": 1
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 1,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 1,
    "links": {
      "self": "http://example.org/letters?page=1&search=ross"
    }
  }
}
~~~

