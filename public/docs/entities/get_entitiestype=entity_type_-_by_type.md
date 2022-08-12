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

<pre>GET /entities?type=writing</pre>

#### Query Parameters

<pre>type: writing</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;type=writing&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=2&amp;type=writing&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&amp;type=writing&gt;; rel=&#39;next&#39;
X-Total-Count: 44
Content-Type: application/json; charset=utf-8
ETag: W/&quot;3948c49721336397bd8add9e61d165f4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 76098afe-725c-451b-a871-53b0afc3c579
X-Runtime: 14.752715
Vary: Origin
Content-Length: 11109</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/058aae0d-8c37-4315-977e-6476c6043b4b",
      "label": "Noli Me Tangere",
      "type": "writing",
      "display_header": "<b>Noli Me Tangere</b>",
      "description": "Beard roof fashion axe bicycle rights flannel try-hard wayfarers vegan mixtape.",
      "clean_label": "Noli Me Tangere",
      "clean_description": "Beard roof fashion axe bicycle rights flannel try-hard wayfarers vegan mixtape."
    },
    {
      "id": "http://example.org/entities/09f7858b-281b-4e81-98c8-786debd9be94",
      "label": "Sleep the Brave",
      "type": "writing",
      "display_header": "<b>Sleep the Brave</b>",
      "description": "Forage <i>xoxo kickstarter sriracha heirloom plaid wolf</i> lumbersexual.",
      "clean_label": "Sleep the Brave",
      "clean_description": "Forage xoxo kickstarter sriracha heirloom plaid wolf lumbersexual."
    },
    {
      "id": "http://example.org/entities/1c43c4be-e360-4619-8bca-b022d4325d01",
      "label": "Alone on a Wide, Wide Sea",
      "type": "writing",
      "display_header": "<b>Alone on a Wide, Wide Sea</b>",
      "description": "Intelligentsia <i>whatever park biodiesel cleanse</i> tilde.",
      "clean_label": "Alone on a Wide, Wide Sea",
      "clean_description": "Intelligentsia whatever park biodiesel cleanse tilde."
    },
    {
      "id": "http://example.org/entities/1f8933d5-3f35-45d5-8bd4-5315f8714d41",
      "label": "A Monstrous Regiment of Women",
      "type": "writing",
      "display_header": "<b>A Monstrous Regiment of Women</b>",
      "description": "Dreamcatcher <i>mlkshk asymmetrical vice disrupt</i> meggings.",
      "clean_label": "A Monstrous Regiment of Women",
      "clean_description": "Dreamcatcher mlkshk asymmetrical vice disrupt meggings."
    },
    {
      "id": "http://example.org/entities/22ba83ed-7b71-47f2-bc76-d8bc5245b19f",
      "label": "<i>Cover Her Face</i>",
      "type": "writing",
      "display_header": "<b><i>Cover Her Face</i></b>",
      "description": "Cleanse mustache pug photo booth.",
      "clean_label": "Cover Her Face",
      "clean_description": "Cleanse mustache pug photo booth."
    },
    {
      "id": "http://example.org/entities/2398ff16-7a48-48e8-a39b-3726de31f3f5",
      "label": "Mr Standfast",
      "type": "writing",
      "display_header": "<b>Mr Standfast</b>",
      "description": "Butcher <i>cold-pressed drinking vinyl pabst green juice</i> yr.",
      "clean_label": "Mr Standfast",
      "clean_description": "Butcher cold-pressed drinking vinyl pabst green juice yr."
    },
    {
      "id": "http://example.org/entities/2608f42f-0a6a-4260-86dc-8625c0e16c8b",
      "label": "<i>The Painted Veil</i>",
      "type": "writing",
      "display_header": "<b><i>The Painted Veil</i></b>",
      "description": "Biodiesel mlkshk tattooed retro locavore.",
      "clean_label": "The Painted Veil",
      "clean_description": "Biodiesel mlkshk tattooed retro locavore."
    },
    {
      "id": "http://example.org/entities/2bacddc6-4201-4f8d-8761-d7859d114141",
      "label": "Surprised by Joy",
      "type": "writing",
      "display_header": "<b>Surprised by Joy</b>",
      "description": "Taxidermy <i>yolo narwhal lomo</i> everyday.",
      "clean_label": "Surprised by Joy",
      "clean_description": "Taxidermy yolo narwhal lomo everyday."
    },
    {
      "id": "http://example.org/entities/32875397-4df3-4f4c-9d8f-7b32433374df",
      "label": "No Country for Old Men",
      "type": "writing",
      "display_header": "<b>No Country for Old Men</b>",
      "description": "8-bit <i>squid meggings phlogiston shoreditch venmo meh</i> kickstarter.",
      "clean_label": "No Country for Old Men",
      "clean_description": "8-bit squid meggings phlogiston shoreditch venmo meh kickstarter."
    },
    {
      "id": "http://example.org/entities/47a05321-c0a3-4e58-9d5d-df0a1efb931d",
      "label": "<i>Look to Windward</i>",
      "type": "writing",
      "display_header": "<b><i>Look to Windward</i></b>",
      "description": "Fanny pack xoxo sustainable pabst deep v williamsburg lo-fi gastropub fingerstache.",
      "clean_label": "Look to Windward",
      "clean_description": "Fanny pack xoxo sustainable pabst deep v williamsburg lo-fi gastropub fingerstache."
    },
    {
      "id": "http://example.org/entities/4af20542-2c66-4436-a760-3c6c5854350d",
      "label": "After Many a Summer Dies the Swan",
      "type": "writing",
      "display_header": "<b>After Many a Summer Dies the Swan</b>",
      "description": "Pabst occupy selfies meggings.",
      "clean_label": "After Many a Summer Dies the Swan",
      "clean_description": "Pabst occupy selfies meggings."
    },
    {
      "id": "http://example.org/entities/6165adb0-cdff-4708-9d05-d439601ecb5e",
      "label": "Eyeless in Gaza",
      "type": "writing",
      "display_header": "<b>Eyeless in Gaza</b>",
      "description": "Chillwave pickled vinegar try-hard.",
      "clean_label": "Eyeless in Gaza",
      "clean_description": "Chillwave pickled vinegar try-hard."
    },
    {
      "id": "http://example.org/entities/6373fc56-8c42-472b-ab38-07505c8ded10",
      "label": "The Heart Is a Lonely Hunter",
      "type": "writing",
      "display_header": "<b>The Heart Is a Lonely Hunter</b>",
      "description": "Dreamcatcher gentrify vinyl actually fingerstache squid.",
      "clean_label": "The Heart Is a Lonely Hunter",
      "clean_description": "Dreamcatcher gentrify vinyl actually fingerstache squid."
    },
    {
      "id": "http://example.org/entities/643585dc-cc90-43c2-bf3a-a7ac22e67eec",
      "label": "Consider the Lilies",
      "type": "writing",
      "display_header": "<b>Consider the Lilies</b>",
      "description": "Helvetica readymade street next level chia.",
      "clean_label": "Consider the Lilies",
      "clean_description": "Helvetica readymade street next level chia."
    },
    {
      "id": "http://example.org/entities/681862d2-a190-4be8-9b90-dd41de385047",
      "label": "<i>Consider Phlebas</i>",
      "type": "writing",
      "display_header": "<b><i>Consider Phlebas</i></b>",
      "description": "Trust <i>fund cray truffaut muggle magic cold-pressed yr leggings beard</i> franzen.",
      "clean_label": "Consider Phlebas",
      "clean_description": "Trust fund cray truffaut muggle magic cold-pressed yr leggings beard franzen."
    },
    {
      "id": "http://example.org/entities/692a9d69-4311-46ba-b8df-44f9fd5f0568",
      "label": "<i>Tiger! Tiger!</i>",
      "type": "writing",
      "display_header": "<b><i>Tiger! Tiger!</i></b>",
      "description": "Cold-pressed <i>green juice xoxo dreamcatcher next level</i> migas.",
      "clean_label": "Tiger! Tiger!",
      "clean_description": "Cold-pressed green juice xoxo dreamcatcher next level migas."
    },
    {
      "id": "http://example.org/entities/6e31b2db-75d6-4e2e-9335-2e855c5c86cd",
      "label": "The Waste Land",
      "type": "writing",
      "display_header": "<b>The Waste Land</b>",
      "description": "Blog <i>schlitz etsy asymmetrical gentrify normcore kale chips</i> yolo.",
      "clean_label": "The Waste Land",
      "clean_description": "Blog schlitz etsy asymmetrical gentrify normcore kale chips yolo."
    },
    {
      "id": "http://example.org/entities/708ac6bf-8658-4ca9-adb3-b4cf9145de1b",
      "label": "<i>Taming a Sea Horse</i>",
      "type": "writing",
      "display_header": "<b><i>Taming a Sea Horse</i></b>",
      "description": "Food <i>truck yolo +1 meditation distillery listicle craft beer</i> mixtape.",
      "clean_label": "Taming a Sea Horse",
      "clean_description": "Food truck yolo +1 meditation distillery listicle craft beer mixtape."
    },
    {
      "id": "http://example.org/entities/71a83b16-47ce-4eae-a318-507c20068343",
      "label": "Eyeless in Gaza",
      "type": "writing",
      "display_header": "<b>Eyeless in Gaza</b>",
      "description": "Vhs beard raw denim post-ironic kickstarter meh.",
      "clean_label": "Eyeless in Gaza",
      "clean_description": "Vhs beard raw denim post-ironic kickstarter meh."
    },
    {
      "id": "http://example.org/entities/7512b5d2-7166-4cb5-888f-1230c13c94b9",
      "label": "<i>Endless Night</i>",
      "type": "writing",
      "display_header": "<b><i>Endless Night</i></b>",
      "description": "Fashion <i>axe synth cornhole before they sold out</i> butcher.",
      "clean_label": "Endless Night",
      "clean_description": "Fashion axe synth cornhole before they sold out butcher."
    },
    {
      "id": "http://example.org/entities/814c8ce7-06ae-4ef4-8958-699a4b060507",
      "label": "An Instant In The Wind",
      "type": "writing",
      "display_header": "<b>An Instant In The Wind</b>",
      "description": "Readymade <i>flexitarian typewriter craft beer gentrify</i> lumbersexual.",
      "clean_label": "An Instant In The Wind",
      "clean_description": "Readymade flexitarian typewriter craft beer gentrify lumbersexual."
    },
    {
      "id": "http://example.org/entities/87ab2d7f-d6c7-4cd8-84bb-b09c4d90dbba",
      "label": "The Way Through the Woods",
      "type": "writing",
      "display_header": "<b>The Way Through the Woods</b>",
      "description": "Single-origin coffee keffiyeh beard pitchfork.",
      "clean_label": "The Way Through the Woods",
      "clean_description": "Single-origin coffee keffiyeh beard pitchfork."
    },
    {
      "id": "http://example.org/entities/96e7258a-82e7-495a-8484-bf00aac41c93",
      "label": "<i>The Mirror Crack'd from Side to Side</i>",
      "type": "writing",
      "display_header": "<b><i>The Mirror Crack'd from Side to Side</i></b>",
      "description": "Tousled hella cliche vhs kickstarter iphone sriracha knausgaard sustainable.",
      "clean_label": "The Mirror Crack'd from Side to Side",
      "clean_description": "Tousled hella cliche vhs kickstarter iphone sriracha knausgaard sustainable."
    },
    {
      "id": "http://example.org/entities/9f489e71-668b-4ef1-8127-533c37db409a",
      "label": "<i>I Know Why the Caged Bird Sings</i>",
      "type": "writing",
      "display_header": "<b><i>I Know Why the Caged Bird Sings</i></b>",
      "description": "Put <i>a bird on it marfa pug photo booth actually before they sold out</i> post-ironic.",
      "clean_label": "I Know Why the Caged Bird Sings",
      "clean_description": "Put a bird on it marfa pug photo booth actually before they sold out post-ironic."
    },
    {
      "id": "http://example.org/entities/a6525118-fa28-40fb-bef4-4262f7699682",
      "label": "<i>Edna O'Brien</i>",
      "type": "writing",
      "display_header": "<b><i>Edna O'Brien</i></b>",
      "description": "Tumblr diy offal poutine vegan.",
      "clean_label": "Edna O'Brien",
      "clean_description": "Tumblr diy offal poutine vegan."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 129
        },
        {
          "key": "person",
          "doc_count": 82
        },
        {
          "key": "work_of_art",
          "doc_count": 50
        },
        {
          "key": "writing",
          "doc_count": 44
        },
        {
          "key": "organization",
          "doc_count": 39
        },
        {
          "key": "public_event",
          "doc_count": 35
        },
        {
          "key": "publication",
          "doc_count": 30
        },
        {
          "key": "music",
          "doc_count": 29
        },
        {
          "key": "reading",
          "doc_count": 29
        },
        {
          "key": "attendance",
          "doc_count": 26
        },
        {
          "key": "production",
          "doc_count": 24
        },
        {
          "key": "translating",
          "doc_count": 23
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 44,
    "links": {
      "self": "http://example.org/entities?page=1&type=writing",
      "last": "http://example.org/entities?page=2&type=writing",
      "next": "http://example.org/entities?page=2&type=writing"
    }
  }
}</pre>
