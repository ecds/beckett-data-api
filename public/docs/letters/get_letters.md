# Letters API

## GET /letters

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| q | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients,mentions,destinations,origins,repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | nil
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | nil
| recipients | Comma seperated list of recipient labels | false | nil
| destinations | Comma seperated list of destination labels | false | nil
| origins | Comma seperated list of origin labels | false | nil
| repositories | Comma seperated list of repository labels | false | nil

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?repositories[]=%23%3CRepository%3A0x000055739af8cf60%3E&amp;repositories[]=%23%3CRepository%3A0x000055739ae15da8%3E&amp;repositories[]=%23%3CRepository%3A0x000055739adebc10%3E&amp;repositories[]=%23%3CRepository%3A0x000055739ae57960%3E</pre>

#### Query Parameters

<pre>repositories: [&quot;#&lt;Repository:0x000055739af8cf60&gt;&quot;, &quot;#&lt;Repository:0x000055739ae15da8&gt;&quot;, &quot;#&lt;Repository:0x000055739adebc10&gt;&quot;, &quot;#&lt;Repository:0x000055739ae57960&gt;&quot;]</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739af8cf60%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739ae15da8%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739adebc10%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739ae57960%3E&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=2&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739af8cf60%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739ae15da8%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739adebc10%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739ae57960%3E&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=2&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739af8cf60%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739ae15da8%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739adebc10%3E&amp;repositories%5B%5D=%23%3CRepository%3A0x000055739ae57960%3E&gt;; rel=&#39;next&#39;
X-Total-Count: 50
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9b82f2495e7a80ca04b12a39c9eace9c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: c33b1804-1b60-425e-a762-3747ce690654
X-Runtime: 1.126507
Vary: Origin
Content-Length: 5174</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letter/06304e89-8a52-4bd1-89aa-fba04f2c3559.json",
      "date": "1965-01-25T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/1832d8bf-f258-4f27-a437-d5cd93a831c4.json",
      "date": "1960-03-03T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/1abb5252-f029-4f71-8222-d00fbad5b5be.json",
      "date": "1963-12-07T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/201c7eae-6acd-45e0-99c9-157bdadc2d3a.json",
      "date": "1965-07-26T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/22040d71-5e62-408f-a443-1d9f9516aefc.json",
      "date": "1961-03-16T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/26a8b058-4196-48a3-b822-03f524b5d3dc.json",
      "date": "1963-10-13T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/285074d0-0d43-48bc-ae70-c802a8159581.json",
      "date": "1965-11-02T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/2a92a62c-cf1e-414e-8c73-97e8cf745d2a.json",
      "date": "1962-10-12T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/34461397-0b2d-4a60-9b14-357b405aa1b4.json",
      "date": "1960-06-30T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/3aa852b1-4a3b-44c9-8f15-df75e3aff9cd.json",
      "date": "1965-03-16T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/411c279a-7951-42a6-a777-99317b39e783.json",
      "date": "1960-04-21T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/42952df5-ea95-4113-8b8c-026f7faa8840.json",
      "date": "1960-09-15T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/43604825-48af-4ede-8611-8186bfab18a4.json",
      "date": "1964-01-31T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/483a0001-6f87-4c50-97e1-e8d73aefff68.json",
      "date": "1958-12-13T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/4be659aa-cd7c-4037-9094-3f52a64c4ff7.json",
      "date": "1959-07-18T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/4e3e5669-266f-4730-a59a-d10335e370c9.json",
      "date": "1960-08-14T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/51c41240-e38e-414c-892d-dc75a7440cc0.json",
      "date": "1959-12-31T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/5c617889-9f0e-4884-a6ea-b67d8c9271c2.json",
      "date": "1958-12-25T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/5eafd744-d705-4a89-89af-a3d796ed38d8.json",
      "date": "1960-01-05T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/5ecfed50-2ead-4feb-b0d5-21e17cd1b6b8.json",
      "date": "1958-09-28T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/60e7b852-6ba0-4153-b013-a0983f9fe9bc.json",
      "date": "1959-03-06T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/6b6861dd-ef8b-4ab1-baea-0c88a42e8eb7.json",
      "date": "1960-10-26T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/6ee92fcb-7bfc-4719-9c55-b22639b2d026.json",
      "date": "1964-01-02T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/6f0a055d-ca8f-4ab1-9e6d-db61499c5f48.json",
      "date": "1965-02-27T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/7119be4f-e305-42b9-a5c6-771081b48920.json",
      "date": "1965-04-07T00:00:00.000-05:00"
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 50,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 6
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 7
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 5
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 8
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 9
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 50,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Stokes Institute",
          "doc_count": 26
        },
        {
          "key": "Western Alaska Academy",
          "doc_count": 26
        },
        {
          "key": "East Minnesota Academy",
          "doc_count": 22
        },
        {
          "key": "Western Stiedemann College",
          "doc_count": 12
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 50,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 19
        },
        {
          "key": "english",
          "doc_count": 16
        },
        {
          "key": "french",
          "doc_count": 15
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 50,
    "links": {
      "self": "http://example.org/letters?page=1&repositories%5B%5D=%23%3CRepository%3A0x000055739af8cf60%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739ae15da8%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739adebc10%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739ae57960%3E",
      "last": "http://example.org/letters?page=2&repositories%5B%5D=%23%3CRepository%3A0x000055739af8cf60%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739ae15da8%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739adebc10%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739ae57960%3E",
      "next": "http://example.org/letters?page=2&repositories%5B%5D=%23%3CRepository%3A0x000055739af8cf60%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739ae15da8%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739adebc10%3E&repositories%5B%5D=%23%3CRepository%3A0x000055739ae57960%3E"
    }
  }
}</pre>
