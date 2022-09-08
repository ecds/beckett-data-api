# Entities API



## GET /entities - All

### GET /entities

Returns a paginated list of all entities.

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

<pre>GET /entities</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=25&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 625
Content-Type: application/json; charset=utf-8
ETag: W/&quot;89fe5bb96255bb39e878d85c34637c3e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 520ee871-2403-42c2-affd-44750e510083
X-Runtime: 2.998511
Vary: Origin
Content-Length: 10166</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/0063eab9-7fb8-4d51-a3be-329ec84d2332",
      "label": "Mercury",
      "type": "public_event",
      "short_display": [

      ],
      "description": "There's a brand new groove going 'round, in your funky town, and the kick drum is the fault.",
      "clean_label": "Mercury",
      "clean_description": "There's a brand new groove going 'round, in your funky town, and the kick drum is the fault."
    },
    {
      "id": "http://example.org/entities/011bc573-17dd-4016-aaf1-b2e08d0fae5a",
      "label": "<i>To Your Scattered Bodies Go</i>",
      "type": "translating",
      "short_display": [

      ],
      "description": "Brunch phlogiston polaroid salvia.",
      "clean_label": "To Your Scattered Bodies Go",
      "clean_description": "Brunch phlogiston polaroid salvia."
    },
    {
      "id": "http://example.org/entities/01764e76-91ae-4898-b73d-ddfb04f99589",
      "label": "Denmark",
      "type": "place",
      "short_display": [

      ],
      "description": "Ugh <i>waistcoat sriracha dreamcatcher kale chips trust fund chartreuse ramps</i> kinfolk.",
      "clean_label": "Denmark",
      "clean_description": "Ugh waistcoat sriracha dreamcatcher kale chips trust fund chartreuse ramps kinfolk."
    },
    {
      "id": "http://example.org/entities/01cfcfb6-23e4-40a7-a539-a6ab92076c37",
      "label": "<i>Orion</i>",
      "type": "public_event",
      "short_display": [

      ],
      "description": "Let's Groove, September, Earth, Wind and Fire, Hot Pants by James, Sly is going to take you higher.",
      "clean_label": "Orion",
      "clean_description": "Let's Groove, September, Earth, Wind and Fire, Hot Pants by James, Sly is going to take you higher."
    },
    {
      "id": "http://example.org/entities/01df3cf9-555b-4661-9615-a18b8c59aad3",
      "label": "<i>Apollo</i>",
      "type": "public_event",
      "short_display": [

      ],
      "description": "It was only last June when her old man ran away. She couldn't stop crying cause she knew he was gone to stay.",
      "clean_label": "Apollo",
      "clean_description": "It was only last June when her old man ran away. She couldn't stop crying cause she knew he was gone to stay."
    },
    {
      "id": "http://example.org/entities/01fa447f-fe4c-4d85-9ab2-79416ba0931b",
      "label": "Ibiza",
      "type": "place",
      "short_display": [

      ],
      "description": "Migas lumbersexual shoreditch roof scenester meditation.",
      "clean_label": "Ibiza",
      "clean_description": "Migas lumbersexual shoreditch roof scenester meditation."
    },
    {
      "id": "http://example.org/entities/027b8ae6-36f0-4357-922b-131222b6e7b6",
      "label": "<i>Liberty Fund</i>",
      "type": "publication",
      "short_display": [

      ],
      "description": "Readymade squid health meggings trust fund lofi williamsburg small batch chia.",
      "clean_label": "Liberty Fund",
      "clean_description": "Readymade squid health meggings trust fund lofi williamsburg small batch chia."
    },
    {
      "id": "http://example.org/entities/0339d5d7-6117-4be5-a759-ef028b53dd71",
      "label": "Schuster, Paula",
      "type": "person",
      "short_display": [

      ],
      "description": "I think you ought to know I'm feeling very depressed.",
      "clean_label": "Schuster, Paula",
      "clean_description": "I think you ought to know I'm feeling very depressed."
    },
    {
      "id": "http://example.org/entities/0348ca32-67d8-4f0c-b4e4-c8058925fe70",
      "label": "In a Glass Darkly",
      "type": "reading",
      "short_display": [

      ],
      "description": "Hammock <i>cronut swag park hashtag ethical</i> helvetica.",
      "clean_label": "In a Glass Darkly",
      "clean_description": "Hammock cronut swag park hashtag ethical helvetica."
    },
    {
      "id": "http://example.org/entities/03504f7a-6711-458f-bac0-fdae54403414",
      "label": "<i>Gemini</i>",
      "type": "public_event",
      "short_display": [

      ],
      "description": "Love come quick, love come in a hurry, there are thieves in the temple tonight.",
      "clean_label": "Gemini",
      "clean_description": "Love come quick, love come in a hurry, there are thieves in the temple tonight."
    },
    {
      "id": "http://example.org/entities/036549d1-1017-4303-a1b8-2d6a495de042",
      "label": "Sometimes It Snows In April",
      "type": "work_of_art",
      "short_display": [

      ],
      "description": "Keytar farmtotable chillwave hammock bushwick kinfolk heirloom vinyl.",
      "clean_label": "Sometimes It Snows In April",
      "clean_description": "Keytar farmtotable chillwave hammock bushwick kinfolk heirloom vinyl."
    },
    {
      "id": "http://example.org/entities/03a31a83-277b-4fe4-ad8a-30ce7df867c2",
      "label": "<i>Horse and Groom</i>",
      "type": "place",
      "short_display": [

      ],
      "description": "Retro keytar raw denim aesthetic.",
      "clean_label": "Horse and Groom",
      "clean_description": "Retro keytar raw denim aesthetic."
    },
    {
      "id": "http://example.org/entities/047e6296-8ad7-4ed5-bf9a-af731db10631",
      "label": "Starfish And Coffee",
      "type": "work_of_art",
      "short_display": [

      ],
      "description": "Selfies <i>narwhal kogi five dollar toast twee</i> scenester.",
      "clean_label": "Starfish And Coffee",
      "clean_description": "Selfies narwhal kogi five dollar toast twee scenester."
    },
    {
      "id": "http://example.org/entities/05464183-5ad8-4a8d-8b45-b09a8513f48a",
      "label": "Radio Broadcast, Photo booth occupy farmtotable meggings neutra seitan ramps.",
      "type": "attendance",
      "short_display": [

      ],
      "description": "Photo booth occupy farmtotable meggings neutra seitan ramps.",
      "clean_label": "Radio Broadcast, Photo booth occupy farmtotable meggings neutra seitan ramps.",
      "clean_description": "Photo booth occupy farmtotable meggings neutra seitan ramps."
    },
    {
      "id": "http://example.org/entities/0553913a-1857-47d3-b6ca-162da9fd2e1b",
      "label": "Rehearsal, Everyday tote bag muggle magic pinterest retro paleo postironic tacos.",
      "type": "attendance",
      "short_display": [

      ],
      "description": "Everyday tote bag muggle magic pinterest retro paleo postironic tacos.",
      "clean_label": "Rehearsal, Everyday tote bag muggle magic pinterest retro paleo postironic tacos.",
      "clean_description": "Everyday tote bag muggle magic pinterest retro paleo postironic tacos."
    },
    {
      "id": "http://example.org/entities/0576c697-83f4-4158-bcee-de81058636ce",
      "label": "<i>Chambers Harrap</i>",
      "type": "publication",
      "short_display": [

      ],
      "description": "Tote <i>bag selfies cornhole muggle magic whatever churchkey vice</i> mixtape.",
      "clean_label": "Chambers Harrap",
      "clean_description": "Tote bag selfies cornhole muggle magic whatever churchkey vice mixtape."
    },
    {
      "id": "http://example.org/entities/05889d77-6513-47fe-9076-4293a0e510c9",
      "label": "Boston",
      "type": "place",
      "short_display": [

      ],
      "description": "Listicle crucifix deep v flannel 1 pbrb cleanse brooklyn venmo.",
      "clean_label": "Boston",
      "clean_description": "Listicle crucifix deep v flannel 1 pbrb cleanse brooklyn venmo."
    },
    {
      "id": "http://example.org/entities/058b071b-7293-49ba-8aba-a06d7a47c0e5",
      "label": "<i>Orion</i>",
      "type": "public_event",
      "short_display": [

      ],
      "description": "Woke up the next morning, Nikki wasn't there. I looked all over and all I found was a phone number on the stairs. It said thank you for a funky time, call me up whenever you wanna grind.",
      "clean_label": "Orion",
      "clean_description": "Woke up the next morning, Nikki wasn't there. I looked all over and all I found was a phone number on the stairs. It said thank you for a funky time, call me up whenever you wanna grind."
    },
    {
      "id": "http://example.org/entities/0693faee-4a3a-4147-bf1d-ad8fef71f8a8",
      "label": "Reading, Hammock <i>singleorigin coffee 1</i> cred.",
      "type": "attendance",
      "short_display": [

      ],
      "description": "Hammock <i>singleorigin coffee 1</i> cred.",
      "clean_label": "Reading, Hammock singleorigin coffee 1 cred.",
      "clean_description": "Hammock singleorigin coffee 1 cred."
    },
    {
      "id": "http://example.org/entities/06ccd07a-d865-456c-8b93-4bcc8ea42014",
      "label": "Blagulon Kappa",
      "type": "organization",
      "short_display": [

      ],
      "description": "I think you ought to know I'm feeling very depressed.",
      "clean_label": "Blagulon Kappa",
      "clean_description": "I think you ought to know I'm feeling very depressed."
    },
    {
      "id": "http://example.org/entities/07700052-3bbf-45bd-bacb-d4a2abf2b153",
      "label": "<i>London</i>",
      "type": "place",
      "short_display": [

      ],
      "description": "Hammock <i>meditation vhs fanny pack</i> tattooed.",
      "clean_label": "London",
      "clean_description": "Hammock meditation vhs fanny pack tattooed."
    },
    {
      "id": "http://example.org/entities/07bb16e2-7083-4c4f-8021-dcd8135dcda4",
      "label": "Computer Blue",
      "type": "music",
      "short_display": [

      ],
      "description": "Yolo pickled narwhal fingerstache mustache.",
      "clean_label": "Computer Blue",
      "clean_description": "Yolo pickled narwhal fingerstache mustache."
    },
    {
      "id": "http://example.org/entities/07d66f4c-7449-48bc-9775-aea110102d58",
      "label": "<i>Gemini</i>",
      "type": "public_event",
      "short_display": [

      ],
      "description": "Where <i>is my love life? Where can it be? There must be something wrong with the</i> machinery.",
      "clean_label": "Gemini",
      "clean_description": "Where is my love life? Where can it be? There must be something wrong with the machinery."
    },
    {
      "id": "http://example.org/entities/0868c90c-9d3f-4882-ab7f-f4040b1d562d",
      "label": "Ol' Skool Company",
      "type": "music",
      "short_display": [

      ],
      "description": "Blog <i>chia hella stumptown sartorial marfa</i> ramps.",
      "clean_label": "Ol' Skool Company",
      "clean_description": "Blog chia hella stumptown sartorial marfa ramps."
    },
    {
      "id": "http://example.org/entities/08ae64bc-38a1-44da-b853-f4e0ccb70f6d",
      "label": "Connelly, Sharika",
      "type": "person",
      "short_display": [

      ],
      "description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "clean_label": "Connelly, Sharika",
      "clean_description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 133
        },
        {
          "key": "person",
          "doc_count": 87
        },
        {
          "key": "production",
          "doc_count": 47
        },
        {
          "key": "music",
          "doc_count": 46
        },
        {
          "key": "public_event",
          "doc_count": 44
        },
        {
          "key": "attendance",
          "doc_count": 43
        },
        {
          "key": "writing",
          "doc_count": 41
        },
        {
          "key": "publication",
          "doc_count": 39
        },
        {
          "key": "reading",
          "doc_count": 39
        },
        {
          "key": "organization",
          "doc_count": 37
        },
        {
          "key": "work_of_art",
          "doc_count": 36
        },
        {
          "key": "translating",
          "doc_count": 33
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 25,
    "total_count": 625,
    "links": {
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=25",
      "next": "http://example.org/entities?page=2"
    }
  }
}</pre>
