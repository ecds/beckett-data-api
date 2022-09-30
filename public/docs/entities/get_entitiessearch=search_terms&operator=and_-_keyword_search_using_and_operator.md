# Entities API



## GET /entities?search=:search_terms&amp;operator=and - Keyword Search using and operator

### GET /entities

Returns a paginated list of entities from key word search.

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic. | false | null
| operator | By default, results match any words in the query. Use &#39;and&#39; to match all words. | false | or

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=next&amp;operator=and</pre>

#### Query Parameters

<pre>search: next
operator: and</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?operator=and&amp;page=1&amp;search=next&gt;; rel=&#39;self&#39;
X-Total-Count: 21
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c53db1d323db95ae9db3c83f086ca4b4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: cff09e6d-c05f-459a-970d-6481fdea0594
X-Runtime: 3.373552
Vary: Origin
Content-Length: 17351</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/1120b538-29e4-4512-8144-ea90dd043887",
      "label": "Reading, Celiac trust fund next level beard shoreditch cleanse lomo.",
      "type": "attendance",
      "short_display": "<section><p><strong>Reading</strong>, Celiac trust fund next level beard shoreditch cleanse lomo.</p>\n<p><strong>Attended with</strong> Donny and Garkbit</p>\n<p><strong>Place, Date</strong> North Cristobalhaven, 05 August 1926</p>\n<p><strong>Director</strong> Rob McKenna</p></section>",
      "description": "Celiac trust fund next level beard shoreditch cleanse lomo.",
      "clean_label": "Reading, Celiac trust fund next level beard shoreditch cleanse lomo.",
      "clean_description": "Celiac trust fund next level beard shoreditch cleanse lomo."
    },
    {
      "id": "http://example.org/entities/b984268a-ea33-48c6-8004-3b34831d529f",
      "label": "Theatre, Kinfolk <i>xoxo williamsburg next level truffaut tattooed raw</i> denim.",
      "type": "attendance",
      "short_display": "<section><p><strong>Theatre</strong>, Kinfolk <i>xoxo williamsburg next level truffaut tattooed raw</i> denim.</p>\n<p><strong>Attended with</strong> Donny and Garkbit</p>\n<p><strong>Place, Date</strong> West Glennie, 28 June 1926</p>\n<p><strong>Director</strong> Galaxia Woonbeam</p></section>",
      "description": "Kinfolk <i>xoxo williamsburg next level truffaut tattooed raw</i> denim.",
      "clean_label": "Theatre, Kinfolk xoxo williamsburg next level truffaut tattooed raw denim.",
      "clean_description": "Kinfolk xoxo williamsburg next level truffaut tattooed raw denim."
    },
    {
      "id": "http://example.org/entities/8aa2bb78-9e0b-47a6-bebe-3534c664a6fd",
      "label": "Rehearsal, Plaid <i>thundercats tilde distillery wayfarers next level letterpress normcore</i> vice.",
      "type": "attendance",
      "short_display": "<section><p><strong>Rehearsal</strong>, Plaid <i>thundercats tilde distillery wayfarers next level letterpress normcore</i> vice.</p>\n<p><strong>Attended with</strong> Karl Hungus and Roosta</p>\n<p><strong>Place, Date</strong> Littelborough, 20 January 1951</p>\n<p><strong>Director</strong> Questular Rontok</p></section>",
      "description": "Plaid <i>thundercats tilde distillery wayfarers next level letterpress normcore</i> vice.",
      "clean_label": "Rehearsal, Plaid thundercats tilde distillery wayfarers next level letterpress normcore vice.",
      "clean_description": "Plaid thundercats tilde distillery wayfarers next level letterpress normcore vice."
    },
    {
      "id": "http://example.org/entities/a6eff0ba-8d30-4b9e-8401-b276bd89460a",
      "label": "Money Don't Matter 2 Night",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> Money Don't Matter 2 Night</p>\n<p><strong>Description</strong> Pickled <i>next level banjo</i> authentic.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>",
      "description": "Pickled <i>next level banjo</i> authentic.",
      "clean_label": "Money Don't Matter 2 Night",
      "clean_description": "Pickled next level banjo authentic."
    },
    {
      "id": "http://example.org/entities/f86f376a-7e37-421a-85e7-b422cb51e111",
      "label": "<i>The Big Bang Burger Bar</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>The Big Bang Burger Bar</i></strong></p>\n<p>Postironic <i>beard wayfarers next</i> level.</p></section>",
      "description": "Postironic <i>beard wayfarers next</i> level.",
      "clean_label": "The Big Bang Burger Bar",
      "clean_description": "Postironic beard wayfarers next level."
    },
    {
      "id": "http://example.org/entities/3d2dd905-5bfc-4336-ac7d-d7ed9fe541ab",
      "label": "<i>Take Me With U</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Random Dent</p>\n<p><strong>Title</strong> <i>Take Me With U</i></p>\n<p><strong>Description</strong> Forage aesthetic normcore next level pabst.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>",
      "description": "Forage aesthetic normcore next level pabst.",
      "clean_label": "Take Me With U",
      "clean_description": "Forage aesthetic normcore next level pabst."
    },
    {
      "id": "http://example.org/entities/912719e4-e33e-49cd-91d1-072b7cedff97",
      "label": "<i>Pleiades system</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Pleiades system</i></strong></p>\n<p>Churchkey literally 8bit next level asymmetrical.</p></section>",
      "description": "Churchkey literally 8bit next level asymmetrical.",
      "clean_label": "Pleiades system",
      "clean_description": "Churchkey literally 8bit next level asymmetrical."
    },
    {
      "id": "http://example.org/entities/08aa2546-f10f-47b5-a298-904519d8d5e4",
      "label": "Barnard's Star",
      "type": "place",
      "short_display": "<section><p><strong>Barnard's Star</strong></p>\n<p>Mumblecore <i>chartreuse hoodie twee next level</i> cornhole.</p></section>",
      "description": "Mumblecore <i>chartreuse hoodie twee next level</i> cornhole.",
      "clean_label": "Barnard's Star",
      "clean_description": "Mumblecore chartreuse hoodie twee next level cornhole."
    },
    {
      "id": "http://example.org/entities/304b3bb9-188c-42f7-af9a-9d4afe0d8ecd",
      "label": "<i>The Wizard of Oz</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>The Wizard of Oz</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Tanngrisnir, Lake Francene</p>\n<p><strong>Date(s)</strong> 1928-12-09.</p></section>",
      "description": "Pabst asymmetrical diy keytar next level yuccie.",
      "clean_label": "The Wizard of Oz",
      "clean_description": "Pabst asymmetrical diy keytar next level yuccie."
    },
    {
      "id": "http://example.org/entities/998992a7-0feb-47e6-8621-8f530da1c3c8",
      "label": "<i>Seventh Galaxy of Light and Ingenuity</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Seventh Galaxy of Light and Ingenuity</i></strong></p>\n<p>Pabst <i>leggings chambray next level fanny</i> pack.</p></section>",
      "description": "Pabst <i>leggings chambray next level fanny</i> pack.",
      "clean_label": "Seventh Galaxy of Light and Ingenuity",
      "clean_description": "Pabst leggings chambray next level fanny pack."
    },
    {
      "id": "http://example.org/entities/ce129115-a3a2-41fe-b8c8-a3c23bf32455",
      "label": "<i>Lamuella</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Lamuella</i></strong></p>\n<p>Narwhal <i>venmo bespoke next level locavore</i> taxidermy.</p></section>",
      "description": "Narwhal <i>venmo bespoke next level locavore</i> taxidermy.",
      "clean_label": "Lamuella",
      "clean_description": "Narwhal venmo bespoke next level locavore taxidermy."
    },
    {
      "id": "http://example.org/entities/fa2d8b55-0673-4548-8419-cda09ce91cec",
      "label": "That Good Night",
      "type": "translating",
      "short_display": "<section><p><strong>Author</strong> Galaxia Woonbeam, <strong>Original Title</strong> That Good Night</p>\n<p><strong>Translated into</strong> Japanese by Roosta</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>",
      "description": "Yuccie next level hoodie street tousled artisan.",
      "clean_label": "That Good Night",
      "clean_description": "Yuccie next level hoodie street tousled artisan."
    },
    {
      "id": "http://example.org/entities/cbc37461-bbb1-43f1-852b-6cc8023a6b0d",
      "label": "<i>Oglaroon</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>Goth next level 1 humblebrag ugh photo booth.</p></section>",
      "description": "Goth next level 1 humblebrag ugh photo booth.",
      "clean_label": "Oglaroon",
      "clean_description": "Goth next level 1 humblebrag ugh photo booth."
    },
    {
      "id": "http://example.org/entities/53044dc7-5179-4080-a18c-f80e4ac92332",
      "label": "<i>Horse and Groom</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Horse and Groom</i></strong></p>\n<p>Literally <i>pourover dreamcatcher kombucha polaroid singleorigin coffee next</i> level.</p></section>",
      "description": "Literally <i>pourover dreamcatcher kombucha polaroid singleorigin coffee next</i> level.",
      "clean_label": "Horse and Groom",
      "clean_description": "Literally pourover dreamcatcher kombucha polaroid singleorigin coffee next level."
    },
    {
      "id": "http://example.org/entities/6c35cf1f-a50e-4719-b248-32e363e90a5e",
      "label": "<i>I Wish U Heaven</i>",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> <i>I Wish U Heaven</i></p>\n<p><strong>Description</strong> Next level franzen echo normcore coldpressed etsy pickled leggings.</p></section>",
      "description": "Next level franzen echo normcore coldpressed etsy pickled leggings.",
      "clean_label": "I Wish U Heaven",
      "clean_description": "Next level franzen echo normcore coldpressed etsy pickled leggings."
    },
    {
      "id": "http://example.org/entities/674b5ae1-d9cc-4009-87f8-c80103b9eb02",
      "label": "Far From the Madding Crowd",
      "type": "translating",
      "short_display": "<section><p><strong>Author</strong> Charles Darwin, <strong>Original Title</strong> Far From the Madding Crowd</p>\n<p><strong>Translated into</strong> Schweizerdeutsche by Yooden Vranx</p>\n<p><strong>Translated title</strong> Heart of Gold.</p></section>",
      "description": "Fanny <i>pack ethical selvage swag photo booth lomo next</i> level.",
      "clean_label": "Far From the Madding Crowd",
      "clean_description": "Fanny pack ethical selvage swag photo booth lomo next level."
    },
    {
      "id": "http://example.org/entities/3b0c8014-6d28-4d3c-87e9-cceef18e8554",
      "label": "<i>Lock, Stock and Two Smoking Barrels</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>Lock, Stock and Two Smoking Barrels</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, South Brenton</p>\n<p><strong>Date(s)</strong> 1952-01-17.</p></section>",
      "description": "Chartreuse cred brooklyn kogi next level direct trade thundercats mixtape bushwick.",
      "clean_label": "Lock, Stock and Two Smoking Barrels",
      "clean_description": "Chartreuse cred brooklyn kogi next level direct trade thundercats mixtape bushwick."
    },
    {
      "id": "http://example.org/entities/3543e467-8c3d-4ead-8095-9d2e6235297e",
      "label": "<i>Blade Runner</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>Blade Runner</i></p>\n<p><strong>Proposal/Response</strong> Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't. / Earth: Mostly Harmless</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Tanngrisnir, Port Sheba</p>\n<p><strong>Date(s)</strong> 1970-08-02.</p></section>",
      "description": "Pabst <i>jean shorts next level fanny pack readymade distillery goth salvia</i> kinfolk.",
      "clean_label": "Blade Runner",
      "clean_description": "Pabst jean shorts next level fanny pack readymade distillery goth salvia kinfolk."
    },
    {
      "id": "http://example.org/entities/8f6b587e-cb93-4393-bfd3-76c487698f84",
      "label": "Far From the Madding Crowd",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> Far From the Madding Crowd</p>\n<p><strong>Proposal/Response</strong> Will you open up the exit hatch, please, computer?</p>\n<p><strong>Translator</strong> Mr. Prosser</p>\n<p><strong>Date</strong> 1944-08-29.</p></section>",
      "description": "Photo booth you probably havent heard of them before they sold out next level.",
      "clean_label": "Far From the Madding Crowd",
      "clean_description": "Photo booth you probably havent heard of them before they sold out next level."
    },
    {
      "id": "http://example.org/entities/ada287d7-95c5-4392-9694-f0b99c5267a7",
      "label": "<i>Black Sweat</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Hactar</p>\n<p><strong>Title</strong> <i>Black Sweat</i></p>\n<p><strong>Description</strong> Listicle semiotics waistcoat yuccie forage lumbersexual kickstarter next level you probably havent heard of them.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>",
      "description": "Listicle semiotics waistcoat yuccie forage lumbersexual kickstarter next level you probably havent heard of them.",
      "clean_label": "Black Sweat",
      "clean_description": "Listicle semiotics waistcoat yuccie forage lumbersexual kickstarter next level you probably havent heard of them."
    },
    {
      "id": "http://example.org/entities/bbc077e0-7e1c-43aa-a4c0-125199c07e8f",
      "label": "<i>Columbia</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1929-08-09.</strong></p></section>",
      "description": "Woke up the next morning, Nikki wasn't there. I looked all over and all I found was a phone number on the stairs. It said thank you for a funky time, call me up whenever you wanna grind.",
      "clean_label": "Columbia",
      "clean_description": "Woke up the next morning, Nikki wasn't there. I looked all over and all I found was a phone number on the stairs. It said thank you for a funky time, call me up whenever you wanna grind."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 21,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 7
        },
        {
          "key": "attendance",
          "doc_count": 3
        },
        {
          "key": "production",
          "doc_count": 3
        },
        {
          "key": "work_of_art",
          "doc_count": 3
        },
        {
          "key": "translating",
          "doc_count": 2
        },
        {
          "key": "music",
          "doc_count": 1
        },
        {
          "key": "public_event",
          "doc_count": 1
        },
        {
          "key": "writing",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 21,
    "links": {
      "self": "http://example.org/entities?operator=and&page=1&search=next"
    }
  }
}
~~~

