# Entities API



## GET /entities?search=:label&amp;fields=label&amp;type=person - Person by Label

### GET /entities

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=Hyatt%2C+Eric&amp;type=person</pre>

#### Query Parameters

<pre>search: Hyatt, Eric
type: person</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=Hyatt%2C+Eric&amp;type=person&gt;; rel=&#39;self&#39;
X-Total-Count: 4
Content-Type: application/json; charset=utf-8
ETag: W/&quot;decb8b7f10f2a70e8b466bbe952ec513&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ce48237e-a365-41d0-a794-c526682ea65e
X-Runtime: 2.559356
Vary: Origin
Content-Length: 1785</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/a6091db3-10f4-4ed0-a70b-9b2ba8cf0fa8",
      "label": "Hyatt, Eric",
      "type": "person",
      "short_display": [

      ],
      "description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
      "clean_label": "Hyatt, Eric",
      "clean_description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't."
    },
    {
      "id": "http://example.org/entities/79d6c2a4-4993-4abb-a7d3-fc40e4da8461",
      "label": "Keeling, Erin",
      "type": "person",
      "short_display": [

      ],
      "description": "I think you ought to know I'm feeling very depressed.",
      "clean_label": "Keeling, Erin",
      "clean_description": "I think you ought to know I'm feeling very depressed."
    },
    {
      "id": "http://example.org/entities/34901af7-4e1b-4210-b719-65a0bc949874",
      "label": "Price, Donte",
      "type": "person",
      "short_display": [

      ],
      "description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "clean_label": "Price, Donte",
      "clean_description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me."
    },
    {
      "id": "http://example.org/entities/4c4466b4-68fc-4828-a9ea-6896f55248c8",
      "label": "Reichert, Estela",
      "type": "person",
      "short_display": [

      ],
      "description": "I think you ought to know I'm feeling very depressed.",
      "clean_label": "Reichert, Estela",
      "clean_description": "I think you ought to know I'm feeling very depressed."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "person",
          "doc_count": 4
        },
        {
          "key": "place",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 4,
    "links": {
      "self": "http://example.org/entities?page=1&search=Hyatt%2C+Eric&type=person"
    }
  }
}</pre>
