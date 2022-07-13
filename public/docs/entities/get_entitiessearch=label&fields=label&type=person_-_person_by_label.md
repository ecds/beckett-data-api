# Entities API



## GET /entities?search=:label&amp;fields=label&amp;type=person - Person by Label

### GET /entities

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, and writing. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=Oglethorpe&amp;type=person</pre>

#### Query Parameters

<pre>search: Oglethorpe
type: person</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=Oglethorpe&amp;type=person&gt;; rel=&#39;self&#39;
X-Total-Count: 7
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a3a8bb83d20f55e6325b94c01745ed9a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 021fdc80-7aea-4cec-954d-4a07d7545587
X-Runtime: 12.114279
Vary: Origin
Content-Length: 5574</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/5706f4ab-b450-4d87-ae3f-f6d848f3cc1d",
      "label": "<i>Oglethorpe</i>",
      "type": "person",
      "short_display": "<span><i>Oglethorpe</i> (1914-1981). Cleanse farm-to-table kinfolk chillwave.</span>",
      "description": "Cleanse farm-to-table kinfolk chillwave.",
      "clean_label": "Oglethorpe",
      "clean_description": "Cleanse farm-to-table kinfolk chillwave.",
      "alternate_spellings": [
        "Alyssa Edwards"
      ],
      "finding_aids": [
        "http://rice-barrows.io/janine_lesch"
      ],
      "first_name": "Dewitt",
      "last_name": "Welch",
      "life_dates": "(1914-1981)",
      "links": [
        "http://bernier-kuhn.biz/miquel_batz"
      ],
      "profile": "Mind if I do a J?"
    },
    {
      "id": "http://example.org/entities/5c1ff31e-9db8-49a3-a395-d65a2108ea9e",
      "label": "Oglethorpe",
      "type": "person",
      "short_display": "<span>Oglethorpe (1914-1987). Jean <i>shorts tattooed listicle hella pitchfork you probably haven't heard of them poutine actually</i> cardigan.</span>",
      "description": "Jean <i>shorts tattooed listicle hella pitchfork you probably haven't heard of them poutine actually</i> cardigan.",
      "clean_label": "Oglethorpe",
      "clean_description": "Jean shorts tattooed listicle hella pitchfork you probably haven't heard of them poutine actually cardigan.",
      "alternate_spellings": [
        "Morgan McMichaels"
      ],
      "finding_aids": [
        "http://yost-langworth.com/kanesha.cremin"
      ],
      "first_name": "Rudolph",
      "last_name": "Mante",
      "life_dates": "(1914-1987)",
      "links": [
        "http://ortiz-jakubowski.co/carin"
      ],
      "profile": "Calmer than you are."
    },
    {
      "id": "http://example.org/entities/8a5cc6fb-9ce5-482b-85b5-6e54fbe26a68",
      "label": "<i>Oglethorpe</i>",
      "type": "person",
      "short_display": "<span><i>Oglethorpe</i> (1913-1983). Offal <i>intelligentsia scenester park pour-over street authentic</i> tacos.</span>",
      "description": "Offal <i>intelligentsia scenester park pour-over street authentic</i> tacos.",
      "clean_label": "Oglethorpe",
      "clean_description": "Offal intelligentsia scenester park pour-over street authentic tacos.",
      "alternate_spellings": [
        "Jiggly Caliente"
      ],
      "finding_aids": [
        "http://bartell-hudson.net/ozzie.kirlin"
      ],
      "first_name": "Edward",
      "last_name": "Becker",
      "life_dates": "(1913-1983)",
      "links": [
        "http://halvorson.name/deon"
      ],
      "profile": "I'm perfectly calm, Dude."
    },
    {
      "id": "http://example.org/entities/a1248f4d-90aa-418b-b5e6-08dea4025589",
      "label": "Oglethorpe",
      "type": "person",
      "short_display": "<span>Oglethorpe (1912-1975). Celiac portland cronut 90's trust fund.</span>",
      "description": "Celiac portland cronut 90's trust fund.",
      "clean_label": "Oglethorpe",
      "clean_description": "Celiac portland cronut 90's trust fund.",
      "alternate_spellings": [
        "Shuga Cain"
      ],
      "finding_aids": [
        "http://lehner-huels.name/malika"
      ],
      "first_name": "Elton",
      "last_name": "Pacocha",
      "life_dates": "(1912-1975)",
      "links": [
        "http://ortiz-fisher.biz/titus_lynch"
      ],
      "profile": "Careful man, there's a beverage here!"
    },
    {
      "id": "http://example.org/entities/a6a14efd-e270-425f-8018-bcfed40b1230",
      "label": "<i>Oglethorpe</i>",
      "type": "person",
      "short_display": "<span><i>Oglethorpe</i> (1913-1980). Next level vhs typewriter tumblr.</span>",
      "description": "Next level vhs typewriter tumblr.",
      "clean_label": "Oglethorpe",
      "clean_description": "Next level vhs typewriter tumblr.",
      "alternate_spellings": [
        "Carmen Carrera"
      ],
      "finding_aids": [
        "http://leffler-howe.info/leona"
      ],
      "first_name": "Arnette",
      "last_name": "Miller",
      "life_dates": "(1913-1980)",
      "links": [
        "http://boyer-schimmel.biz/julian"
      ],
      "profile": "So what are you saying? When you get divorced you turn in your library card? You get a new license? You stop being Jewish?"
    },
    {
      "id": "http://example.org/entities/d7a04b29-f860-4fd6-8f3c-ecba9fbc5a40",
      "label": "Oglethorpe",
      "type": "person",
      "short_display": "<span>Oglethorpe (1900-1996). Vinyl <i>diy echo cray kickstarter yolo poutine</i> kogi.</span>",
      "description": "Vinyl <i>diy echo cray kickstarter yolo poutine</i> kogi.",
      "clean_label": "Oglethorpe",
      "clean_description": "Vinyl diy echo cray kickstarter yolo poutine kogi.",
      "alternate_spellings": [
        "Jinkx Monsoon"
      ],
      "finding_aids": [
        "http://boyer.name/min"
      ],
      "first_name": "Britt",
      "last_name": "Stehr",
      "life_dates": "(1900-1996)",
      "links": [
        "http://johnson.org/sha"
      ],
      "profile": "Hell, I can get you a toe by 3 o'clock this afternoon...with nail polish."
    },
    {
      "id": "http://example.org/entities/ffb6344a-1462-46f2-a17e-30e73c45c56c",
      "label": "<i>Oglethorpe</i>",
      "type": "person",
      "short_display": "<span><i>Oglethorpe</i> (1907-1988). Food truck lo-fi taxidermy migas polaroid church-key everyday.</span>",
      "description": "Food truck lo-fi taxidermy migas polaroid church-key everyday.",
      "clean_label": "Oglethorpe",
      "clean_description": "Food truck lo-fi taxidermy migas polaroid church-key everyday.",
      "alternate_spellings": [
        "Kim Chi"
      ],
      "finding_aids": [
        "http://dooley-legros.org/mandi"
      ],
      "first_name": "Dessie",
      "last_name": "Murray",
      "life_dates": "(1907-1988)",
      "links": [
        "http://mccullough-nitzsche.org/zane"
      ],
      "profile": "Oh, the usual. I bowl. Drive around. The occasional acid flashback."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "person",
          "doc_count": 7
        },
        {
          "key": "publication",
          "doc_count": 6
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 7,
    "links": {
      "self": "http://example.org/entities?page=1&search=Oglethorpe&type=person"
    }
  }
}</pre>
