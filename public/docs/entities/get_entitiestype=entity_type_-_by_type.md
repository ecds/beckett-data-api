# Entities API



## GET /entities?type=:entity_type - By Type

### GET /entities

Returns a paginated list of entities by type. Valid types are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, and writing.

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

<pre>GET /entities?type=place</pre>

#### Query Parameters

<pre>type: place</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;type=place&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=6&amp;type=place&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&amp;type=place&gt;; rel=&#39;next&#39;
X-Total-Count: 136
Content-Type: application/json; charset=utf-8
ETag: W/&quot;bf6577e04ac162c9fd82e01ac5b7b5d0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d1e95d5e-eea8-4b46-b012-383e4b431234
X-Runtime: 11.245054
Vary: Origin
Content-Length: 13007</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "/entities/001ce2cd-746e-4e79-8c21-20cde4db5ff5",
      "label": "<i>29 Arlington Avenue</i>",
      "type": "place",
      "short_display": "<span><i>29 Arlington Avenue</i>.</span>",
      "description": "Letterpress <i>umami retro meditation stumptown</i> celiac.",
      "clean_label": "29 Arlington Avenue",
      "clean_description": "Letterpress umami retro meditation stumptown celiac.",
      "alternate_spellings": [
        "Monet X Change"
      ],
      "links": [
        "http://mcglynn.io/tristan_hermann"
      ]
    },
    {
      "id": "/entities/0250e60d-00d2-44e5-8b4b-ac859a7c8716",
      "label": "Stavromula Beta",
      "type": "place",
      "short_display": "<span>Stavromula Beta.</span>",
      "description": "Actually <i>diy biodiesel cronut try-hard master green juice yr</i> heirloom.",
      "clean_label": "Stavromula Beta",
      "clean_description": "Actually diy biodiesel cronut try-hard master green juice yr heirloom.",
      "alternate_spellings": [
        "Peppermint"
      ],
      "links": [
        "http://stokes-langworth.name/stepanie"
      ]
    },
    {
      "id": "/entities/03bf5f69-d8ae-42ad-a808-25704f6dd097",
      "label": "<i>Barnard's Star</i>",
      "type": "place",
      "short_display": "<span><i>Barnard's Star</i>.</span>",
      "description": "Meditation <i>portland mumblecore migas bicycle</i> rights.",
      "clean_label": "Barnard's Star",
      "clean_description": "Meditation portland mumblecore migas bicycle rights.",
      "alternate_spellings": [
        "Ginger Minj"
      ],
      "links": [
        "http://wunsch.io/jeff"
      ]
    },
    {
      "id": "/entities/04d9c057-cac7-4a90-8669-5604fc79cd2d",
      "label": "<i>The Big Bang Burger Bar</i>",
      "type": "place",
      "short_display": "<span><i>The Big Bang Burger Bar</i>.</span>",
      "description": "Blue <i>bottle pitchfork jean shorts loko wes</i> anderson.",
      "clean_label": "The Big Bang Burger Bar",
      "clean_description": "Blue bottle pitchfork jean shorts loko wes anderson.",
      "alternate_spellings": [
        "Shea Coulee"
      ],
      "links": [
        "http://funk.net/robin"
      ]
    },
    {
      "id": "/entities/07a4379e-4abf-4a39-a07a-db4ac7d59809",
      "label": "<i>Kakrafoon Kappa</i>",
      "type": "place",
      "short_display": "<span><i>Kakrafoon Kappa</i>.</span>",
      "description": "Pug everyday vice actually next level stumptown hashtag yuccie vegan.",
      "clean_label": "Kakrafoon Kappa",
      "clean_description": "Pug everyday vice actually next level stumptown hashtag yuccie vegan.",
      "alternate_spellings": [
        "Shea Coulee"
      ],
      "links": [
        "http://cummings-cormier.org/marcos_harber"
      ]
    },
    {
      "id": "/entities/084be334-a9bf-45a7-88eb-c2b9a57f38ce",
      "label": "Milliways",
      "type": "place",
      "short_display": "<span>Milliways.</span>",
      "description": "Meh <i>flexitarian selfies disrupt williamsburg mixtape biodiesel deep</i> v.",
      "clean_label": "Milliways",
      "clean_description": "Meh flexitarian selfies disrupt williamsburg mixtape biodiesel deep v.",
      "alternate_spellings": [
        "Raja"
      ],
      "links": [
        "http://kulas.co/fred_shields"
      ]
    },
    {
      "id": "/entities/0c06a1ce-45f7-402b-98b8-962bcad2e08d",
      "label": "<i>Café Lou</i>",
      "type": "place",
      "short_display": "<span><i>Café Lou</i>.</span>",
      "description": "Street waistcoat offal kale chips readymade you probably haven't heard of them.",
      "clean_label": "Café Lou",
      "clean_description": "Street waistcoat offal kale chips readymade you probably haven't heard of them.",
      "alternate_spellings": [
        "Tatianna"
      ],
      "links": [
        "http://powlowski-bins.co/lanelle.witting"
      ]
    },
    {
      "id": "/entities/0d3fbdc3-f80a-4f27-93bb-8676cb4c7724",
      "label": "<i>Frogstar World B</i>",
      "type": "place",
      "short_display": "<span><i>Frogstar World B</i>.</span>",
      "description": "Irony vegan cliche green juice 8-bit mustache +1.",
      "clean_label": "Frogstar World B",
      "clean_description": "Irony vegan cliche green juice 8-bit mustache +1.",
      "alternate_spellings": [
        "Brook Lynn Hytes"
      ],
      "links": [
        "http://bayer.org/kayce_stoltenberg"
      ]
    },
    {
      "id": "/entities/0f053dc6-e991-49c3-8c11-4dbfdbe2e5e5",
      "label": "<i>The Domain of The King</i>",
      "type": "place",
      "short_display": "<span><i>The Domain of The King</i>.</span>",
      "description": "Master <i>ennui flexitarian pickled pug lumbersexual tote bag</i> thundercats.",
      "clean_label": "The Domain of The King",
      "clean_description": "Master ennui flexitarian pickled pug lumbersexual tote bag thundercats.",
      "alternate_spellings": [
        "Aquaria"
      ],
      "links": [
        "http://stracke-oberbrunner.org/phylicia.kertzmann"
      ]
    },
    {
      "id": "/entities/157bd3fb-694d-4756-b0fa-49db3134dbb1",
      "label": "<i>France</i>",
      "type": "place",
      "short_display": "<span><i>France</i>.</span>",
      "description": "Fingerstache <i>microdosing wayfarers small batch deep v sustainable cardigan slow-carb</i> mlkshk.",
      "clean_label": "France",
      "clean_description": "Fingerstache microdosing wayfarers small batch deep v sustainable cardigan slow-carb mlkshk.",
      "alternate_spellings": [
        "Eureka"
      ],
      "links": [
        "http://schmeler.io/coy"
      ]
    },
    {
      "id": "/entities/178315fd-25f3-47bc-9021-e6373dfca5a1",
      "label": "Total Perspective Vortex",
      "type": "place",
      "short_display": "<span>Total Perspective Vortex.</span>",
      "description": "Waistcoat hella single-origin coffee locavore chicharrones.",
      "clean_label": "Total Perspective Vortex",
      "clean_description": "Waistcoat hella single-origin coffee locavore chicharrones.",
      "alternate_spellings": [
        "Sasha Velour"
      ],
      "links": [
        "http://kiehn.io/leida.effertz"
      ]
    },
    {
      "id": "/entities/1884db41-2a85-49ca-8497-f8daccaf5ae1",
      "label": "Pleiades system",
      "type": "place",
      "short_display": "<span>Pleiades system.</span>",
      "description": "Thundercats <i>3 wolf moon fanny pack chartreuse five dollar</i> toast.",
      "clean_label": "Pleiades system",
      "clean_description": "Thundercats 3 wolf moon fanny pack chartreuse five dollar toast.",
      "alternate_spellings": [
        "Sharon Needles"
      ],
      "links": [
        "http://leannon-kertzmann.com/darren_grant"
      ]
    },
    {
      "id": "/entities/19c22a8a-ccd8-442b-89c2-8f3344c9b5c8",
      "label": "Horsehead Nebula",
      "type": "place",
      "short_display": "<span>Horsehead Nebula.</span>",
      "description": "Hashtag sriracha tumblr ennui letterpress retro five dollar toast cleanse viral.",
      "clean_label": "Horsehead Nebula",
      "clean_description": "Hashtag sriracha tumblr ennui letterpress retro five dollar toast cleanse viral.",
      "alternate_spellings": [
        "Pearl"
      ],
      "links": [
        "http://macejkovic-jones.co/harris"
      ]
    },
    {
      "id": "/entities/1b771820-18aa-40d8-9db7-31e78b9c87ef",
      "label": "Zarss",
      "type": "place",
      "short_display": "<span>Zarss.</span>",
      "description": "Thundercats vhs banjo forage 3 wolf moon.",
      "clean_label": "Zarss",
      "clean_description": "Thundercats vhs banjo forage 3 wolf moon.",
      "alternate_spellings": [
        "Acid Betty"
      ],
      "links": [
        "http://dickens.name/gwendolyn.johnson"
      ]
    },
    {
      "id": "/entities/24c07691-5762-4fda-8c5e-5d940af77279",
      "label": "North West Ripple",
      "type": "place",
      "short_display": "<span>North West Ripple.</span>",
      "description": "Tattooed try-hard cardigan quinoa squid forage vegan.",
      "clean_label": "North West Ripple",
      "clean_description": "Tattooed try-hard cardigan quinoa squid forage vegan.",
      "alternate_spellings": [
        "Kim Chi"
      ],
      "links": [
        "http://hackett-jakubowski.info/dwayne"
      ]
    },
    {
      "id": "/entities/27e0dd63-39b7-411f-a701-e131899263ed",
      "label": "<i>Han Dold City</i>",
      "type": "place",
      "short_display": "<span><i>Han Dold City</i>.</span>",
      "description": "Pbr&b kinfolk marfa church-key meh.",
      "clean_label": "Han Dold City",
      "clean_description": "Pbr&amp;b kinfolk marfa church-key meh.",
      "alternate_spellings": [
        "Tatianna"
      ],
      "links": [
        "http://muller.info/pearl.littel"
      ]
    },
    {
      "id": "/entities/2805aed1-02dc-45c7-b79c-946f31c22407",
      "label": "Highgate Cemetery",
      "type": "place",
      "short_display": "<span>Highgate Cemetery.</span>",
      "description": "Chicharrones <i>direct trade skateboard cliche disrupt microdosing</i> neutra.",
      "clean_label": "Highgate Cemetery",
      "clean_description": "Chicharrones direct trade skateboard cliche disrupt microdosing neutra.",
      "alternate_spellings": [
        "Miss Fame"
      ],
      "links": [
        "http://hand.name/jefferson.osinski"
      ]
    },
    {
      "id": "/entities/2bab8cf5-1156-4cb5-94a8-45bf232362e5",
      "label": "<i>Rupert</i>",
      "type": "place",
      "short_display": "<span><i>Rupert</i>.</span>",
      "description": "Mixtape <i>migas phlogiston seitan forage yuccie etsy church-key</i> meggings.",
      "clean_label": "Rupert",
      "clean_description": "Mixtape migas phlogiston seitan forage yuccie etsy church-key meggings.",
      "alternate_spellings": [
        "Joslyn Fox"
      ],
      "links": [
        "http://steuber.org/gerald.hane"
      ]
    },
    {
      "id": "/entities/2bb2723d-d65b-48e5-b5d0-566c69002c93",
      "label": "London",
      "type": "place",
      "short_display": "<span>London.</span>",
      "description": "Meh poutine gluten-free neutra viral banjo letterpress tacos five dollar toast.",
      "clean_label": "London",
      "clean_description": "Meh poutine gluten-free neutra viral banjo letterpress tacos five dollar toast.",
      "alternate_spellings": [
        "Nina Bonina Brown"
      ],
      "links": [
        "http://toy-leffler.info/michel"
      ]
    },
    {
      "id": "/entities/2bc4bfab-6324-4799-bc15-76efec81b0ac",
      "label": "<i>Madagascar</i>",
      "type": "place",
      "short_display": "<span><i>Madagascar</i>.</span>",
      "description": "Polaroid pitchfork poutine pour-over umami raw denim seitan kombucha whatever.",
      "clean_label": "Madagascar",
      "clean_description": "Polaroid pitchfork poutine pour-over umami raw denim seitan kombucha whatever.",
      "alternate_spellings": [
        "Robbie Turner"
      ],
      "links": [
        "http://dare.org/norman.lockman"
      ]
    },
    {
      "id": "/entities/2d4098af-ce15-40ea-bda6-f060d924fe49",
      "label": "Ibiza",
      "type": "place",
      "short_display": "<span>Ibiza.</span>",
      "description": "Beard <i>five dollar toast tousled skateboard vinegar crucifix trust</i> fund.",
      "clean_label": "Ibiza",
      "clean_description": "Beard five dollar toast tousled skateboard vinegar crucifix trust fund.",
      "alternate_spellings": [
        "Detox"
      ],
      "links": [
        "http://lynch.co/truman.hyatt"
      ]
    },
    {
      "id": "/entities/2de0baa0-f133-4532-9787-40423705596b",
      "label": "<i>Western Spiral Arm</i>",
      "type": "place",
      "short_display": "<span><i>Western Spiral Arm</i>.</span>",
      "description": "Roof <i>scenester microdosing cray</i> hammock.",
      "clean_label": "Western Spiral Arm",
      "clean_description": "Roof scenester microdosing cray hammock.",
      "alternate_spellings": [
        "Monique Heart"
      ],
      "links": [
        "http://okeefe.name/hannah"
      ]
    },
    {
      "id": "/entities/3416570c-5455-45fd-a1cc-677b7d919590",
      "label": "<i>Stavromula Beta</i>",
      "type": "place",
      "short_display": "<span><i>Stavromula Beta</i>.</span>",
      "description": "Cleanse semiotics tattooed chambray.",
      "clean_label": "Stavromula Beta",
      "clean_description": "Cleanse semiotics tattooed chambray.",
      "alternate_spellings": [
        "Kennedy Davenport"
      ],
      "links": [
        "http://oconner-sawayn.biz/annabell"
      ]
    },
    {
      "id": "/entities/34a0e8a9-f5d3-4a49-96b8-2f3562c47263",
      "label": "<i>Seventh Galaxy of Light and Ingenuity</i>",
      "type": "place",
      "short_display": "<span><i>Seventh Galaxy of Light and Ingenuity</i>.</span>",
      "description": "Selfies sriracha pour-over irony migas helvetica wayfarers.",
      "clean_label": "Seventh Galaxy of Light and Ingenuity",
      "clean_description": "Selfies sriracha pour-over irony migas helvetica wayfarers.",
      "alternate_spellings": [
        "Dida Ritz"
      ],
      "links": [
        "http://wiegand-gerhold.co/demarcus"
      ]
    },
    {
      "id": "/entities/366bfbe7-6cd0-4a6c-ac9a-caad24a72779",
      "label": "<i>North West Ripple</i>",
      "type": "place",
      "short_display": "<span><i>North West Ripple</i>.</span>",
      "description": "Tumblr vinegar before they sold out biodiesel crucifix.",
      "clean_label": "North West Ripple",
      "clean_description": "Tumblr vinegar before they sold out biodiesel crucifix.",
      "alternate_spellings": [
        "Brook Lynn Hytes"
      ],
      "links": [
        "http://lemke-senger.com/korey_sanford"
      ]
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 136
        },
        {
          "key": "person",
          "doc_count": 78
        },
        {
          "key": "writing",
          "doc_count": 47
        },
        {
          "key": "attendance",
          "doc_count": 42
        },
        {
          "key": "music",
          "doc_count": 42
        },
        {
          "key": "publication",
          "doc_count": 37
        },
        {
          "key": "work_of_art",
          "doc_count": 37
        },
        {
          "key": "reading",
          "doc_count": 34
        },
        {
          "key": "public_event",
          "doc_count": 33
        },
        {
          "key": "translating",
          "doc_count": 31
        },
        {
          "key": "organization",
          "doc_count": 30
        },
        {
          "key": "production",
          "doc_count": 30
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 6,
    "total_count": 136,
    "links": {
      "self": "http://example.org/entities?page=1&type=place",
      "last": "http://example.org/entities?page=6&type=place",
      "next": "http://example.org/entities?page=2&type=place"
    }
  }
}</pre>
