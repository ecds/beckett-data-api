# Entities API



## GET /entites?per_page=:results_per_page&amp;page=:offset - Paginated results

### GET /entities

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

<pre>GET /entities?page=2&amp;per_page=5</pre>

#### Query Parameters

<pre>page: 2
per_page: 5</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=2&amp;per_page=5&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;first&#39;, &lt;http://example.org/entities?page=7&amp;per_page=5&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=3&amp;per_page=5&gt;; rel=&#39;next&#39;, &lt;http://example.org/entities?page=1&amp;per_page=5&gt;; rel=&#39;prev&#39;
X-Total-Count: 34
Content-Type: application/json; charset=utf-8
ETag: W/&quot;dd8488218d2fdbad09998a563f2233de&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 03ff6219-a3d3-4789-9651-2d8dd0bab723
X-Runtime: 2.805692
Vary: Origin
Content-Length: 4889</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/25615278-7519-4a79-abb1-cb27f4568f3b",
      "label": "<i>The Big Bang Burger Bar</i>",
      "type": "place",
      "short_display": "<section><p><strong><i>The Big Bang Burger Bar</i></strong></p>\n<p>Marfa pabst artisan aesthetic squid.</p></section>",
      "description": "Marfa pabst artisan aesthetic squid.",
      "clean_label": "The Big Bang Burger Bar",
      "clean_description": "Marfa pabst artisan aesthetic squid."
    },
    {
      "id": "http://example.org/entities/2ed60d91-ac91-423e-adea-b635aa863cf1",
      "label": "A Farewell to Arms",
      "type": "writing",
      "short_display": "<section><p><strong>Title</strong> A Farewell to Arms</p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Lintilla</p>\n<p><strong>Date</strong> 1968-08-02.</p></section>",
      "description": "Retro <i>williamsburg 1 direct trade scenester hoodie yolo next level</i> tacos.",
      "clean_label": "A Farewell to Arms",
      "clean_description": "Retro williamsburg 1 direct trade scenester hoodie yolo next level tacos."
    },
    {
      "id": "http://example.org/entities/317744b6-575a-4c09-b58b-dd143fa49162",
      "label": "Pacocha, Francesco",
      "type": "person",
      "short_display": "<section><p><strong>Francesco Pacocha, 1911-1984</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>",
      "description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
      "clean_label": "Pacocha, Francesco",
      "clean_description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't."
    },
    {
      "id": "http://example.org/entities/34c1cdf8-0d67-4142-aa3f-986c3db4f3e9",
      "label": "<i>Baltimore</i>",
      "type": "work_of_art",
      "short_display": "<section><p><strong>Artist</strong> Trillian</p>\n<p><strong>Title</strong> <i>Baltimore</i></p>\n<p><strong>Description</strong> Keffiyeh synth cred lumbersexual pork belly hammock flannel dreamcatcher.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>",
      "description": "Keffiyeh synth cred lumbersexual pork belly hammock flannel dreamcatcher.",
      "clean_label": "Baltimore",
      "clean_description": "Keffiyeh synth cred lumbersexual pork belly hammock flannel dreamcatcher."
    },
    {
      "id": "http://example.org/entities/42e7a7cf-c57f-4827-93ab-ee7c6c6fe5f2",
      "label": "Rehearsal, Biodiesel <i>distillery cliche bitters hella retro</i> drinking.",
      "type": "attendance",
      "short_display": "<section><p><strong>Rehearsal</strong>, Biodiesel <i>distillery cliche bitters hella retro</i> drinking.</p>\n<p><strong>Attended with</strong> Jackie Treehorn and Arthur Dent</p>\n<p><strong>Place, Date</strong> West Mitchel, 05 December 1969</p>\n<p><strong>Director</strong> Dan Streetmentioner</p></section>",
      "description": "Biodiesel <i>distillery cliche bitters hella retro</i> drinking.",
      "clean_label": "Rehearsal, Biodiesel distillery cliche bitters hella retro drinking.",
      "clean_description": "Biodiesel distillery cliche bitters hella retro drinking."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count": 34,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "reading",
          "doc_count": 5
        },
        {
          "key": "person",
          "doc_count": 4
        },
        {
          "key": "place",
          "doc_count": 4
        },
        {
          "key": "production",
          "doc_count": 4
        },
        {
          "key": "work_of_art",
          "doc_count": 4
        },
        {
          "key": "translating",
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
          "key": "publication",
          "doc_count": 2
        },
        {
          "key": "writing",
          "doc_count": 2
        },
        {
          "key": "organization",
          "doc_count": 1
        },
        {
          "key": "public_event",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 2,
    "per_page": 5,
    "page_count": 7,
    "total_count": 34,
    "links": {
      "self": "http://example.org/entities?page=2&per_page=5",
      "first": "http://example.org/entities?page=1&per_page=5",
      "last": "http://example.org/entities?page=7&per_page=5",
      "next": "http://example.org/entities?page=3&per_page=5",
      "prev": "http://example.org/entities?page=1&per_page=5"
    }
  }
}</pre>
