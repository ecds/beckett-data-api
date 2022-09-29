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
Link: &lt;http://example.org/entities?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 29
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6eed73ba7047966ae5dd410cd8b46163&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 422f597e-2364-41ca-8019-cec117a94676
X-Runtime: 2.924082
Vary: Origin
Content-Length: 19422</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/01a7768f-e1f1-4b0a-b01b-a48df53501a3",
      "label": "<i>The Last Temptation</i>",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Cedrick Harber</p>\n<p><strong>Title</strong> <i>The Last Temptation</i></p>\n<p><strong>Publication</strong> Newnes.</p></section>",
      "description": "Ugh <i>glutenfree scenester fixie slowcarb</i> tattooed.",
      "clean_label": "The Last Temptation",
      "clean_description": "Ugh glutenfree scenester fixie slowcarb tattooed."
    },
    {
      "id": "http://example.org/entities/045f5912-f187-492e-a620-e9f91fdd6b1f",
      "label": "Bethselamin",
      "type": "organization",
      "short_display": "<section><p><strong>Bethselamin</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>",
      "description": "Life? <i>Don't talk to me about</i> life.",
      "clean_label": "Bethselamin",
      "clean_description": "Life? Don't talk to me about life."
    },
    {
      "id": "http://example.org/entities/0f9db80a-18cc-49ce-9ad5-0b5943c0e076",
      "label": "Dangrabad Beta",
      "type": "organization",
      "short_display": "<section><p><strong>Dangrabad Beta</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Dangrabad Beta",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/1eabbc55-83f5-41f7-ad98-0dc09ad4510a",
      "label": "Batz, Salvatore",
      "type": "person",
      "short_display": "<section><p><strong>Salvatore Batz, 1908-1984</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>",
      "description": "I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.",
      "clean_label": "Batz, Salvatore",
      "clean_description": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one."
    },
    {
      "id": "http://example.org/entities/258399e7-4723-4984-b0a1-59f6d5f6cbc0",
      "label": "Reading, Intelligentsia <i>pork belly viral cred blue bottle aesthetic</i> iphone.",
      "type": "attendance",
      "short_display": "<section><p><strong>Reading</strong>, Intelligentsia <i>pork belly viral cred blue bottle aesthetic</i> iphone.</p>\n<p><strong>Attended with</strong> Donny and Hactar</p>\n<p><strong>Place, Date</strong> East Ryan, 20 March 1953</p>\n<p><strong>Director</strong> Majikthise</p></section>",
      "description": "Intelligentsia <i>pork belly viral cred blue bottle aesthetic</i> iphone.",
      "clean_label": "Reading, Intelligentsia pork belly viral cred blue bottle aesthetic iphone.",
      "clean_description": "Intelligentsia pork belly viral cred blue bottle aesthetic iphone."
    },
    {
      "id": "http://example.org/entities/337946c4-08aa-41fa-9995-77c77aff99e4",
      "label": "Shutter Island",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> Shutter Island</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> RW6, West Jeromy</p>\n<p><strong>Date(s)</strong> 1932-10-04.</p></section>",
      "description": "Art <i>party carry dreamcatcher hashtag umami</i> loko.",
      "clean_label": "Shutter Island",
      "clean_description": "Art party carry dreamcatcher hashtag umami loko."
    },
    {
      "id": "http://example.org/entities/440440f5-b944-4043-ba34-072e553087ac",
      "label": "Abernathy, Sharla",
      "type": "person",
      "short_display": "<section><p><strong>Sharla Abernathy, 1918-1983</strong></p>\n<p>Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.</p></section>",
      "description": "Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.",
      "clean_label": "Abernathy, Sharla",
      "clean_description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't."
    },
    {
      "id": "http://example.org/entities/47db9fc0-95e7-4e98-9848-809e3da3ae9f",
      "label": "<i>Bistro Illegal</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Bistro Illegal</i></strong></p>\n<p>Glutenfree cred health locavore mlkshk vinyl.</p></section>",
      "description": "Glutenfree cred health locavore mlkshk vinyl.",
      "clean_label": "Bistro Illegal",
      "clean_description": "Glutenfree cred health locavore mlkshk vinyl."
    },
    {
      "id": "http://example.org/entities/4bef59f7-e94b-4ca0-bd8c-1f3202452007",
      "label": "<i>Atlantis</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1937-08-03.</strong></p></section>",
      "description": "We <i>gonna play in the sunshine, we're going to get over. I'm feeling kinda lucky tonight I'm gonna find my four leaf</i> clover.",
      "clean_label": "Atlantis",
      "clean_description": "We gonna play in the sunshine, we're going to get over. I'm feeling kinda lucky tonight I'm gonna find my four leaf clover."
    },
    {
      "id": "http://example.org/entities/4f34fe33-e82b-4e41-ac0e-04b0a13e642f",
      "label": "<i>An Acceptable Time</i>",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Trudi Franecki JD</p>\n<p><strong>Title</strong> <i>An Acceptable Time</i></p>\n<p><strong>Publication</strong> University of Nebraska Press.</p></section>",
      "description": "Chia echo umami blog.",
      "clean_label": "An Acceptable Time",
      "clean_description": "Chia echo umami blog."
    },
    {
      "id": "http://example.org/entities/50962309-1c7c-4b86-989b-5a8f14f849b6",
      "label": "Kakrafoon Kappa",
      "type": "place",
      "short_display": "<section><p><strong>Kakrafoon Kappa</strong></p>\n<p>Cornhole <i>kitsch tote bag fanny pack retro before they sold out direct trade organic</i> health.</p></section>",
      "description": "Cornhole <i>kitsch tote bag fanny pack retro before they sold out direct trade organic</i> health.",
      "clean_label": "Kakrafoon Kappa",
      "clean_description": "Cornhole kitsch tote bag fanny pack retro before they sold out direct trade organic health."
    },
    {
      "id": "http://example.org/entities/737c8b07-d71f-469f-9d62-ef9492ecbb67",
      "label": "The Last Enemy",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Evalyn McDermott</p>\n<p><strong>Title</strong> The Last Enemy</p>\n<p><strong>Publication</strong> Harvard University Press.</p></section>",
      "description": "Occupy <i>skateboard goth popup selvage</i> churchkey.",
      "clean_label": "The Last Enemy",
      "clean_description": "Occupy skateboard goth popup selvage churchkey."
    },
    {
      "id": "http://example.org/entities/78046f52-e0ba-4460-a19d-1ac8c5490f5d",
      "label": "<i>Paths of Glory</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>Paths of Glory</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Krikkit One, Walshbury</p>\n<p><strong>Date(s)</strong> 1963-12-03.</p></section>",
      "description": "Scenester next level irony tryhard offal.",
      "clean_label": "Paths of Glory",
      "clean_description": "Scenester next level irony tryhard offal."
    },
    {
      "id": "http://example.org/entities/788501bb-796f-4a87-b576-6c4d8e12a66d",
      "label": "<i>Betelgeuse</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Betelgeuse</i></strong></p>\n<p>Bespoke <i>kitsch tofu lomo tumblr health</i> roof.</p></section>",
      "description": "Bespoke <i>kitsch tofu lomo tumblr health</i> roof.",
      "clean_label": "Betelgeuse",
      "clean_description": "Bespoke kitsch tofu lomo tumblr health roof."
    },
    {
      "id": "http://example.org/entities/7c20aae9-f23f-4bfa-8409-7b2bcc5f0819",
      "label": "<i>Pink Cashmere</i>",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Arthur Dent</p>\n<p><strong>Title</strong> <i>Pink Cashmere</i></p>\n<p><strong>Description</strong> Viral cardigan cleanse jean shorts bespoke pug.</p></section>",
      "description": "Viral cardigan cleanse jean shorts bespoke pug.",
      "clean_label": "Pink Cashmere",
      "clean_description": "Viral cardigan cleanse jean shorts bespoke pug."
    },
    {
      "id": "http://example.org/entities/941dcaaa-a127-4d72-b0a5-f3c64ac2504a",
      "label": "Challenger",
      "type": "public_event",
      "short_display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1944-06-28.</strong></p></section>",
      "description": "There's <i>a brand new groove going 'round, in your funky town, and the kick drum is the</i> fault.",
      "clean_label": "Challenger",
      "clean_description": "There's a brand new groove going 'round, in your funky town, and the kick drum is the fault."
    },
    {
      "id": "http://example.org/entities/9dc1fa20-da4c-40ca-b520-184551d025cf",
      "label": "Radio Broadcast, Beard <i>keffiyeh glutenfree listicle vice intelligentsia bitters farmtotable</i> venmo.",
      "type": "attendance",
      "short_display": "<section><p><strong>Radio Broadcast</strong>, Beard <i>keffiyeh glutenfree listicle vice intelligentsia bitters farmtotable</i> venmo.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Majikthise</p>\n<p><strong>Place, Date</strong> West Deloras, 11 February 1947</p>\n<p><strong>Director</strong> Elvis</p></section>",
      "description": "Beard <i>keffiyeh glutenfree listicle vice intelligentsia bitters farmtotable</i> venmo.",
      "clean_label": "Radio Broadcast, Beard keffiyeh glutenfree listicle vice intelligentsia bitters farmtotable venmo.",
      "clean_description": "Beard keffiyeh glutenfree listicle vice intelligentsia bitters farmtotable venmo."
    },
    {
      "id": "http://example.org/entities/a53f4046-c0aa-422c-a845-e5221b6909bc",
      "label": "<i>Faber and Faber</i>",
      "type": "publication",
      "short_display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Faber and Faber</i></p>\n<p><strong>Translator</strong> Grunthos the Flatulent</p>\n<p><strong>Publication</strong> Quinoa schlitz slow-carb butcher knausgaard.</p></section>",
      "description": "Meh keffiyeh portland kale chips readymade.",
      "clean_label": "Faber and Faber",
      "clean_description": "Meh keffiyeh portland kale chips readymade."
    },
    {
      "id": "http://example.org/entities/ae337141-72d4-4471-9526-4e08011d59f1",
      "label": "<i>Atlantis</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1937-09-24.</strong></p></section>",
      "description": "Are <i>your smiles, are your smiles for</i> me?",
      "clean_label": "Atlantis",
      "clean_description": "Are your smiles, are your smiles for me?"
    },
    {
      "id": "http://example.org/entities/aee00129-fa4a-4400-ae36-5e873fc5280e",
      "label": "I Know Why the Caged Bird Sings",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> I Know Why the Caged Bird Sings</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Date</strong> 1946-11-15.</p></section>",
      "description": "Lumbersexual <i>mlkshk knausgaard pinterest kale chips banh mi</i> skateboard.",
      "clean_label": "I Know Why the Caged Bird Sings",
      "clean_description": "Lumbersexual mlkshk knausgaard pinterest kale chips banh mi skateboard."
    },
    {
      "id": "http://example.org/entities/aef65119-c70c-4d60-93c2-a78737e9a6fb",
      "label": "<i>Earth</i>",
      "type": "organization",
      "short_display": "<section><p><strong><i>Earth</i></strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>",
      "description": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "clean_label": "Earth",
      "clean_description": "And then of course I've got this terrible pain in all the diodes down my left side."
    },
    {
      "id": "http://example.org/entities/ca06ed48-eb33-4620-b928-7e53515637cf",
      "label": "<i>Challenger</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1944-09-01.</strong></p></section>",
      "description": "We all have our problems. Some big, some are small. Soon all of our problems will be taken by the cross.",
      "clean_label": "Challenger",
      "clean_description": "We all have our problems. Some big, some are small. Soon all of our problems will be taken by the cross."
    },
    {
      "id": "http://example.org/entities/d61b602e-9ecd-4249-a132-ff5b3ef9fcd6",
      "label": "Greenfelder, Wilbert",
      "type": "person",
      "short_display": "<section><p><strong>Wilbert Greenfelder, 1927-1984</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Greenfelder, Wilbert",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/decb547c-d9b8-456a-bae5-b5bf046a83c0",
      "label": "<i>She's Always In My Hair</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Reg Nullify</p>\n<p><strong>Title</strong> <i>She's Always In My Hair</i></p>\n<p><strong>Description</strong> Street <i>meggings next level trust fund vegan mixtape food truck</i> tofu.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>",
      "description": "Street <i>meggings next level trust fund vegan mixtape food truck</i> tofu.",
      "clean_label": "She's Always In My Hair",
      "clean_description": "Street meggings next level trust fund vegan mixtape food truck tofu."
    },
    {
      "id": "http://example.org/entities/e41a6eb4-0806-4a5d-86a7-0d7e014b8a35",
      "label": "<i>Little Red Corvette</i>",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Little Red Corvette</i></p>\n<p><strong>Description</strong> Intelligentsia <i>master quinoa fashion axe pitchfork ethical carry</i> vinegar.</p></section>",
      "description": "Intelligentsia <i>master quinoa fashion axe pitchfork ethical carry</i> vinegar.",
      "clean_label": "Little Red Corvette",
      "clean_description": "Intelligentsia master quinoa fashion axe pitchfork ethical carry vinegar."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 29,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "organization",
          "doc_count": 5
        },
        {
          "key": "public_event",
          "doc_count": 4
        },
        {
          "key": "person",
          "doc_count": 3
        },
        {
          "key": "place",
          "doc_count": 3
        },
        {
          "key": "production",
          "doc_count": 3
        },
        {
          "key": "reading",
          "doc_count": 3
        },
        {
          "key": "attendance",
          "doc_count": 2
        },
        {
          "key": "music",
          "doc_count": 2
        },
        {
          "key": "writing",
          "doc_count": 2
        },
        {
          "key": "publication",
          "doc_count": 1
        },
        {
          "key": "work_of_art",
          "doc_count": 1
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
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=2",
      "next": "http://example.org/entities?page=2"
    }
  }
}</pre>
