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
X-Total-Count: 612
Content-Type: application/json; charset=utf-8
ETag: W/&quot;7ad099ba91a1916886d11b8348c47152&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9299f215-4a67-4114-9cac-b598e0f9acad
X-Runtime: 12.576402
Vary: Origin
Content-Length: 11905</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/0089d36a-3940-4518-b75f-f0621abf27b5",
      "label": "Tremblay, Christie",
      "type": "person",
      "display_header": "<b>Tremblay, Christie 1920-1998</b>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Tremblay, Christie",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/01310ce8-f502-4865-8191-5d47f5c95510",
      "label": "Eroticon VI",
      "type": "organization",
      "display_header": "<b>Eroticon VI</b>",
      "description": "Pinterest put a bird on it bespoke diy asymmetrical freegan.",
      "clean_label": "Eroticon VI",
      "clean_description": "Pinterest put a bird on it bespoke diy asymmetrical freegan."
    },
    {
      "id": "http://example.org/entities/013249ea-ac35-44f0-88ef-7eb7a9d4260b",
      "label": "Buckridge, Dann",
      "type": "person",
      "display_header": "<b>Buckridge, Dann 1912-1996</b>",
      "description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "clean_label": "Buckridge, Dann",
      "clean_description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level."
    },
    {
      "id": "http://example.org/entities/0146aad3-e780-4e93-b96b-93b87786ccad",
      "label": "<i>International Lover</i>",
      "type": "work_of_art",
      "display_header": "Oolon Colluphid, <i>International Lover</i>, Ramps distillery slow-carb vhs.",
      "description": "Ramps distillery slow-carb vhs.",
      "clean_label": "International Lover",
      "clean_description": "Ramps distillery slow-carb vhs."
    },
    {
      "id": "http://example.org/entities/01b88d46-6212-46b4-b6c2-08e915046180",
      "label": "Runolfsson, Karma",
      "type": "person",
      "display_header": "<b>Runolfsson, Karma 1905-1971</b>",
      "description": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "clean_label": "Runolfsson, Karma",
      "clean_description": "And then of course I've got this terrible pain in all the diodes down my left side."
    },
    {
      "id": "http://example.org/entities/01ca7c09-88f7-4513-90c0-4ef2588c290b",
      "label": "Anotherloverholenyohead",
      "type": "work_of_art",
      "display_header": "Random Dent, Anotherloverholenyohead, Ugh forage lumbersexual neutra.",
      "description": "Ugh forage lumbersexual neutra.",
      "clean_label": "Anotherloverholenyohead",
      "clean_description": "Ugh forage lumbersexual neutra."
    },
    {
      "id": "http://example.org/entities/0295abc9-00c0-4138-9cb0-1978dadae336",
      "label": "<i>The Big Bang Burger Bar</i>",
      "type": "place",
      "display_header": "<b><i>The Big Bang Burger Bar</i></b>",
      "description": "Flexitarian knausgaard gentrify shoreditch.",
      "clean_label": "The Big Bang Burger Bar",
      "clean_description": "Flexitarian knausgaard gentrify shoreditch."
    },
    {
      "id": "http://example.org/entities/02fd047d-36be-49fc-82e6-5c25d6afd2d1",
      "label": "Williamson, Dewayne",
      "type": "person",
      "display_header": "<b>Williamson, Dewayne 1912-1991</b>",
      "description": "Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.",
      "clean_label": "Williamson, Dewayne",
      "clean_description": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed."
    },
    {
      "id": "http://example.org/entities/03795a95-8c1f-4cff-b235-071202098354",
      "label": "Windler, Arthur",
      "type": "person",
      "display_header": "<b>Windler, Arthur 1927-1979</b>",
      "description": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "clean_label": "Windler, Arthur",
      "clean_description": "And then of course I've got this terrible pain in all the diodes down my left side."
    },
    {
      "id": "http://example.org/entities/0379f933-d8eb-4e72-9a6d-58d0a572b459",
      "label": "The Domain of The King",
      "type": "place",
      "display_header": "<b>The Domain of The King</b>",
      "description": "Truffaut single-origin coffee roof pickled bicycle rights raw denim pbr&b tumblr lo-fi.",
      "clean_label": "The Domain of The King",
      "clean_description": "Truffaut single-origin coffee roof pickled bicycle rights raw denim pbr&amp;b tumblr lo-fi."
    },
    {
      "id": "http://example.org/entities/041813ef-aaea-443b-b832-be81926d0980",
      "label": "The Mirror Crack'd from Side to Side",
      "type": "writing",
      "display_header": "<b>The Mirror Crack'd from Side to Side</b>",
      "description": "Lomo <i>loko street pop-up</i> diy.",
      "clean_label": "The Mirror Crack'd from Side to Side",
      "clean_description": "Lomo loko street pop-up diy."
    },
    {
      "id": "http://example.org/entities/0418c5d9-41a0-4a43-8650-e11a0493e8c5",
      "label": "Ibiza",
      "type": "place",
      "display_header": "<b>Ibiza</b>",
      "description": "Mustache scenester blue bottle craft beer green juice helvetica put a bird on it yolo meh.",
      "clean_label": "Ibiza",
      "clean_description": "Mustache scenester blue bottle craft beer green juice helvetica put a bird on it yolo meh."
    },
    {
      "id": "http://example.org/entities/04203e01-3d3a-4b11-b42a-17c73b431260",
      "label": "Jajazikstak",
      "type": "organization",
      "display_header": "<b>Jajazikstak</b>",
      "description": "Vinegar <i>hammock mlkshk knausgaard migas</i> kickstarter.",
      "clean_label": "Jajazikstak",
      "clean_description": "Vinegar hammock mlkshk knausgaard migas kickstarter."
    },
    {
      "id": "http://example.org/entities/045b82d3-a320-43d7-ae0c-5de66bfa02bb",
      "label": "<i>Evildrome Boozarama</i>",
      "type": "place",
      "display_header": "<b><i>Evildrome Boozarama</i></b>",
      "description": "Chambray master put a bird on it tote bag venmo chillwave forage.",
      "clean_label": "Evildrome Boozarama",
      "clean_description": "Chambray master put a bird on it tote bag venmo chillwave forage."
    },
    {
      "id": "http://example.org/entities/04e47b70-a519-4a64-aa84-03fc2f536577",
      "label": "<i>Kria</i>",
      "type": "organization",
      "display_header": "<b><i>Kria</i></b>",
      "description": "Gastropub <i>waistcoat before they sold out microdosing pbr&b pabst</i> brunch.",
      "clean_label": "Kria",
      "clean_description": "Gastropub waistcoat before they sold out microdosing pbr&amp;b pabst brunch."
    },
    {
      "id": "http://example.org/entities/053b62a0-3793-421b-92ce-8d68c80e142d",
      "label": "<i>Girls & Boys</i>",
      "type": "work_of_art",
      "display_header": "Arthur Philip Deodat, <i>Girls & Boys</i>, Tote bag vice pitchfork salvia gentrify letterpress listicle yolo.",
      "description": "Tote bag vice pitchfork salvia gentrify letterpress listicle yolo.",
      "clean_label": "Girls &amp; Boys",
      "clean_description": "Tote bag vice pitchfork salvia gentrify letterpress listicle yolo."
    },
    {
      "id": "http://example.org/entities/05a4a8ac-e4f5-408d-ac8d-5effc6cb7709",
      "label": "<i>Stand by Me</i>",
      "type": "production",
      "display_header": "<i>Stand by Me</i>, dir. Karl Hungus, RW6, Lake Tambraton, 1930-08-07",
      "description": "Street <i>kinfolk trust fund phlogiston humblebrag blog viral small</i> batch.",
      "clean_label": "Stand by Me",
      "clean_description": "Street kinfolk trust fund phlogiston humblebrag blog viral small batch."
    },
    {
      "id": "http://example.org/entities/06001637-c59c-4edb-8408-3a58212b87f7",
      "label": "Bournemouth",
      "type": "place",
      "display_header": "<b>Bournemouth</b>",
      "description": "Paleo pbr&b 8-bit asymmetrical actually tofu selvage marfa.",
      "clean_label": "Bournemouth",
      "clean_description": "Paleo pbr&amp;b 8-bit asymmetrical actually tofu selvage marfa."
    },
    {
      "id": "http://example.org/entities/0682c8fd-3eae-4db2-9dde-35f8f297d0fe",
      "label": "<i>Madagascar</i>",
      "type": "place",
      "display_header": "<b><i>Madagascar</i></b>",
      "description": "Listicle truffaut craft beer quinoa trust fund iphone leggings.",
      "clean_label": "Madagascar",
      "clean_description": "Listicle truffaut craft beer quinoa trust fund iphone leggings."
    },
    {
      "id": "http://example.org/entities/06e374b3-5944-4822-9997-8c049ad79990",
      "label": "<i>Frogstar World C</i>",
      "type": "organization",
      "display_header": "<b><i>Frogstar World C</i></b>",
      "description": "Brooklyn cred green juice crucifix.",
      "clean_label": "Frogstar World C",
      "clean_description": "Brooklyn cred green juice crucifix."
    },
    {
      "id": "http://example.org/entities/07957c57-aef4-4ed9-b989-127d00edb14d",
      "label": "<i>Françoise Sagan</i>",
      "type": "translating",
      "display_header": "Fenchurch, <i>Françoise Sagan</i>, Translated into braille by Gail Andrews",
      "description": "Mlkshk letterpress selfies put a bird on it small batch raw denim quinoa.",
      "clean_label": "Françoise Sagan",
      "clean_description": "Mlkshk letterpress selfies put a bird on it small batch raw denim quinoa."
    },
    {
      "id": "http://example.org/entities/07f69946-ebbc-461d-a6d1-24577de44926",
      "label": "<i>Oglaroon</i>",
      "type": "place",
      "display_header": "<b><i>Oglaroon</i></b>",
      "description": "Tofu <i>meggings kickstarter carry yr jean shorts occupy quinoa</i> +1.",
      "clean_label": "Oglaroon",
      "clean_description": "Tofu meggings kickstarter carry yr jean shorts occupy quinoa +1."
    },
    {
      "id": "http://example.org/entities/08a51ba8-dcb2-4a96-a15d-bb0c5f1b850d",
      "label": "The Great Dictator",
      "type": "production",
      "display_header": "The Great Dictator, dir. Maude Lebowski, Bistromath, West Daronstad, 1972-03-10",
      "description": "Craft beer occupy try-hard food truck diy.",
      "clean_label": "The Great Dictator",
      "clean_description": "Craft beer occupy try-hard food truck diy."
    },
    {
      "id": "http://example.org/entities/0923ad2e-3ea8-45cc-b768-2c9cfa82652c",
      "label": "<i>Donnie Darko</i>",
      "type": "attendance",
      "display_header": "<strong>radio_broadcast</strong> <i>Donnie Darko</i>",
      "description": "Synth selvage squid intelligentsia taxidermy etsy.",
      "clean_label": "Donnie Darko",
      "clean_description": "Synth selvage squid intelligentsia taxidermy etsy."
    },
    {
      "id": "http://example.org/entities/09c4910c-bbb8-44ac-97ea-c21fc28ebda2",
      "label": "<i>Dangrabad Beta</i>",
      "type": "organization",
      "display_header": "<b><i>Dangrabad Beta</i></b>",
      "description": "Disrupt kombucha next level pork belly direct trade ugh muggle magic neutra leggings.",
      "clean_label": "Dangrabad Beta",
      "clean_description": "Disrupt kombucha next level pork belly direct trade ugh muggle magic neutra leggings."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 145
        },
        {
          "key": "person",
          "doc_count": 92
        },
        {
          "key": "writing",
          "doc_count": 50
        },
        {
          "key": "music",
          "doc_count": 48
        },
        {
          "key": "production",
          "doc_count": 46
        },
        {
          "key": "attendance",
          "doc_count": 43
        },
        {
          "key": "publication",
          "doc_count": 41
        },
        {
          "key": "organization",
          "doc_count": 38
        },
        {
          "key": "work_of_art",
          "doc_count": 31
        },
        {
          "key": "public_event",
          "doc_count": 27
        },
        {
          "key": "reading",
          "doc_count": 27
        },
        {
          "key": "translating",
          "doc_count": 24
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 25,
    "total_count": 612,
    "links": {
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=25",
      "next": "http://example.org/entities?page=2"
    }
  }
}</pre>
