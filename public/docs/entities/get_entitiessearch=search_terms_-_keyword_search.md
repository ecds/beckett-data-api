# Entities API



## GET /entities?search=:search_terms - Keyword Search

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

<pre>GET /entities?search=park</pre>

#### Query Parameters

<pre>search: park</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=park&gt;; rel=&#39;self&#39;
X-Total-Count: 17
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1ef1fbdb6de416065090eb39d7440234&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 94889d30-18da-4cdc-82b9-7c381daaf99d
X-Runtime: 3.177657
Vary: Origin
Content-Length: 13013</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/b7d10962-cf1a-44f9-9c04-e057c109d511",
      "label": "Jurassic Park",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> Jurassic Park</p>\n<p><strong>Proposal/Response</strong> I won't enjoy it. / Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Golgafrinchan Ark Fleet Ship B, West Donnetta</p>\n<p><strong>Date(s)</strong> 1931-06-04.</p></section>",
      "description": "Occupy humblebrag trust fund crucifix.",
      "clean_label": "Jurassic Park",
      "clean_description": "Occupy humblebrag trust fund crucifix."
    },
    {
      "id": "http://example.org/entities/6b87d06b-7f05-452e-8bb9-f68c0f59efb7",
      "label": "Radio Broadcast, Kickstarter xoxo tilde helvetica austin 1 park roof.",
      "type": "attendance",
      "short_display": "<section><p><strong>Radio Broadcast</strong>, Kickstarter xoxo tilde helvetica austin 1 park roof.</p>\n<p><strong>Attended with</strong> Brandt and Lunkwill and Fook</p>\n<p><strong>Place, Date</strong> Boylestad, 20 August 1954</p>\n<p><strong>Director</strong> Frankie and Benjy</p></section>",
      "description": "Kickstarter xoxo tilde helvetica austin 1 park roof.",
      "clean_label": "Radio Broadcast, Kickstarter xoxo tilde helvetica austin 1 park roof.",
      "clean_description": "Kickstarter xoxo tilde helvetica austin 1 park roof."
    },
    {
      "id": "http://example.org/entities/05e9e348-d9a9-41fb-aede-0de0a4675335",
      "label": "London",
      "type": "place",
      "short_display": "<section><p><strong>London</strong></p>\n<p>Pinterest park bushwick yr.</p></section>",
      "description": "Pinterest park bushwick yr.",
      "clean_label": "London",
      "clean_description": "Pinterest park bushwick yr."
    },
    {
      "id": "http://example.org/entities/3409ac55-435f-48e9-840f-0f0bf46eb1fc",
      "label": "<i>Cathedral of Chalesm</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Cathedral of Chalesm</i></strong></p>\n<p>Twee park master semiotics.</p></section>",
      "description": "Twee park master semiotics.",
      "clean_label": "Cathedral of Chalesm",
      "clean_description": "Twee park master semiotics."
    },
    {
      "id": "http://example.org/entities/75474408-c304-4a2d-9051-2291824cec5f",
      "label": "<i>Such, Such Were the Joys</i>",
      "type": "translating",
      "short_display": "<section><p><strong>Author</strong> Tricia McMillan, <strong>Original Title</strong> <i>Such, Such Were the Joys</i></p>\n<p><strong>Translated into</strong> Ukrainian by Slartibartfast</p>\n<p><strong>Translated title</strong> Tanngrisnir.</p></section>",
      "description": "Brooklyn occupy tumblr park.",
      "clean_label": "Such, Such Were the Joys",
      "clean_description": "Brooklyn occupy tumblr park."
    },
    {
      "id": "http://example.org/entities/dbe8cb90-8ffb-4625-8516-5d332e917ad5",
      "label": "<i>Pop Life</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Majikthise</p>\n<p><strong>Title</strong> <i>Pop Life</i></p>\n<p><strong>Description</strong> Whatever truffaut park pug.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>",
      "description": "Whatever truffaut park pug.",
      "clean_label": "Pop Life",
      "clean_description": "Whatever truffaut park pug."
    },
    {
      "id": "http://example.org/entities/067e1169-5ae9-4da6-8824-efc67af55b4c",
      "label": "<i>Sector ZZ9 Plural Z Alpha</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Sector ZZ9 Plural Z Alpha</i></strong></p>\n<p>Salvia tousled park mustache mlkshk.</p></section>",
      "description": "Salvia tousled park mustache mlkshk.",
      "clean_label": "Sector ZZ9 Plural Z Alpha",
      "clean_description": "Salvia tousled park mustache mlkshk."
    },
    {
      "id": "http://example.org/entities/77d5add5-6b3b-4ab4-bd2a-28e05cd0f449",
      "label": "Belgium",
      "type": "place",
      "short_display": "<section><p><strong>Belgium</strong></p>\n<p>Ennui vice park synth listicle sriracha.</p></section>",
      "description": "Ennui vice park synth listicle sriracha.",
      "clean_label": "Belgium",
      "clean_description": "Ennui vice park synth listicle sriracha."
    },
    {
      "id": "http://example.org/entities/e285f755-ff25-4f52-9cbb-390de3ef48c7",
      "label": "<i>The Treasure of the Sierra Madre</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>The Treasure of the Sierra Madre</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> Jesus Quintana <strong>Theatre, City</strong> Krikkit One, West Lamont</p>\n<p><strong>Date(s)</strong> 1965-07-13.</p></section>",
      "description": "Park leggings tattooed trust fund ennui.",
      "clean_label": "The Treasure of the Sierra Madre",
      "clean_description": "Park leggings tattooed trust fund ennui."
    },
    {
      "id": "http://example.org/entities/39533580-4e3b-4e88-83b8-a2445f21949b",
      "label": "<i>Let's Go Crazy</i>",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Charles Darwin</p>\n<p><strong>Title</strong> <i>Let's Go Crazy</i></p>\n<p><strong>Description</strong> Asymmetrical <i>kitsch park godard ugh pitchfork</i> yr.</p></section>",
      "description": "Asymmetrical <i>kitsch park godard ugh pitchfork</i> yr.",
      "clean_label": "Let's Go Crazy",
      "clean_description": "Asymmetrical kitsch park godard ugh pitchfork yr."
    },
    {
      "id": "http://example.org/entities/031cc394-5edc-4354-8c8c-67026f81d08a",
      "label": "That Hideous Strength",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Kati Dare Ret.</p>\n<p><strong>Title</strong> That Hideous Strength</p>\n<p><strong>Publication</strong> McClelland and Stewart.</p></section>",
      "description": "Bitters <i>readymade cliche fashion axe mlkshk taxidermy</i> park.",
      "clean_label": "That Hideous Strength",
      "clean_description": "Bitters readymade cliche fashion axe mlkshk taxidermy park."
    },
    {
      "id": "http://example.org/entities/291a0f17-36ae-41d3-b216-6ba1a137e5d2",
      "label": "Baby I'm A Star",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> Baby I'm A Star</p>\n<p><strong>Description</strong> Crucifix messenger bag quinoa muggle magic park listicle yuccie.</p></section>",
      "description": "Crucifix messenger bag quinoa muggle magic park listicle yuccie.",
      "clean_label": "Baby I'm A Star",
      "clean_description": "Crucifix messenger bag quinoa muggle magic park listicle yuccie."
    },
    {
      "id": "http://example.org/entities/2dc5ce13-10af-42e2-a15a-2e0e85e04228",
      "label": "How to Train Your Dragon",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> How to Train Your Dragon</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Parts of the inside of her head screamed at other parts of the inside of her head.</p>\n<p><strong>Director</strong> Donny <strong>Theatre, City</strong> Billion Year Bunker, Funkborough</p>\n<p><strong>Date(s)</strong> 1939-05-30.</p></section>",
      "description": "Migas <i>park green juice kitsch 90s cred squid</i> street.",
      "clean_label": "How to Train Your Dragon",
      "clean_description": "Migas park green juice kitsch 90s cred squid street."
    },
    {
      "id": "http://example.org/entities/7ca1462b-ece2-4838-80ae-c4606eddea38",
      "label": "Infinite Jest",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> Infinite Jest</p>\n<p><strong>Proposal/Response</strong> I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Date</strong> 1924-10-01.</p></section>",
      "description": "Park <i>vinyl kitsch brunch pinterest swag keytar cleanse</i> hella.",
      "clean_label": "Infinite Jest",
      "clean_description": "Park vinyl kitsch brunch pinterest swag keytar cleanse hella."
    },
    {
      "id": "http://example.org/entities/e40801c7-914c-499d-8002-27b50261573f",
      "label": "Ysllodins",
      "type": "place",
      "short_display": "<section><p><strong>Ysllodins</strong></p>\n<p>Trust fund pickled fingerstache whatever meditation celiac park postironic listicle.</p></section>",
      "description": "Trust fund pickled fingerstache whatever meditation celiac park postironic listicle.",
      "clean_label": "Ysllodins",
      "clean_description": "Trust fund pickled fingerstache whatever meditation celiac park postironic listicle."
    },
    {
      "id": "http://example.org/entities/dc7a87c2-d07a-4812-abd7-59b05a28afa0",
      "label": "<i>Baltimore</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> <i>Baltimore</i></p>\n<p><strong>Description</strong> Neutra butcher ramps tattooed you probably havent heard of them lofi park.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>",
      "description": "Neutra butcher ramps tattooed you probably havent heard of them lofi park.",
      "clean_label": "Baltimore",
      "clean_description": "Neutra butcher ramps tattooed you probably havent heard of them lofi park."
    },
    {
      "id": "http://example.org/entities/99463b1c-33f8-4761-8beb-3b3cc2067d33",
      "label": "<i>Partyman</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Partyman</i></p>\n<p><strong>Description</strong> Keffiyeh ugh actually chillwave waistcoat park put a bird on it vinegar tofu.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>",
      "description": "Keffiyeh ugh actually chillwave waistcoat park put a bird on it vinegar tofu.",
      "clean_label": "Partyman",
      "clean_description": "Keffiyeh ugh actually chillwave waistcoat park put a bird on it vinegar tofu."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 17,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 5
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
          "key": "music",
          "doc_count": 2
        },
        {
          "key": "attendance",
          "doc_count": 1
        },
        {
          "key": "reading",
          "doc_count": 1
        },
        {
          "key": "translating",
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
    "total_count": 17,
    "links": {
      "self": "http://example.org/entities?page=1&search=park"
    }
  }
}
~~~

