# Letters API

## All letters

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single page | false | 25
| q | Query string | false | *
| fields | List of ields to include in search | false | recipients,mentions,repositories

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?page=1&amp;per_page=25&amp;q=*&amp;fields=recipients%2C+mentions</pre>

#### Query Parameters

<pre>page: 1
per_page: 25
q: *
fields: recipients, mentions</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?fields=recipients%2C+mentions&amp;page=1&amp;per_page=25&amp;q=%2A&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?fields=recipients%2C+mentions&amp;page=2&amp;per_page=25&amp;q=%2A&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?fields=recipients%2C+mentions&amp;page=2&amp;per_page=25&amp;q=%2A&gt;; rel=&#39;next&#39;
X-Total-Count: 50
Content-Type: application/json; charset=utf-8
ETag: W/&quot;5bd33b68c5286861753683fc2909c7a7&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 18355cd1-6a52-4640-a048-c65c0b6fa067
X-Runtime: 0.953226
Vary: Origin
Content-Length: 4027</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letter/02f8da2a-1ec9-4b48-a84d-1e21f3011340.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/05a3ce86-502c-4493-8dee-cc008cba2385.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/060e8249-6424-4656-a4f8-715e9ce57cf0.json",
      "language": "german"
    },
    {
      "id": "http://example.org/letter/0dc92e40-5ca6-4c5f-b2fa-7ec469181147.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/13d4c8ef-7d80-4190-9c98-a204367eb130.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/1a8769ca-5b9e-4f8b-90dc-b8495872d376.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/2590200c-2b11-4ba8-b3e5-a30e42b68dbe.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/291e2223-f89c-4c8a-8572-548121fe6b5e.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/2c79ebdc-1a01-4784-9372-08f351c8aff0.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/2c87d6b8-ea73-4aed-8215-70ce5a7e8fb6.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/30b48b04-c424-43bf-ba68-648ab8c0c33e.json",
      "language": "german"
    },
    {
      "id": "http://example.org/letter/37bca8a0-df3e-4ba8-b11e-f324f1b7e410.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/396d83aa-41ca-484e-aa3d-92b9d7486d1f.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/3a0bff57-aedf-4584-ba9a-9d91e03bfebb.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/53c1c1e4-c203-43df-913c-aea818be7984.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/64fcefcf-2db9-4e0f-85e1-217e26c95c85.json",
      "language": "german"
    },
    {
      "id": "http://example.org/letter/6b0cb21e-1885-4849-8790-09f16edb2a3c.json",
      "language": "german"
    },
    {
      "id": "http://example.org/letter/7d0494cd-437b-45d6-abfc-bf9e583e758c.json",
      "language": "german"
    },
    {
      "id": "http://example.org/letter/801ac820-7f67-4806-9502-efba1e79fd11.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/806e0753-5308-4e7d-84a1-32931f6044f4.json",
      "language": "german"
    },
    {
      "id": "http://example.org/letter/80b775da-a88b-42d2-870b-f0c3186e8637.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/835f5404-024c-41e5-adc7-187c038b5786.json",
      "language": "english"
    },
    {
      "id": "http://example.org/letter/876b3bca-dee2-41f6-bedb-b73c786314d2.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/907f2b7f-551e-4dae-8d0a-60de55d5b52c.json",
      "language": "french"
    },
    {
      "id": "http://example.org/letter/90a0ba27-7897-4618-bb25-79cba39231e6.json",
      "language": "french"
    }
  ],
  "aggs": {
    "date": {
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 7
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 9
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 6
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 6
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 8
        }
      ]
    },
    "repositories": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "East Louisiana College",
          "doc_count": 27
        },
        {
          "key": "The Sanford",
          "doc_count": 26
        },
        {
          "key": "Eastern Wisoky Institute",
          "doc_count": 19
        },
        {
          "key": "Eastern Delaware College",
          "doc_count": 17
        }
      ]
    },
    "language": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 21
        },
        {
          "key": "french",
          "doc_count": 16
        },
        {
          "key": "german",
          "doc_count": 13
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
      "self": "http://example.org/letters?fields=recipients%2C+mentions&page=1&per_page=25&q=%2A",
      "last": "http://example.org/letters?fields=recipients%2C+mentions&page=2&per_page=25&q=%2A",
      "next": "http://example.org/letters?fields=recipients%2C+mentions&page=2&per_page=25&q=%2A"
    }
  }
}</pre>
