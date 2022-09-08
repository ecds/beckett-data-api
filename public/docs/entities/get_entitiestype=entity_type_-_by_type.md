# Entities API



## GET /entities?type=:entity_type - By Type

### GET /entities

Returns a paginated list of entities by type. Valid types are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic.

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

<pre>GET /entities?type=production</pre>

#### Query Parameters

<pre>type: production</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;type=production&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=2&amp;type=production&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&amp;type=production&gt;; rel=&#39;next&#39;
X-Total-Count: 43
Content-Type: application/json; charset=utf-8
ETag: W/&quot;76d4e31a4a22c8e38180f0bd93e43fc2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b8c1f0c6-6af7-43d7-a5ff-26cd4c08f656
X-Runtime: 2.569858
Vary: Origin
Content-Length: 9664</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/07b943c5-45eb-4ac1-99f8-56bd92bf2b21",
      "label": "A Beautiful Mind",
      "type": "production",
      "short_display": [

      ],
      "description": "Authentic cronut tattooed yolo.",
      "clean_label": "A Beautiful Mind",
      "clean_description": "Authentic cronut tattooed yolo."
    },
    {
      "id": "http://example.org/entities/0e9e23e0-2e12-4a41-bd71-cd67bc731c3c",
      "label": "<i>There Will Be Blood</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "90s <i>kombucha loko ugh iphone viral deep v</i> leggings.",
      "clean_label": "There Will Be Blood",
      "clean_description": "90s kombucha loko ugh iphone viral deep v leggings."
    },
    {
      "id": "http://example.org/entities/1ccd9a85-a06c-48df-802c-609fb8cc834b",
      "label": "<i>The Intouchables</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Umami <i>authentic pbrb blue bottle mumblecore flannel</i> wolf.",
      "clean_label": "The Intouchables",
      "clean_description": "Umami authentic pbrb blue bottle mumblecore flannel wolf."
    },
    {
      "id": "http://example.org/entities/2223b648-e97a-43ee-b8f1-db2261c4f07a",
      "label": "The Great Dictator",
      "type": "production",
      "short_display": [

      ],
      "description": "Paleo <i>kogi fixie tacos</i> whatever.",
      "clean_label": "The Great Dictator",
      "clean_description": "Paleo kogi fixie tacos whatever."
    },
    {
      "id": "http://example.org/entities/33b0decb-3a7c-444a-85df-07877ad8f1ea",
      "label": "Pulp Fiction",
      "type": "production",
      "short_display": [

      ],
      "description": "Thundercats mustache health 3 wolf moon blue bottle actually.",
      "clean_label": "Pulp Fiction",
      "clean_description": "Thundercats mustache health 3 wolf moon blue bottle actually."
    },
    {
      "id": "http://example.org/entities/359fa52d-838d-4104-994e-9edc4e1e9f6d",
      "label": "<i>Once Upon a Time in the West</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Drinking cleanse ethical fingerstache.",
      "clean_label": "Once Upon a Time in the West",
      "clean_description": "Drinking cleanse ethical fingerstache."
    },
    {
      "id": "http://example.org/entities/3e6322e5-b2a5-4d5a-9dae-f1403aa50747",
      "label": "<i>To Kill a Mockingbird</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Dreamcatcher everyday stumptown park.",
      "clean_label": "To Kill a Mockingbird",
      "clean_description": "Dreamcatcher everyday stumptown park."
    },
    {
      "id": "http://example.org/entities/3f2de5cf-a62e-4f06-a872-e0c48bc605d5",
      "label": "Eternal Sunshine of the Spotless Mind",
      "type": "production",
      "short_display": [

      ],
      "description": "Intelligentsia <i>wolf blue bottle poutine everyday wes anderson tilde tryhard</i> vinegar.",
      "clean_label": "Eternal Sunshine of the Spotless Mind",
      "clean_description": "Intelligentsia wolf blue bottle poutine everyday wes anderson tilde tryhard vinegar."
    },
    {
      "id": "http://example.org/entities/4a484c26-49c8-4c37-99fb-ba8f9022cc22",
      "label": "<i>Dog Day Afternoon</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Everyday <i>portland fingerstache vinyl</i> blog.",
      "clean_label": "Dog Day Afternoon",
      "clean_description": "Everyday portland fingerstache vinyl blog."
    },
    {
      "id": "http://example.org/entities/4bbcea04-2181-4c66-aad1-e664d4761c2c",
      "label": "Saving Private Ryan",
      "type": "production",
      "short_display": [

      ],
      "description": "Pbrb <i>cardigan swag meh 8bit</i> neutra.",
      "clean_label": "Saving Private Ryan",
      "clean_description": "Pbrb cardigan swag meh 8bit neutra."
    },
    {
      "id": "http://example.org/entities/4c7bf66d-7b89-4a93-8f0c-8164b094c3c7",
      "label": "The Best Years of Our Lives",
      "type": "production",
      "short_display": [

      ],
      "description": "Carry <i>actually messenger bag portland farmtotable</i> thundercats.",
      "clean_label": "The Best Years of Our Lives",
      "clean_description": "Carry actually messenger bag portland farmtotable thundercats."
    },
    {
      "id": "http://example.org/entities/4c80c4b0-8e9d-4984-bd75-e53d5bddf0a6",
      "label": "Toy Story 3",
      "type": "production",
      "short_display": [

      ],
      "description": "Distillery <i>bicycle rights ethical franzen</i> lumbersexual.",
      "clean_label": "Toy Story 3",
      "clean_description": "Distillery bicycle rights ethical franzen lumbersexual."
    },
    {
      "id": "http://example.org/entities/5bb25052-eedc-4ac6-b058-524cb7644012",
      "label": "<i>Star Wars: Episode IV – A New Hope</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Irony <i>flannel venmo intelligentsia fixie</i> vhs.",
      "clean_label": "Star Wars: Episode IV – A New Hope",
      "clean_description": "Irony flannel venmo intelligentsia fixie vhs."
    },
    {
      "id": "http://example.org/entities/5d28a458-5b41-43e2-bfb0-d4eef27c1246",
      "label": "Sunset Blvd.",
      "type": "production",
      "short_display": [

      ],
      "description": "Organic <i>8bit yuccie kogi shabby chic kale chips blue bottle intelligentsia</i> carry.",
      "clean_label": "Sunset Blvd.",
      "clean_description": "Organic 8bit yuccie kogi shabby chic kale chips blue bottle intelligentsia carry."
    },
    {
      "id": "http://example.org/entities/62ad3419-6bb0-4dc4-86d2-6ee3c84e1c44",
      "label": "Finding Nemo",
      "type": "production",
      "short_display": [

      ],
      "description": "Kickstarter popup goth taxidermy jean shorts knausgaard vinyl vegan readymade.",
      "clean_label": "Finding Nemo",
      "clean_description": "Kickstarter popup goth taxidermy jean shorts knausgaard vinyl vegan readymade."
    },
    {
      "id": "http://example.org/entities/7069dad0-1461-48fc-880f-dbb4a517967b",
      "label": "<i>Bicycle Thieves</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Blog <i>pork belly schlitz coldpressed poutine</i> pitchfork.",
      "clean_label": "Bicycle Thieves",
      "clean_description": "Blog pork belly schlitz coldpressed poutine pitchfork."
    },
    {
      "id": "http://example.org/entities/71cca897-6b81-4596-8803-5edc8bf57f3e",
      "label": "Beauty and the Beast",
      "type": "production",
      "short_display": [

      ],
      "description": "Wayfarers <i>art party ethical</i> yr.",
      "clean_label": "Beauty and the Beast",
      "clean_description": "Wayfarers art party ethical yr."
    },
    {
      "id": "http://example.org/entities/73f358be-b4a2-49fd-8749-1b84af0e42cc",
      "label": "<i>The Bourne Ultimatum</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Paleo <i>carry synth whatever truffaut umami locavore</i> tumblr.",
      "clean_label": "The Bourne Ultimatum",
      "clean_description": "Paleo carry synth whatever truffaut umami locavore tumblr."
    },
    {
      "id": "http://example.org/entities/75052ea8-abd5-4db1-b178-feed50ab9315",
      "label": "Chinatown",
      "type": "production",
      "short_display": [

      ],
      "description": "Kale chips pourover fanny pack offal gastropub banh mi.",
      "clean_label": "Chinatown",
      "clean_description": "Kale chips pourover fanny pack offal gastropub banh mi."
    },
    {
      "id": "http://example.org/entities/7551dae9-e2ff-4dd4-ac8d-a24eeabb6857",
      "label": "<i>12 Angry Men</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Lomo <i>five dollar toast meditation blog loko wes anderson tote bag</i> cardigan.",
      "clean_label": "12 Angry Men",
      "clean_description": "Lomo five dollar toast meditation blog loko wes anderson tote bag cardigan."
    },
    {
      "id": "http://example.org/entities/75d52432-3074-4f2e-92fd-bb350af68348",
      "label": "<i>In the Name of the Father</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Authentic <i>narwhal blue bottle beard</i> bushwick.",
      "clean_label": "In the Name of the Father",
      "clean_description": "Authentic narwhal blue bottle beard bushwick."
    },
    {
      "id": "http://example.org/entities/85f112d6-6aab-45f2-a80c-1565bc49872a",
      "label": "Star Wars: Episode VIII – The Last Jedi",
      "type": "production",
      "short_display": [

      ],
      "description": "Wes <i>anderson cray biodiesel mlkshk</i> scenester.",
      "clean_label": "Star Wars: Episode VIII – The Last Jedi",
      "clean_description": "Wes anderson cray biodiesel mlkshk scenester."
    },
    {
      "id": "http://example.org/entities/92f471ed-da51-4fbb-8d42-3f29561ffc9b",
      "label": "<i>The Lion King</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Craft <i>beer distillery vegan venmo pug umami meh</i> brooklyn.",
      "clean_label": "The Lion King",
      "clean_description": "Craft beer distillery vegan venmo pug umami meh brooklyn."
    },
    {
      "id": "http://example.org/entities/a27f77b5-2ca0-45a2-a423-fd3949ee3ce8",
      "label": "<i>Braveheart</i>",
      "type": "production",
      "short_display": [

      ],
      "description": "Whatever <i>polaroid green juice venmo</i> 1.",
      "clean_label": "Braveheart",
      "clean_description": "Whatever polaroid green juice venmo 1."
    },
    {
      "id": "http://example.org/entities/a4389bd9-28ea-43c5-b52e-060832932c27",
      "label": "Paths of Glory",
      "type": "production",
      "short_display": [

      ],
      "description": "Helvetica cliche meh echo yuccie drinking.",
      "clean_label": "Paths of Glory",
      "clean_description": "Helvetica cliche meh echo yuccie drinking."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 116
        },
        {
          "key": "person",
          "doc_count": 80
        },
        {
          "key": "writing",
          "doc_count": 44
        },
        {
          "key": "production",
          "doc_count": 43
        },
        {
          "key": "work_of_art",
          "doc_count": 40
        },
        {
          "key": "public_event",
          "doc_count": 35
        },
        {
          "key": "publication",
          "doc_count": 33
        },
        {
          "key": "music",
          "doc_count": 32
        },
        {
          "key": "translating",
          "doc_count": 31
        },
        {
          "key": "reading",
          "doc_count": 28
        },
        {
          "key": "attendance",
          "doc_count": 27
        },
        {
          "key": "organization",
          "doc_count": 20
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 43,
    "links": {
      "self": "http://example.org/entities?page=1&type=production",
      "last": "http://example.org/entities?page=2&type=production",
      "next": "http://example.org/entities?page=2&type=production"
    }
  }
}</pre>
