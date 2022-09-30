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
X-Total-Count: 41
Content-Type: application/json; charset=utf-8
ETag: W/&quot;13a1b11525453c036f14c30f345f96b9&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ccd6575d-64b4-4bcf-a6ed-e97275646e4e
X-Runtime: 3.195993
Vary: Origin
Content-Length: 19582</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/01005c32-4922-4f08-9ca9-7de59d4fa7d1",
      "label": "The Line of Beauty",
      "type": "translating",
      "short_display": "<section><p><strong>Author</strong> The Allitnils, <strong>Original Title</strong> The Line of Beauty</p>\n<p><strong>Translated into</strong> Gaelic by Gail Andrews</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>",
      "description": "Cred <i>roof actually food truck</i> mixtape.",
      "clean_label": "The Line of Beauty",
      "clean_description": "Cred roof actually food truck mixtape."
    },
    {
      "id": "http://example.org/entities/04daf50f-50da-4ca4-ba9f-857f6350811d",
      "label": "Stark, Gwyn",
      "type": "person",
      "short_display": "<section><p><strong>Gwyn Stark, 1919-1995</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>",
      "description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "clean_label": "Stark, Gwyn",
      "clean_description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me."
    },
    {
      "id": "http://example.org/entities/0b75d3f7-4041-4e81-8b3f-4d42a29d596c",
      "label": "Reading, Normcore bushwick readymade whatever xoxo mumblecore echo yolo.",
      "type": "attendance",
      "short_display": "<section><p><strong>Reading</strong>, Normcore bushwick readymade whatever xoxo mumblecore echo yolo.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Agda</p>\n<p><strong>Place, Date</strong> Richtown, 24 May 1954</p>\n<p><strong>Director</strong> Phouchg</p></section>",
      "description": "Normcore bushwick readymade whatever xoxo mumblecore echo yolo.",
      "clean_label": "Reading, Normcore bushwick readymade whatever xoxo mumblecore echo yolo.",
      "clean_description": "Normcore bushwick readymade whatever xoxo mumblecore echo yolo."
    },
    {
      "id": "http://example.org/entities/0e406162-34cf-46f4-bd14-497c552a599a",
      "label": "An Instant In The Wind",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> An Instant In The Wind</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Trin Tragula</p>\n<p><strong>Date</strong> 1970-12-18.</p></section>",
      "description": "Shoreditch <i>banh mi raw denim taxidermy small batch organic slowcarb</i> kombucha.",
      "clean_label": "An Instant In The Wind",
      "clean_description": "Shoreditch banh mi raw denim taxidermy small batch organic slowcarb kombucha."
    },
    {
      "id": "http://example.org/entities/11aae89c-0580-4e37-b3e6-33f5b3aaaf92",
      "label": "<i>Challenger</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1946-04-28.</strong></p></section>",
      "description": "You <i>can relax now, the max is in</i> control.",
      "clean_label": "Challenger",
      "clean_description": "You can relax now, the max is in control."
    },
    {
      "id": "http://example.org/entities/197dc52d-fe4c-4a57-9b2d-bf3fdedd8f4a",
      "label": "O Jerusalem!",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Danyel Parker</p>\n<p><strong>Title</strong> O Jerusalem!</p>\n<p><strong>Publication</strong> University of Chicago Press.</p></section>",
      "description": "Stumptown <i>portland migas seitan next level paleo vice</i> forage.",
      "clean_label": "O Jerusalem!",
      "clean_description": "Stumptown portland migas seitan next level paleo vice forage."
    },
    {
      "id": "http://example.org/entities/1d131c56-2f03-4b27-8d28-1e446763f7f7",
      "label": "<i>Xaxis</i>",
      "type": "organization",
      "short_display": "<section><p><strong><i>Xaxis</i></strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>",
      "description": "Life? <i>Don't talk to me about</i> life.",
      "clean_label": "Xaxis",
      "clean_description": "Life? Don't talk to me about life."
    },
    {
      "id": "http://example.org/entities/205fc108-577a-4b3d-ac12-1f997084b822",
      "label": "<i>The Sixth Sense</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>The Sixth Sense</i></p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> The Dude <strong>Theatre, City</strong> Heart of Gold, Altenwerthmouth</p>\n<p><strong>Date(s)</strong> 1932-06-17.</p></section>",
      "description": "Aesthetic cliche knausgaard pickled wolf.",
      "clean_label": "The Sixth Sense",
      "clean_description": "Aesthetic cliche knausgaard pickled wolf."
    },
    {
      "id": "http://example.org/entities/23dd4f0e-c07f-4157-bacf-323f230c809b",
      "label": "Theatre, Aesthetic <i>williamsburg park disrupt loko venmo selvage</i> taxidermy.",
      "type": "attendance",
      "short_display": "<section><p><strong>Theatre</strong>, Aesthetic <i>williamsburg park disrupt loko venmo selvage</i> taxidermy.</p>\n<p><strong>Attended with</strong> Karl Hungus and Phouchg</p>\n<p><strong>Place, Date</strong> Lake Tajuana, 05 September 1942</p>\n<p><strong>Director</strong> Agda</p></section>",
      "description": "Aesthetic <i>williamsburg park disrupt loko venmo selvage</i> taxidermy.",
      "clean_label": "Theatre, Aesthetic williamsburg park disrupt loko venmo selvage taxidermy.",
      "clean_description": "Aesthetic williamsburg park disrupt loko venmo selvage taxidermy."
    },
    {
      "id": "http://example.org/entities/28cca49a-f95f-433e-80de-b0949d7b77f6",
      "label": "Radio Broadcast, Chambray yr pork belly deep v letterpress.",
      "type": "attendance",
      "short_display": "<section><p><strong>Radio Broadcast</strong>, Chambray yr pork belly deep v letterpress.</p>\n<p><strong>Attended with</strong> The Dude and Roosta</p>\n<p><strong>Place, Date</strong> East Haefort, 25 May 1944</p>\n<p><strong>Director</strong> Grunthos the Flatulent</p></section>",
      "description": "Chambray yr pork belly deep v letterpress.",
      "clean_label": "Radio Broadcast, Chambray yr pork belly deep v letterpress.",
      "clean_description": "Chambray yr pork belly deep v letterpress."
    },
    {
      "id": "http://example.org/entities/3ae3b04b-0bce-480f-bf35-0d6cae7330ab",
      "label": "Frogstar World A",
      "type": "organization",
      "short_display": "<section><p><strong>Frogstar World A</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Frogstar World A",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/4122da0e-1858-4ab4-9c4b-8b23419ec5d3",
      "label": "<i>Strange Relationship</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> <i>Strange Relationship</i></p>\n<p><strong>Description</strong> Kombucha <i>retro synth freegan</i> hashtag.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>",
      "description": "Kombucha <i>retro synth freegan</i> hashtag.",
      "clean_label": "Strange Relationship",
      "clean_description": "Kombucha retro synth freegan hashtag."
    },
    {
      "id": "http://example.org/entities/457597fa-1d0e-4139-9095-0cc4807d6066",
      "label": "The Green Bay Tree",
      "type": "translating",
      "short_display": "<section><p><strong>Author</strong> Garkbit, <strong>Original Title</strong> The Green Bay Tree</p>\n<p><strong>Translated into</strong> Finnish by Fenchurch</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>",
      "description": "Normcore <i>asymmetrical trust fund</i> tousled.",
      "clean_label": "The Green Bay Tree",
      "clean_description": "Normcore asymmetrical trust fund tousled."
    },
    {
      "id": "http://example.org/entities/4a44fc60-2c70-49dc-9b53-2fdb919a8e60",
      "label": "Theatre, Keffiyeh <i>postironic hashtag marfa shoreditch bicycle</i> rights.",
      "type": "attendance",
      "short_display": "<section><p><strong>Theatre</strong>, Keffiyeh <i>postironic hashtag marfa shoreditch bicycle</i> rights.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Emily Saunders</p>\n<p><strong>Place, Date</strong> Swaniawskiview, 11 June 1949</p>\n<p><strong>Director</strong> Genghis Khan</p></section>",
      "description": "Keffiyeh <i>postironic hashtag marfa shoreditch bicycle</i> rights.",
      "clean_label": "Theatre, Keffiyeh postironic hashtag marfa shoreditch bicycle rights.",
      "clean_description": "Keffiyeh postironic hashtag marfa shoreditch bicycle rights."
    },
    {
      "id": "http://example.org/entities/4b143689-3ab8-4d55-a617-30a86e49c999",
      "label": "Predovic, Daniele",
      "type": "person",
      "short_display": "<section><p><strong>Daniele Predovic, 1917-1983</strong></p>\n<p>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</p></section>",
      "description": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
      "clean_label": "Predovic, Daniele",
      "clean_description": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one."
    },
    {
      "id": "http://example.org/entities/538ddb1f-a88e-4dbd-a6e5-73344bc8dcd0",
      "label": "Asbleg",
      "type": "place",
      "short_display": "<section><p><strong>Asbleg</strong></p>\n<p>Blog <i>dreamcatcher truffaut art party xoxo</i> mixtape.</p></section>",
      "description": "Blog <i>dreamcatcher truffaut art party xoxo</i> mixtape.",
      "clean_label": "Asbleg",
      "clean_description": "Blog dreamcatcher truffaut art party xoxo mixtape."
    },
    {
      "id": "http://example.org/entities/5a6fda69-1258-403a-a369-fc20254e0536",
      "label": "<i>Elsevier</i>",
      "type": "publication",
      "short_display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> <i>Elsevier</i></p>\n<p><strong>Translator</strong> Bowerick Wowbagger</p>\n<p><strong>Publication</strong> Lo-fi plaid etsy chia cardigan pickled skateboard bicycle rights.</p></section>",
      "description": "Swag yr leggings muggle magic bitters next level marfa.",
      "clean_label": "Elsevier",
      "clean_description": "Swag yr leggings muggle magic bitters next level marfa."
    },
    {
      "id": "http://example.org/entities/5bfd6f4b-eac5-4463-a98b-5618c727ffbd",
      "label": "<i>Guitar</i>",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Vroomfondel</p>\n<p><strong>Title</strong> <i>Guitar</i></p>\n<p><strong>Description</strong> Wes anderson pickled gentrify leggings lomo mixtape helvetica.</p></section>",
      "description": "Wes anderson pickled gentrify leggings lomo mixtape helvetica.",
      "clean_label": "Guitar",
      "clean_description": "Wes anderson pickled gentrify leggings lomo mixtape helvetica."
    },
    {
      "id": "http://example.org/entities/63d1bf77-3d6c-4c65-8b3d-9518f828a98d",
      "label": "<i>The Other Side of Silence</i>",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Lorina Huel DO</p>\n<p><strong>Title</strong> <i>The Other Side of Silence</i></p>\n<p><strong>Publication</strong> Random House.</p></section>",
      "description": "Banjo pbrb celiac chillwave.",
      "clean_label": "The Other Side of Silence",
      "clean_description": "Banjo pbrb celiac chillwave."
    },
    {
      "id": "http://example.org/entities/8039bbe6-6d4e-4292-ad1b-667f6e76eeb9",
      "label": "Platoon",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> Platoon</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Jackie Treehorn <strong>Theatre, City</strong> Bistromath, Charlotteville</p>\n<p><strong>Date(s)</strong> 1969-09-04.</p></section>",
      "description": "Photo <i>booth hoodie butcher food truck cronut chillwave</i> slowcarb.",
      "clean_label": "Platoon",
      "clean_description": "Photo booth hoodie butcher food truck cronut chillwave slowcarb."
    },
    {
      "id": "http://example.org/entities/87df9620-9bf6-4111-8329-d760e0918d78",
      "label": "<i>Sqornshellous Zeta</i>",
      "type": "organization",
      "short_display": "<section><p><strong><i>Sqornshellous Zeta</i></strong></p>\n<p>I won't enjoy it.</p></section>",
      "description": "I won't enjoy it.",
      "clean_label": "Sqornshellous Zeta",
      "clean_description": "I won't enjoy it."
    },
    {
      "id": "http://example.org/entities/89d79cea-1c4c-4c89-9608-bb1ca80d220c",
      "label": "Open University Press",
      "type": "publication",
      "short_display": "<section><p><strong>Author</strong> Jesus Quintana</p>\n<p><strong>Title</strong> Open University Press</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Publication</strong> Jean shorts photo booth plaid loko sustainable listicle small batch 90's.</p></section>",
      "description": "Fashion <i>axe authentic thundercats waistcoat glutenfree listicle green</i> juice.",
      "clean_label": "Open University Press",
      "clean_description": "Fashion axe authentic thundercats waistcoat glutenfree listicle green juice."
    },
    {
      "id": "http://example.org/entities/a52e9ab0-54c8-4ead-ad67-d1fc0f6b70fc",
      "label": "<i>The Mirror Crack'd from Side to Side</i>",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> <i>The Mirror Crack'd from Side to Side</i></p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> Loonquawl and Phouchg</p>\n<p><strong>Date</strong> 1964-03-29.</p></section>",
      "description": "Food <i>truck disrupt biodiesel</i> typewriter.",
      "clean_label": "The Mirror Crack'd from Side to Side",
      "clean_description": "Food truck disrupt biodiesel typewriter."
    },
    {
      "id": "http://example.org/entities/a9658c14-b3a0-4f33-b9ba-25437098031b",
      "label": "Easter Island",
      "type": "place",
      "short_display": "<section><p><strong>Easter Island</strong></p>\n<p>Listicle <i>williamsburg kogi typewriter vinyl distillery fixie</i> slowcarb.</p></section>",
      "description": "Listicle <i>williamsburg kogi typewriter vinyl distillery fixie</i> slowcarb.",
      "clean_label": "Easter Island",
      "clean_description": "Listicle williamsburg kogi typewriter vinyl distillery fixie slowcarb."
    },
    {
      "id": "http://example.org/entities/aec78c57-d877-4b38-b8cf-e64d6503f302",
      "label": "The Big Bang Burger Bar",
      "type": "place",
      "short_display": "<section><p><strong>The Big Bang Burger Bar</strong></p>\n<p>Tattooed <i>austin viral swag vinegar</i> mustache.</p></section>",
      "description": "Tattooed <i>austin viral swag vinegar</i> mustache.",
      "clean_label": "The Big Bang Burger Bar",
      "clean_description": "Tattooed austin viral swag vinegar mustache."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 41,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "attendance",
          "doc_count": 5
        },
        {
          "key": "music",
          "doc_count": 5
        },
        {
          "key": "reading",
          "doc_count": 4
        },
        {
          "key": "writing",
          "doc_count": 4
        },
        {
          "key": "organization",
          "doc_count": 3
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
          "key": "public_event",
          "doc_count": 3
        },
        {
          "key": "publication",
          "doc_count": 3
        },
        {
          "key": "work_of_art",
          "doc_count": 3
        },
        {
          "key": "translating",
          "doc_count": 2
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 41,
    "links": {
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=2",
      "next": "http://example.org/entities?page=2"
    }
  }
}
~~~

