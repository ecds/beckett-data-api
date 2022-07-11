# Entities API



## GET /entities?search=:label&amp;fields=label&amp;type=person - Person by Label

### GET /entities

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=Data&amp;type=person</pre>

#### Query Parameters

<pre>search: Data
type: person</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=Data&amp;type=person&gt;; rel=&#39;self&#39;
X-Total-Count: 6
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c3df97857d10aac904f53a8cb5b7f88c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 304c0b30-596f-4506-a594-1f6418725653
X-Runtime: 10.526929
Vary: Origin
Content-Length: 4866</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "/entities/3c99c3ae-d8ce-4a35-91dc-938556024345",
      "label": "<i>Data</i>",
      "type": "person",
      "short_display": "<span><i>Data</i> (1923-1983). Irony <i>gentrify cronut try-hard disrupt park</i> knausgaard.</span>",
      "description": "Irony <i>gentrify cronut try-hard disrupt park</i> knausgaard.",
      "clean_label": "Data",
      "clean_description": "Irony gentrify cronut try-hard disrupt park knausgaard.",
      "alternate_spellings": [
        "Dida Ritz"
      ],
      "finding_aids": [
        "http://braun.io/dusty_williamson"
      ],
      "first_name": "Huey",
      "last_name": "McClure",
      "life_dates": "(1923-1983)",
      "links": [
        "http://wyman.com/fe"
      ],
      "profile": "You know, Dude, I myself dabbled in pacifism once. Not in 'Nam of course."
    },
    {
      "id": "/entities/540a32f7-3230-4eb3-a7ab-ea3453aca203",
      "label": "<i>Data</i>",
      "type": "person",
      "short_display": "<span><i>Data</i> (1906-1971). Occupy <i>viral health cleanse park photo</i> booth.</span>",
      "description": "Occupy <i>viral health cleanse park photo</i> booth.",
      "clean_label": "Data",
      "clean_description": "Occupy viral health cleanse park photo booth.",
      "alternate_spellings": [
        "Ginger Minj"
      ],
      "finding_aids": [
        "http://okeefe-stamm.biz/mel"
      ],
      "first_name": "Linwood",
      "last_name": "Farrell",
      "life_dates": "(1906-1971)",
      "links": [
        "http://ortiz.name/eugenio.rice"
      ],
      "profile": "Mind if I do a J?"
    },
    {
      "id": "/entities/5deaf864-806f-487e-95c0-04e6ff2a1605",
      "label": "<i>Data</i>",
      "type": "person",
      "short_display": "<span><i>Data</i> (1919-1990). Raw <i>denim bitters tattooed stumptown gluten-free art party</i> yuccie.</span>",
      "description": "Raw <i>denim bitters tattooed stumptown gluten-free art party</i> yuccie.",
      "clean_label": "Data",
      "clean_description": "Raw denim bitters tattooed stumptown gluten-free art party yuccie.",
      "alternate_spellings": [
        "Derrick Barry"
      ],
      "finding_aids": [
        "http://champlin-lubowitz.net/enid.heathcote"
      ],
      "first_name": "Garth",
      "last_name": "D'Amore",
      "life_dates": "(1919-1990)",
      "links": [
        "http://hansen.co/juan"
      ],
      "profile": "This aggression will not stand, man."
    },
    {
      "id": "/entities/6da23017-e1ac-4202-b55d-ed7635ebab40",
      "label": "Data",
      "type": "person",
      "short_display": "<span>Data (1907-1992). Schlitz <i>flexitarian ennui cray</i> heirloom.</span>",
      "description": "Schlitz <i>flexitarian ennui cray</i> heirloom.",
      "clean_label": "Data",
      "clean_description": "Schlitz flexitarian ennui cray heirloom.",
      "alternate_spellings": [
        "Tyra Sanchez"
      ],
      "finding_aids": [
        "http://douglas-jerde.co/herschel_jaskolski"
      ],
      "first_name": "Giovanni",
      "last_name": "Cummings",
      "life_dates": "(1907-1992)",
      "links": [
        "http://paucek.biz/jerrold_becker"
      ],
      "profile": "So then you have no frame of reference here Donny. You're like a child who wanders into the middle of a movie."
    },
    {
      "id": "/entities/ae5e36d5-8a6f-47d4-91c3-33e0d85c0fb4",
      "label": "<i>Data</i>",
      "type": "person",
      "short_display": "<span><i>Data</i> (1912-1991). Letterpress <i>goth pour-over tattooed humblebrag</i> quinoa.</span>",
      "description": "Letterpress <i>goth pour-over tattooed humblebrag</i> quinoa.",
      "clean_label": "Data",
      "clean_description": "Letterpress goth pour-over tattooed humblebrag quinoa.",
      "alternate_spellings": [
        "Milk"
      ],
      "finding_aids": [
        "http://brown.com/jan"
      ],
      "first_name": "Leanna",
      "last_name": "Cummerata",
      "life_dates": "(1912-1991)",
      "links": [
        "http://stamm.com/kelsey"
      ],
      "profile": "Yeah, well, that's just, like, your opinion, man."
    },
    {
      "id": "/entities/df3e3609-025d-47a5-bdfd-542f0d72efa0",
      "label": "Data",
      "type": "person",
      "short_display": "<span>Data (1905-1983). Vhs <i>chartreuse tattooed sriracha food truck viral single-origin coffee</i> iphone.</span>",
      "description": "Vhs <i>chartreuse tattooed sriracha food truck viral single-origin coffee</i> iphone.",
      "clean_label": "Data",
      "clean_description": "Vhs chartreuse tattooed sriracha food truck viral single-origin coffee iphone.",
      "alternate_spellings": [
        "Valentina"
      ],
      "finding_aids": [
        "http://mante.org/chauncey"
      ],
      "first_name": "Kasey",
      "last_name": "Trantow",
      "life_dates": "(1905-1983)",
      "links": [
        "http://hills.com/dave"
      ],
      "profile": "I'm the dude, so that's what you call me. That or, uh His Dudeness, or uh Duder, or El Duderino, if you're not into the whole brevity thing."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "person",
          "doc_count": 6
        },
        {
          "key": "publication",
          "doc_count": 3
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 6,
    "links": {
      "self": "http://example.org/entities?page=1&search=Data&type=person"
    }
  }
}</pre>
