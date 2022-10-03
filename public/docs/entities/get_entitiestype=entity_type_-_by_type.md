# Entities API



## GET /entities?type=:entity_type - By Type

### GET /entities

Returns a paginated list of entities by type. Valid types are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing, and generic.

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

<pre>GET /entities?type=public_event</pre>

#### Query Parameters

<pre>type: public_event</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;type=public_event&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=2&amp;type=public_event&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&amp;type=public_event&gt;; rel=&#39;next&#39;
X-Total-Count: 44
Content-Type: application/json; charset=utf-8
ETag: W/&quot;f1551d76c58743b82b85e2c5cbbe7488&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 7dc220d2-88ce-43bb-948c-70956ff6c987
X-Runtime: 3.193965
Vary: Origin
Content-Length: 15656</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "entities": [
    {
      "id": "http://example.org/entities/0e6b2e91-ef41-4bb3-883c-b52154e318c0",
      "label": "<i>Gemini</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1970-03-11.</strong></p></section>",
      "description": "If I gave you diamonds and pearls, would you be a happy boy or a girl? If I could I would give you the world.",
      "clean_label": "Gemini",
      "clean_description": "If I gave you diamonds and pearls, would you be a happy boy or a girl? If I could I would give you the world."
    },
    {
      "id": "http://example.org/entities/10c6f45b-c978-4c90-ad75-82330776f95d",
      "label": "Mercury",
      "type": "public_event",
      "short_display": "<section><p><strong>Mercury</strong></p>\n<p><strong>1966-12-21.</strong></p></section>",
      "description": "And they say I'm so shy, yeah, but with you I just go wild!",
      "clean_label": "Mercury",
      "clean_description": "And they say I'm so shy, yeah, but with you I just go wild!"
    },
    {
      "id": "http://example.org/entities/1b620e5a-0807-47e8-9fdf-d2f697039777",
      "label": "<i>Gemini</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Gemini</i></strong></p>\n<p><strong>1923-08-04.</strong></p></section>",
      "description": "You can relax now, the max is in control.",
      "clean_label": "Gemini",
      "clean_description": "You can relax now, the max is in control."
    },
    {
      "id": "http://example.org/entities/21a22cdd-5ddb-4343-84da-a41c3f23f8aa",
      "label": "Discovery",
      "type": "public_event",
      "short_display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1960-05-19.</strong></p></section>",
      "description": "Love <i>come quick, love come in a hurry, there are thieves in the temple</i> tonight.",
      "clean_label": "Discovery",
      "clean_description": "Love come quick, love come in a hurry, there are thieves in the temple tonight."
    },
    {
      "id": "http://example.org/entities/2509d172-3371-4136-aee2-1f7d30ff8da2",
      "label": "<i>Mercury</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1932-12-23.</strong></p></section>",
      "description": "If <i>a man is considered guilty for what goes on in his mind, then give me the electric chair for all my future</i> crimes.",
      "clean_label": "Mercury",
      "clean_description": "If a man is considered guilty for what goes on in his mind, then give me the electric chair for all my future crimes."
    },
    {
      "id": "http://example.org/entities/2719fe3f-a92a-40ff-ad68-8a0bb4591ca1",
      "label": "Atlantis",
      "type": "public_event",
      "short_display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1924-11-08.</strong></p></section>",
      "description": "My <i>name is Prince, and I am funky. When it come to funk I am a</i> junkie.",
      "clean_label": "Atlantis",
      "clean_description": "My name is Prince, and I am funky. When it come to funk I am a junkie."
    },
    {
      "id": "http://example.org/entities/310acdd5-568c-4461-acab-7ffab6ee98ca",
      "label": "Enterprise",
      "type": "public_event",
      "short_display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1962-05-09.</strong></p></section>",
      "description": "Come <i>on y'all, we got to jam, before the police come. A groove this funky is on the</i> run.",
      "clean_label": "Enterprise",
      "clean_description": "Come on y'all, we got to jam, before the police come. A groove this funky is on the run."
    },
    {
      "id": "http://example.org/entities/3cb5e95e-491a-4a25-87dc-e86df26856d2",
      "label": "Discovery",
      "type": "public_event",
      "short_display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1953-08-05.</strong></p></section>",
      "description": "And <i>they say I'm so shy, yeah, but with you I just go</i> wild!",
      "clean_label": "Discovery",
      "clean_description": "And they say I'm so shy, yeah, but with you I just go wild!"
    },
    {
      "id": "http://example.org/entities/3d2ba93c-ae9b-4f37-b9db-273cea203176",
      "label": "Columbia",
      "type": "public_event",
      "short_display": "<section><p><strong>Columbia</strong></p>\n<p><strong>1949-09-04.</strong></p></section>",
      "description": "Do I believe in God? Do I believe in me? Some people wanna die so they can be free.",
      "clean_label": "Columbia",
      "clean_description": "Do I believe in God? Do I believe in me? Some people wanna die so they can be free."
    },
    {
      "id": "http://example.org/entities/43faf31e-de20-4be8-90d5-68cce4ee0263",
      "label": "Endeavour",
      "type": "public_event",
      "short_display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1929-02-12.</strong></p></section>",
      "description": "You can relax now, the max is in control.",
      "clean_label": "Endeavour",
      "clean_description": "You can relax now, the max is in control."
    },
    {
      "id": "http://example.org/entities/449aa208-8ed4-4c47-9190-107f817ee821",
      "label": "Challenger",
      "type": "public_event",
      "short_display": "<section><p><strong>Challenger</strong></p>\n<p><strong>1947-05-06.</strong></p></section>",
      "description": "Everybody wants to tell what's already been told, what's the use of money if you ain't gonna break the mold?",
      "clean_label": "Challenger",
      "clean_description": "Everybody wants to tell what's already been told, what's the use of money if you ain't gonna break the mold?"
    },
    {
      "id": "http://example.org/entities/4503c4aa-95fc-4ee3-9a6a-5c8ce0d4fd3e",
      "label": "Orion",
      "type": "public_event",
      "short_display": "<section><p><strong>Orion</strong></p>\n<p><strong>1937-10-14.</strong></p></section>",
      "description": "You <i>were so hard to find, the beautiful ones, they hurt you every</i> time.",
      "clean_label": "Orion",
      "clean_description": "You were so hard to find, the beautiful ones, they hurt you every time."
    },
    {
      "id": "http://example.org/entities/451c7d4f-0466-4138-9e2a-faeb3b005528",
      "label": "<i>Atlantis</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Atlantis</i></strong></p>\n<p><strong>1953-07-03.</strong></p></section>",
      "description": "Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime.",
      "clean_label": "Atlantis",
      "clean_description": "Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime."
    },
    {
      "id": "http://example.org/entities/5c48fea0-01a4-4e29-a915-655f397760d9",
      "label": "<i>Endeavour</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1924-01-08.</strong></p></section>",
      "description": "I'm <i>not a woman, I'm not a man, I am something that you'll never</i> understand.",
      "clean_label": "Endeavour",
      "clean_description": "I'm not a woman, I'm not a man, I am something that you'll never understand."
    },
    {
      "id": "http://example.org/entities/5c8ce4a5-4555-4ffc-ae4f-a0603662ce78",
      "label": "<i>Orion</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Orion</i></strong></p>\n<p><strong>1937-01-25.</strong></p></section>",
      "description": "All <i>I want to see is the love in your</i> eyes.",
      "clean_label": "Orion",
      "clean_description": "All I want to see is the love in your eyes."
    },
    {
      "id": "http://example.org/entities/5f213131-c96d-415a-94a0-8a2c75e038b0",
      "label": "Orion",
      "type": "public_event",
      "short_display": "<section><p><strong>Orion</strong></p>\n<p><strong>1954-02-16.</strong></p></section>",
      "description": "Woke up the next morning, Nikki wasn't there. I looked all over and all I found was a phone number on the stairs. It said thank you for a funky time, call me up whenever you wanna grind.",
      "clean_label": "Orion",
      "clean_description": "Woke up the next morning, Nikki wasn't there. I looked all over and all I found was a phone number on the stairs. It said thank you for a funky time, call me up whenever you wanna grind."
    },
    {
      "id": "http://example.org/entities/61e221e4-6b45-48bc-9ba9-b083d4a9f880",
      "label": "Orion",
      "type": "public_event",
      "short_display": "<section><p><strong>Orion</strong></p>\n<p><strong>1966-09-06.</strong></p></section>",
      "description": "There's a brand new groove going 'round, in your funky town, and the kick drum is the fault.",
      "clean_label": "Orion",
      "clean_description": "There's a brand new groove going 'round, in your funky town, and the kick drum is the fault."
    },
    {
      "id": "http://example.org/entities/638631c0-c64b-49c3-9181-e45e08ec3f73",
      "label": "<i>Apollo</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Apollo</i></strong></p>\n<p><strong>1927-08-13.</strong></p></section>",
      "description": "Paint <i>a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always.</i> Everytime.",
      "clean_label": "Apollo",
      "clean_description": "Paint a perfect picture, bring to life a vision in one's mind. The beautiful ones always smash the picture. Always. Everytime."
    },
    {
      "id": "http://example.org/entities/75788535-58fa-44f8-a45c-37e2976d8f8d",
      "label": "<i>Challenger</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1957-09-24.</strong></p></section>",
      "description": "People <i>call me rude, I wish we all were nude. I wish there was no black and white, I wish there were no</i> rules.",
      "clean_label": "Challenger",
      "clean_description": "People call me rude, I wish we all were nude. I wish there was no black and white, I wish there were no rules."
    },
    {
      "id": "http://example.org/entities/78f41d7d-850f-4443-a5e2-90a4950d2460",
      "label": "<i>Endeavour</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1934-08-22.</strong></p></section>",
      "description": "Rain is wet, and sugar is sweet. Clap your hands, and stomp your feet!",
      "clean_label": "Endeavour",
      "clean_description": "Rain is wet, and sugar is sweet. Clap your hands, and stomp your feet!"
    },
    {
      "id": "http://example.org/entities/7c0e6e44-b7e7-484c-ba80-878d3aa9e65b",
      "label": "Atlantis",
      "type": "public_event",
      "short_display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1947-08-26.</strong></p></section>",
      "description": "If I gave you diamonds and pearls, would you be a happy boy or a girl? If I could I would give you the world.",
      "clean_label": "Atlantis",
      "clean_description": "If I gave you diamonds and pearls, would you be a happy boy or a girl? If I could I would give you the world."
    },
    {
      "id": "http://example.org/entities/7cf729f0-837f-4c64-84df-27b12b080802",
      "label": "<i>Enterprise</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Enterprise</i></strong></p>\n<p><strong>1937-03-08.</strong></p></section>",
      "description": "You need another lover like you need a hole in your head.",
      "clean_label": "Enterprise",
      "clean_description": "You need another lover like you need a hole in your head."
    },
    {
      "id": "http://example.org/entities/878234fd-1ecf-4320-90e4-e2f60c4fad94",
      "label": "Endeavour",
      "type": "public_event",
      "short_display": "<section><p><strong>Endeavour</strong></p>\n<p><strong>1941-03-09.</strong></p></section>",
      "description": "Some say a man ain't happy unless a man truly dies.",
      "clean_label": "Endeavour",
      "clean_description": "Some say a man ain't happy unless a man truly dies."
    },
    {
      "id": "http://example.org/entities/885ab745-f9ac-4e09-988d-82015af44edc",
      "label": "<i>Challenger</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Challenger</i></strong></p>\n<p><strong>1943-07-09.</strong></p></section>",
      "description": "I <i>never meant to cause you any sorrow, I never meant to cause you any</i> pain.",
      "clean_label": "Challenger",
      "clean_description": "I never meant to cause you any sorrow, I never meant to cause you any pain."
    },
    {
      "id": "http://example.org/entities/898713f7-aa97-4ecc-8ab8-6160ae08cc44",
      "label": "<i>Endeavour</i>",
      "type": "public_event",
      "short_display": "<section><p><strong><i>Endeavour</i></strong></p>\n<p><strong>1939-01-31.</strong></p></section>",
      "description": "Rain is wet, and sugar is sweet. Clap your hands, and stomp your feet!",
      "clean_label": "Endeavour",
      "clean_description": "Rain is wet, and sugar is sweet. Clap your hands, and stomp your feet!"
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 633,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 147
        },
        {
          "key": "person",
          "doc_count": 94
        },
        {
          "key": "attendance",
          "doc_count": 49
        },
        {
          "key": "production",
          "doc_count": 49
        },
        {
          "key": "music",
          "doc_count": 44
        },
        {
          "key": "public_event",
          "doc_count": 44
        },
        {
          "key": "translating",
          "doc_count": 40
        },
        {
          "key": "organization",
          "doc_count": 37
        },
        {
          "key": "reading",
          "doc_count": 37
        },
        {
          "key": "work_of_art",
          "doc_count": 35
        },
        {
          "key": "publication",
          "doc_count": 31
        },
        {
          "key": "writing",
          "doc_count": 26
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
      "self": "http://example.org/entities?page=1&type=public_event",
      "last": "http://example.org/entities?page=2&type=public_event",
      "next": "http://example.org/entities?page=2&type=public_event"
    }
  }
}
~~~

