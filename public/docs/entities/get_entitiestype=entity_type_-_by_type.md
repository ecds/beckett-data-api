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
X-Total-Count: 29
Content-Type: application/json; charset=utf-8
ETag: W/&quot;cdcb6aaff8814e8ba812006394a19e13&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 2973cfb4-56c6-4b9a-ab2d-8e15d2e2b892
X-Runtime: 11.647836
Vary: Origin
Content-Length: 16479</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/05d33900-e048-40df-8293-34c0c1da8586",
      "label": "Postern of Fate",
      "type": "writing",
      "short_display": "<span>Postern of Fate.</span>",
      "description": "Pitchfork <i>gastropub narwhal vinyl vhs ennui whatever</i> austin.",
      "clean_label": "Postern of Fate",
      "clean_description": "Pitchfork gastropub narwhal vinyl vhs ennui whatever austin.",
      "date": "1965-03-20",
      "notes": "Life? Don't talk to me about life.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://predovic.co/murray"
    },
    {
      "id": "http://example.org/entities/101bbb7f-ba03-42da-9cb0-d593351166a9",
      "label": "<i>Time To Murder And Create</i>",
      "type": "writing",
      "short_display": "<span><i>Time To Murder And Create</i>.</span>",
      "description": "Street <i>echo jean shorts marfa typewriter intelligentsia chia swag</i> tofu.",
      "clean_label": "Time To Murder And Create",
      "clean_description": "Street echo jean shorts marfa typewriter intelligentsia chia swag tofu.",
      "date": "1959-08-13",
      "notes": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://kiehn-adams.name/dorsey_koch"
    },
    {
      "id": "http://example.org/entities/1d0aeec0-4bc6-4bb5-8531-463a89e30ffb",
      "label": "<i>The Moving Toyshop</i>",
      "type": "writing",
      "short_display": "<span><i>The Moving Toyshop</i>.</span>",
      "description": "Kogi locavore ramps mustache.",
      "clean_label": "The Moving Toyshop",
      "clean_description": "Kogi locavore ramps mustache.",
      "date": "1952-01-19",
      "notes": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://bergstrom.co/andres"
    },
    {
      "id": "http://example.org/entities/22a1b06e-9de7-4f57-9e9e-160d0ea55cbe",
      "label": "Mr Standfast",
      "type": "writing",
      "short_display": "<span>Mr Standfast.</span>",
      "description": "Heirloom 8-bit selvage wolf quinoa.",
      "clean_label": "Mr Standfast",
      "clean_description": "Heirloom 8-bit selvage wolf quinoa.",
      "date": "1942-03-28",
      "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://schulist.biz/kerry"
    },
    {
      "id": "http://example.org/entities/38231786-9422-4d2a-a70d-0a4356e30789",
      "label": "<i>Françoise Sagan</i>",
      "type": "writing",
      "short_display": "<span><i>Françoise Sagan</i>.</span>",
      "description": "Meditation authentic salvia narwhal 90's forage cardigan.",
      "clean_label": "Françoise Sagan",
      "clean_description": "Meditation authentic salvia narwhal 90's forage cardigan.",
      "date": "1954-11-22",
      "notes": "I think you ought to know I'm feeling very depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://auer.net/danial_reichert"
    },
    {
      "id": "http://example.org/entities/46b571e5-c22e-425e-b9bf-c5b3bdf7900a",
      "label": "<i>For Whom the Bell Tolls</i>",
      "type": "writing",
      "short_display": "<span><i>For Whom the Bell Tolls</i>.</span>",
      "description": "Waistcoat <i>literally mlkshk kitsch mumblecore bespoke wes</i> anderson.",
      "clean_label": "For Whom the Bell Tolls",
      "clean_description": "Waistcoat literally mlkshk kitsch mumblecore bespoke wes anderson.",
      "date": "1942-06-28",
      "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://marquardt-conn.biz/edwin_huels"
    },
    {
      "id": "http://example.org/entities/61333dfd-ef90-4c8a-8fa7-4156f8a69d18",
      "label": "The Golden Apples of the Sun",
      "type": "writing",
      "short_display": "<span>The Golden Apples of the Sun.</span>",
      "description": "Helvetica tofu deep v street butcher taxidermy actually.",
      "clean_label": "The Golden Apples of the Sun",
      "clean_description": "Helvetica tofu deep v street butcher taxidermy actually.",
      "date": "1968-12-22",
      "notes": "Life? Don't talk to me about life.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://berge-rau.org/kerstin"
    },
    {
      "id": "http://example.org/entities/6c29e23d-ce63-4b13-b270-79ba6729b7e3",
      "label": "<i>Behold the Man</i>",
      "type": "writing",
      "short_display": "<span><i>Behold the Man</i>.</span>",
      "description": "Cronut <i>raw denim bushwick leggings</i> franzen.",
      "clean_label": "Behold the Man",
      "clean_description": "Cronut raw denim bushwick leggings franzen.",
      "date": "1963-11-15",
      "notes": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://brakus-turner.io/noel_bernhard"
    },
    {
      "id": "http://example.org/entities/6d6bf09e-c916-4abc-898a-26d5fb940d18",
      "label": "For Whom the Bell Tolls",
      "type": "writing",
      "short_display": "<span>For Whom the Bell Tolls.</span>",
      "description": "Tattooed park tousled sustainable yuccie sartorial twee.",
      "clean_label": "For Whom the Bell Tolls",
      "clean_description": "Tattooed park tousled sustainable yuccie sartorial twee.",
      "date": "1971-07-05",
      "notes": "I won't enjoy it.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://mills.net/merrill"
    },
    {
      "id": "http://example.org/entities/6f873138-152a-4a98-b397-9f478ce5ec1d",
      "label": "Down to a Sunless Sea",
      "type": "writing",
      "short_display": "<span>Down to a Sunless Sea.</span>",
      "description": "Cronut <i>vinegar retro wayfarers helvetica</i> pop-up.",
      "clean_label": "Down to a Sunless Sea",
      "clean_description": "Cronut vinegar retro wayfarers helvetica pop-up.",
      "date": "1961-06-23",
      "notes": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://kihn.biz/selma"
    },
    {
      "id": "http://example.org/entities/75d2088f-5232-4726-b77f-ad32a3c51d29",
      "label": "This Side of Paradise",
      "type": "writing",
      "short_display": "<span>This Side of Paradise.</span>",
      "description": "Hashtag <i>meditation flannel typewriter</i> try-hard.",
      "clean_label": "This Side of Paradise",
      "clean_description": "Hashtag meditation flannel typewriter try-hard.",
      "date": "1944-02-05",
      "notes": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://kessler-jacobs.net/neoma"
    },
    {
      "id": "http://example.org/entities/8830ffd4-b87c-4938-a3c9-b2b1b9fd9fc4",
      "label": "<i>The Glory and the Dream</i>",
      "type": "writing",
      "short_display": "<span><i>The Glory and the Dream</i>.</span>",
      "description": "Lumbersexual microdosing tofu 90's synth tacos shoreditch.",
      "clean_label": "The Glory and the Dream",
      "clean_description": "Lumbersexual microdosing tofu 90's synth tacos shoreditch.",
      "date": "1941-04-28",
      "notes": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://gulgowski.co/manuel"
    },
    {
      "id": "http://example.org/entities/9a263982-cd63-47d2-8e03-68ea8d1f37f3",
      "label": "<i>Things Fall Apart</i>",
      "type": "writing",
      "short_display": "<span><i>Things Fall Apart</i>.</span>",
      "description": "Hella <i>ugh selfies migas shoreditch</i> asymmetrical.",
      "clean_label": "Things Fall Apart",
      "clean_description": "Hella ugh selfies migas shoreditch asymmetrical.",
      "date": "1967-09-19",
      "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://jacobson-mayer.info/myrtie"
    },
    {
      "id": "http://example.org/entities/a417548c-e226-4d1a-9a08-581bd5e5327e",
      "label": "A Catskill Eagle",
      "type": "writing",
      "short_display": "<span>A Catskill Eagle.</span>",
      "description": "Poutine intelligentsia skateboard locavore hella lumbersexual chicharrones chia.",
      "clean_label": "A Catskill Eagle",
      "clean_description": "Poutine intelligentsia skateboard locavore hella lumbersexual chicharrones chia.",
      "date": "1926-06-15",
      "notes": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://russel.biz/geraldo_goldner"
    },
    {
      "id": "http://example.org/entities/a66dd81d-5639-480c-bcbd-7838fbf7ecf0",
      "label": "The Needle's Eye",
      "type": "writing",
      "short_display": "<span>The Needle's Eye.</span>",
      "description": "Vegan <i>loko crucifix shabby chic next level</i> farm-to-table.",
      "clean_label": "The Needle's Eye",
      "clean_description": "Vegan loko crucifix shabby chic next level farm-to-table.",
      "date": "1954-09-22",
      "notes": "I think you ought to know I'm feeling very depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://ratke-renner.info/coy.pacocha"
    },
    {
      "id": "http://example.org/entities/baaba6bd-d9d5-43bd-9c2c-d7c0a40e6261",
      "label": "<i>The Torment of Others</i>",
      "type": "writing",
      "short_display": "<span><i>The Torment of Others</i>.</span>",
      "description": "Gentrify twee post-ironic beard +1 vegan.",
      "clean_label": "The Torment of Others",
      "clean_description": "Gentrify twee post-ironic beard +1 vegan.",
      "date": "1937-04-20",
      "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://cronin.net/carolina"
    },
    {
      "id": "http://example.org/entities/beb5366e-adc7-4b9e-a4d6-2c3794720dbc",
      "label": "The Little Foxes",
      "type": "writing",
      "short_display": "<span>The Little Foxes.</span>",
      "description": "Gastropub roof flannel vice cardigan sustainable.",
      "clean_label": "The Little Foxes",
      "clean_description": "Gastropub roof flannel vice cardigan sustainable.",
      "date": "1947-09-26",
      "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://beer.net/crista"
    },
    {
      "id": "http://example.org/entities/c0f25f99-73ff-4194-b8ff-e03dd220e087",
      "label": "Of Human Bondage",
      "type": "writing",
      "short_display": "<span>Of Human Bondage.</span>",
      "description": "Everyday roof yuccie synth meh salvia schlitz.",
      "clean_label": "Of Human Bondage",
      "clean_description": "Everyday roof yuccie synth meh salvia schlitz.",
      "date": "1943-06-02",
      "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://bechtelar.biz/cassaundra_balistreri"
    },
    {
      "id": "http://example.org/entities/c30071df-011c-4f49-af69-787579f1c929",
      "label": "<i>Oh! To be in England</i>",
      "type": "writing",
      "short_display": "<span><i>Oh! To be in England</i>.</span>",
      "description": "Carry <i>salvia forage deep v sartorial</i> skateboard.",
      "clean_label": "Oh! To be in England",
      "clean_description": "Carry salvia forage deep v sartorial skateboard.",
      "date": "1945-08-29",
      "notes": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://oberbrunner-nikolaus.io/marion"
    },
    {
      "id": "http://example.org/entities/c416ceb5-576d-49a5-93b4-401fddd67fc2",
      "label": "<i>Vanity Fair</i>",
      "type": "writing",
      "short_display": "<span><i>Vanity Fair</i>.</span>",
      "description": "Vegan <i>master direct trade five dollar toast authentic whatever</i> sartorial.",
      "clean_label": "Vanity Fair",
      "clean_description": "Vegan master direct trade five dollar toast authentic whatever sartorial.",
      "date": "1956-08-31",
      "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://swaniawski-vonrueden.biz/katerine_adams"
    },
    {
      "id": "http://example.org/entities/c89f1dcf-48bb-405a-9804-855dbdf63dfc",
      "label": "The Glory and the Dream",
      "type": "writing",
      "short_display": "<span>The Glory and the Dream.</span>",
      "description": "Truffaut yuccie vice organic knausgaard forage skateboard shoreditch.",
      "clean_label": "The Glory and the Dream",
      "clean_description": "Truffaut yuccie vice organic knausgaard forage skateboard shoreditch.",
      "date": "1969-04-06",
      "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://okuneva.com/nathalie_armstrong"
    },
    {
      "id": "http://example.org/entities/c99bc153-5ba4-4e52-ba0e-7b7ac0322241",
      "label": "<i>The Moon by Night</i>",
      "type": "writing",
      "short_display": "<span><i>The Moon by Night</i>.</span>",
      "description": "3 wolf moon vice offal banh mi.",
      "clean_label": "The Moon by Night",
      "clean_description": "3 wolf moon vice offal banh mi.",
      "date": "1938-05-14",
      "notes": "Life? Don't talk to me about life.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://heathcote-conroy.biz/lanita"
    },
    {
      "id": "http://example.org/entities/cd0a28c8-3b75-4eca-984d-02be1c6b254a",
      "label": "A Many-Splendoured Thing",
      "type": "writing",
      "short_display": "<span>A Many-Splendoured Thing.</span>",
      "description": "Carry quinoa photo booth craft beer portland mixtape.",
      "clean_label": "A Many-Splendoured Thing",
      "clean_description": "Carry quinoa photo booth craft beer portland mixtape.",
      "date": "1954-10-05",
      "notes": "Life? Don't talk to me about life.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://powlowski-schaefer.com/ignacio_miller"
    },
    {
      "id": "http://example.org/entities/cfe986f6-68ef-461e-8d80-f61ec7749067",
      "label": "<i>Fear and Trembling</i>",
      "type": "writing",
      "short_display": "<span><i>Fear and Trembling</i>.</span>",
      "description": "Chia <i>readymade raw denim pug meditation</i> squid.",
      "clean_label": "Fear and Trembling",
      "clean_description": "Chia readymade raw denim pug meditation squid.",
      "date": "1953-12-19",
      "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://abbott.co/filiberto"
    },
    {
      "id": "http://example.org/entities/d567d076-2f35-44dd-807f-8094143496b1",
      "label": "In a Dry Season",
      "type": "writing",
      "short_display": "<span>In a Dry Season.</span>",
      "description": "Cliche <i>wayfarers ennui chia</i> portland.",
      "clean_label": "In a Dry Season",
      "clean_description": "Cliche wayfarers ennui chia portland.",
      "date": "1959-12-15",
      "notes": "I won't enjoy it.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://dubuque.org/pandora"
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 131
        },
        {
          "key": "person",
          "doc_count": 84
        },
        {
          "key": "public_event",
          "doc_count": 57
        },
        {
          "key": "production",
          "doc_count": 45
        },
        {
          "key": "music",
          "doc_count": 41
        },
        {
          "key": "organization",
          "doc_count": 39
        },
        {
          "key": "translating",
          "doc_count": 39
        },
        {
          "key": "attendance",
          "doc_count": 36
        },
        {
          "key": "work_of_art",
          "doc_count": 35
        },
        {
          "key": "writing",
          "doc_count": 29
        },
        {
          "key": "publication",
          "doc_count": 25
        },
        {
          "key": "reading",
          "doc_count": 22
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 29,
    "links": {
      "self": "http://example.org/entities?page=1&type=writing",
      "last": "http://example.org/entities?page=2&type=writing",
      "next": "http://example.org/entities?page=2&type=writing"
    }
  }
}</pre>
