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
| operator | By default, results match any words in the query. Use &#39;and&#39; to match all words. | false | or

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
X-Total-Count: 609
Content-Type: application/json; charset=utf-8
ETag: W/&quot;05160dc8c56ee373039bdc6a0f59e2f8&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3452b9af-fb70-4654-81ea-d8985903898c
X-Runtime: 3.681443
Vary: Origin
Content-Length: 18636</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/000969e9-3eca-493a-a93b-8c90303d9602",
      "label": "Ruecker, Kasha",
      "type": "person",
      "short_display": "<section><p><strong>Kasha Ruecker, 1924-1982</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>",
      "description": "I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.",
      "clean_label": "Ruecker, Kasha",
      "clean_description": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one."
    },
    {
      "id": "http://example.org/entities/0021e590-f220-4ee7-a64a-40e17455bff5",
      "label": "Theatre, Shoreditch <i>chambray kale chips organic distillery</i> keffiyeh.",
      "type": "attendance",
      "short_display": "<section><p><strong>Theatre</strong>, Shoreditch <i>chambray kale chips organic distillery</i> keffiyeh.</p>\n<p><strong>Attended with</strong> Karl Hungus and Yooden Vranx</p>\n<p><strong>Place, Date</strong> Parisianchester, 05 June 1944</p>\n<p><strong>Director</strong> Loonquawl and Phouchg</p></section>",
      "description": "Shoreditch <i>chambray kale chips organic distillery</i> keffiyeh.",
      "clean_label": "Theatre, Shoreditch chambray kale chips organic distillery keffiyeh.",
      "clean_description": "Shoreditch chambray kale chips organic distillery keffiyeh."
    },
    {
      "id": "http://example.org/entities/0035c92f-4cfa-48f3-85ac-3c7466ba8460",
      "label": "Palgrave Macmillan",
      "type": "publication",
      "short_display": "<section><p><strong>Author</strong> Bunny Lebowski</p>\n<p><strong>Title</strong> Palgrave Macmillan</p>\n<p><strong>Translator</strong> Humma Kavula</p>\n<p><strong>Publication</strong> Pabst cold-pressed microdosing butcher.</p></section>",
      "description": "Biodiesel health neutra chicharrones farmtotable put a bird on it.",
      "clean_label": "Palgrave Macmillan",
      "clean_description": "Biodiesel health neutra chicharrones farmtotable put a bird on it."
    },
    {
      "id": "http://example.org/entities/00781f28-3586-4ebd-873c-f42243861f87",
      "label": "<i>How Come You Don't Call Me Anymore?</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Trillian</p>\n<p><strong>Title</strong> <i>How Come You Don't Call Me Anymore?</i></p>\n<p><strong>Description</strong> Vice <i>twee occupy narwhal</i> street.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>",
      "description": "Vice <i>twee occupy narwhal</i> street.",
      "clean_label": "How Come You Don't Call Me Anymore?",
      "clean_description": "Vice twee occupy narwhal street."
    },
    {
      "id": "http://example.org/entities/00e9138e-2c28-40f8-b6bc-6148c060ff9b",
      "label": "<i>Before Sunrise</i>",
      "type": "production",
      "short_display": "<section><p><strong>Title</strong> <i>Before Sunrise</i></p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Billion Year Bunker, South Irvingmouth</p>\n<p><strong>Date(s)</strong> 1926-03-29.</p></section>",
      "description": "Crucifix <i>mixtape vinyl offal jean shorts</i> tofu.",
      "clean_label": "Before Sunrise",
      "clean_description": "Crucifix mixtape vinyl offal jean shorts tofu."
    },
    {
      "id": "http://example.org/entities/014d072e-288f-42bc-8450-b8a07dd6c980",
      "label": "Look Homeward, Angel",
      "type": "translating",
      "short_display": "<section><p><strong>Author</strong> Prostetnic Vogon Kwaltz, <strong>Original Title</strong> Look Homeward, Angel</p>\n<p><strong>Translated into</strong> Serbo Croatian by Wonko the Sane</p>\n<p><strong>Translated title</strong> Vogon Constructor Fleet.</p></section>",
      "description": "Lomo glutenfree semiotics leggings.",
      "clean_label": "Look Homeward, Angel",
      "clean_description": "Lomo glutenfree semiotics leggings."
    },
    {
      "id": "http://example.org/entities/0150f755-4e88-4de3-9e23-43c0b456c8a8",
      "label": "Emard, Autumn",
      "type": "person",
      "short_display": "<section><p><strong>Autumn Emard, 1911-1991</strong></p>\n<p>I won't enjoy it.</p></section>",
      "description": "I won't enjoy it.",
      "clean_label": "Emard, Autumn",
      "clean_description": "I won't enjoy it."
    },
    {
      "id": "http://example.org/entities/015c899e-6036-48fa-9400-62c670418ab0",
      "label": "<i>Verso Books</i>",
      "type": "publication",
      "short_display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> <i>Verso Books</i></p>\n<p><strong>Translator</strong> Barry Manilow</p>\n<p><strong>Publication</strong> Blog knausgaard kickstarter tote bag banh mi.</p></section>",
      "description": "Offal singleorigin coffee vhs tousled roof craft beer 90s.",
      "clean_label": "Verso Books",
      "clean_description": "Offal singleorigin coffee vhs tousled roof craft beer 90s."
    },
    {
      "id": "http://example.org/entities/02a3d645-9f50-4dc8-8faa-3b7a6426cacd",
      "label": "<i>Croydon</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Croydon</i></strong></p>\n<p>Thundercats forage bicycle rights singleorigin coffee.</p></section>",
      "description": "Thundercats forage bicycle rights singleorigin coffee.",
      "clean_label": "Croydon",
      "clean_description": "Thundercats forage bicycle rights singleorigin coffee."
    },
    {
      "id": "http://example.org/entities/02c571a0-2377-4c45-be47-66aa3f2a4405",
      "label": "Rehearsal, Tattooed <i>lumbersexual thundercats waistcoat</i> kitsch.",
      "type": "attendance",
      "short_display": "<section><p><strong>Rehearsal</strong>, Tattooed <i>lumbersexual thundercats waistcoat</i> kitsch.</p>\n<p><strong>Attended with</strong> Karl Hungus and Arthur Philip Deodat</p>\n<p><strong>Place, Date</strong> West Jared, 05 November 1949</p>\n<p><strong>Director</strong> Fenchurch</p></section>",
      "description": "Tattooed <i>lumbersexual thundercats waistcoat</i> kitsch.",
      "clean_label": "Rehearsal, Tattooed lumbersexual thundercats waistcoat kitsch.",
      "clean_description": "Tattooed lumbersexual thundercats waistcoat kitsch."
    },
    {
      "id": "http://example.org/entities/0313cbaa-f482-4063-b7aa-00166d39d95c",
      "label": "<i>Oglaroon</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>Ramps <i>wolf leggings flexitarian schlitz messenger bag</i> beard.</p></section>",
      "description": "Ramps <i>wolf leggings flexitarian schlitz messenger bag</i> beard.",
      "clean_label": "Oglaroon",
      "clean_description": "Ramps wolf leggings flexitarian schlitz messenger bag beard."
    },
    {
      "id": "http://example.org/entities/0338b176-9bdd-40d1-acf3-2b4be0b6779c",
      "label": "<i>Discovery</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Discovery</i></strong></p>\n<p><strong>1928-11-02.</strong></p></section>",
      "description": "But <i>I say, it's only mountains and the sea. Love will conquer if you just</i> believe.",
      "clean_label": "Discovery",
      "clean_description": "But I say, it's only mountains and the sea. Love will conquer if you just believe."
    },
    {
      "id": "http://example.org/entities/03900446-8cad-410e-9df5-829f3152f49d",
      "label": "<i>New Position</i>",
      "type": "music",
      "short_display": "<section><p><strong>Composer</strong> Roosta</p>\n<p><strong>Title</strong> <i>New Position</i></p>\n<p><strong>Description</strong> Chillwave kinfolk fixie wes anderson cred squid humblebrag hashtag.</p></section>",
      "description": "Chillwave kinfolk fixie wes anderson cred squid humblebrag hashtag.",
      "clean_label": "New Position",
      "clean_description": "Chillwave kinfolk fixie wes anderson cred squid humblebrag hashtag."
    },
    {
      "id": "http://example.org/entities/04a12cee-1895-470c-a91a-8b9d2a9fb6dc",
      "label": "Theatre, Direct trade marfa put a bird on it tote bag.",
      "type": "attendance",
      "short_display": "<section><p><strong>Theatre</strong>, Direct trade marfa put a bird on it tote bag.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Zaphod Beeblebrox</p>\n<p><strong>Place, Date</strong> Aufderharchester, 26 July 1948</p>\n<p><strong>Director</strong> Max Quordlepleen</p></section>",
      "description": "Direct trade marfa put a bird on it tote bag.",
      "clean_label": "Theatre, Direct trade marfa put a bird on it tote bag.",
      "clean_description": "Direct trade marfa put a bird on it tote bag."
    },
    {
      "id": "http://example.org/entities/05778968-2922-44cd-b65a-85d2d9ee7123",
      "label": "Jajazikstak",
      "type": "organization",
      "short_display": "<section><p><strong>Jajazikstak</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Jajazikstak",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/05dc54fe-e195-480a-847b-9611b44f7e04",
      "label": "<i>Madagascar</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Madagascar</i></strong></p>\n<p>Trust <i>fund echo cred cronut sriracha hammock kitsch next</i> level.</p></section>",
      "description": "Trust <i>fund echo cred cronut sriracha hammock kitsch next</i> level.",
      "clean_label": "Madagascar",
      "clean_description": "Trust fund echo cred cronut sriracha hammock kitsch next level."
    },
    {
      "id": "http://example.org/entities/05f2e64e-3ce9-4428-9476-ee75a4156f16",
      "label": "The Last Temptation",
      "type": "reading",
      "short_display": "<section><p><strong>Author</strong> Katelyn Larson</p>\n<p><strong>Title</strong> The Last Temptation</p>\n<p><strong>Publication</strong> HarperCollins.</p></section>",
      "description": "Yuccie <i>flannel whatever banh mi carry</i> crucifix.",
      "clean_label": "The Last Temptation",
      "clean_description": "Yuccie flannel whatever banh mi carry crucifix."
    },
    {
      "id": "http://example.org/entities/065c8784-e54b-4736-97d3-ccf52569385d",
      "label": "Orion",
      "type": "public_event",
      "short_display": "<section><p><strong>Orion</strong></p>\n<p><strong>1964-06-25.</strong></p></section>",
      "description": "Dearly beloved, we are gathered here today to get through this thing called life.",
      "clean_label": "Orion",
      "clean_description": "Dearly beloved, we are gathered here today to get through this thing called life."
    },
    {
      "id": "http://example.org/entities/06bdfa66-7a4f-43b4-889f-8a499ac797a3",
      "label": "Douglas, Wilfred",
      "type": "person",
      "short_display": "<section><p><strong>Wilfred Douglas, 1911-1973</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>",
      "description": "Life? <i>Don't talk to me about</i> life.",
      "clean_label": "Douglas, Wilfred",
      "clean_description": "Life? Don't talk to me about life."
    },
    {
      "id": "http://example.org/entities/0743f238-503d-4eb1-b98d-3f1a205a500c",
      "label": "<i>29 Arlington Avenue</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>29 Arlington Avenue</i></strong></p>\n<p>Pickled banjo williamsburg yolo pourover churchkey popup put a bird on it.</p></section>",
      "description": "Pickled banjo williamsburg yolo pourover churchkey popup put a bird on it.",
      "clean_label": "29 Arlington Avenue",
      "clean_description": "Pickled banjo williamsburg yolo pourover churchkey popup put a bird on it."
    },
    {
      "id": "http://example.org/entities/075f517c-dc8e-4b51-b9e6-5f8b177998ad",
      "label": "A Many-Splendoured Thing",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> A Many-Splendoured Thing</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> The Allitnils</p>\n<p><strong>Date</strong> 1948-05-25.</p></section>",
      "description": "Distillery bicycle rights pork belly semiotics selvage skateboard.",
      "clean_label": "A Many-Splendoured Thing",
      "clean_description": "Distillery bicycle rights pork belly semiotics selvage skateboard."
    },
    {
      "id": "http://example.org/entities/076309ed-e071-4e5d-b3d4-a0d5eecacc66",
      "label": "Jajazikstak",
      "type": "organization",
      "short_display": "<section><p><strong>Jajazikstak</strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>",
      "description": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "clean_label": "Jajazikstak",
      "clean_description": "And then of course I've got this terrible pain in all the diodes down my left side."
    },
    {
      "id": "http://example.org/entities/076544e7-0ee5-4154-adc4-546ffaed86b1",
      "label": "<i>Oglaroon</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>Gentrify <i>cronut freegan squid bespoke mumblecore</i> vice.</p></section>",
      "description": "Gentrify <i>cronut freegan squid bespoke mumblecore</i> vice.",
      "clean_label": "Oglaroon",
      "clean_description": "Gentrify cronut freegan squid bespoke mumblecore vice."
    },
    {
      "id": "http://example.org/entities/07a114e0-db19-41e3-aeca-c80fbeaa8eb3",
      "label": "Stavromula Beta",
      "type": "place",
      "short_display": "<section><p><strong>Stavromula Beta</strong></p>\n<p>Health poutine lomo pourover biodiesel.</p></section>",
      "description": "Health poutine lomo pourover biodiesel.",
      "clean_label": "Stavromula Beta",
      "clean_description": "Health poutine lomo pourover biodiesel."
    },
    {
      "id": "http://example.org/entities/07db0ebe-3722-43e3-bcec-b9df9a46a633",
      "label": "<i>Take Me With U</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> <i>Take Me With U</i></p>\n<p><strong>Description</strong> Skateboard <i>photo booth ugh paleo pork belly pinterest pitchfork bespoke kale</i> chips.</p>\n<p><strong>Owner/location</strong> Billion Year Bunker</p></section>",
      "description": "Skateboard <i>photo booth ugh paleo pork belly pinterest pitchfork bespoke kale</i> chips.",
      "clean_label": "Take Me With U",
      "clean_description": "Skateboard photo booth ugh paleo pork belly pinterest pitchfork bespoke kale chips."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 609,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 151
        },
        {
          "key": "person",
          "doc_count": 93
        },
        {
          "key": "publication",
          "doc_count": 50
        },
        {
          "key": "work_of_art",
          "doc_count": 46
        },
        {
          "key": "writing",
          "doc_count": 40
        },
        {
          "key": "production",
          "doc_count": 37
        },
        {
          "key": "translating",
          "doc_count": 37
        },
        {
          "key": "organization",
          "doc_count": 36
        },
        {
          "key": "reading",
          "doc_count": 35
        },
        {
          "key": "attendance",
          "doc_count": 32
        },
        {
          "key": "music",
          "doc_count": 28
        },
        {
          "key": "public_event",
          "doc_count": 24
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 25,
    "total_count": 609,
    "links": {
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=25",
      "next": "http://example.org/entities?page=2"
    }
  }
}
~~~

