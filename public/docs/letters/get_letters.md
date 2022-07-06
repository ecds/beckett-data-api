# Letters API

## GET /letters

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| q | Text to search. | false | *
| fields | List of fields to include be queried. | false | recipients,mentions,destinations,origins,repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | nil
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | nil

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 50
Content-Type: application/json; charset=utf-8
ETag: W/&quot;9bfca70045d816b65a7a824e7b38c16c&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8cbc5eb4-7a14-48e7-820e-238205dd975b
X-Runtime: 0.903854
Vary: Origin
Content-Length: 4390</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letter/0385bf9f-d89c-47bc-9109-3e2c403daacf.json",
      "date": "1959-03-21T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/08bd2eeb-40ef-4d60-b038-ab747acba66f.json",
      "date": "1959-04-03T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/0c5583d9-1347-46a1-b01b-cd972bd91f4d.json",
      "date": "1965-05-31T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/0c8c6ba2-a796-4dfd-b497-9dd78f127244.json",
      "date": "1964-11-02T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/15bfbf08-c9cc-4448-85bc-c11530546a42.json",
      "date": "1963-08-27T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/1758ad90-4e6f-4e0c-ae44-45d86da860bf.json",
      "date": "1961-11-03T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/24a7edfe-6d13-4f40-8c16-1de2b546ad62.json",
      "date": "1957-10-22T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/280cd48f-5e83-4e6a-a0a1-a748117e351a.json",
      "date": "1958-11-05T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/33f686c1-d9df-4607-b9a9-745d577efd73.json",
      "date": "1962-10-16T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/3451a278-6764-408d-9aa9-f67ffb00ce7b.json",
      "date": "1957-01-09T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/3b01e616-f2b5-4a78-8a91-d784684cadfc.json",
      "date": "1959-02-25T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/3b12cba6-bf1e-4f58-8d59-7167cab42336.json",
      "date": "1961-03-08T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/3f1c8d2e-477c-4d5a-9c30-d676d1ad2a20.json",
      "date": "1962-04-10T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/492c8cf1-e06b-43c2-8ae6-7bece57fd647.json",
      "date": "1957-03-30T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/4e08c25e-c217-47d4-8d1e-961c70f8ee80.json",
      "date": "1960-03-30T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/4f9a888c-5b0d-4e3e-886a-225e380e91f5.json",
      "date": "1958-08-29T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/502bb41b-0e47-4dd9-b284-417e97f3d121.json",
      "date": "1962-10-25T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/503bf5fb-978d-44c3-a05f-1b49e0b7b52b.json",
      "date": "1961-02-01T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/5210f730-2cf3-426b-b096-b58ccead5aa5.json",
      "date": "1963-01-14T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/6787a536-1be6-4272-b2a6-b55cd84a8215.json",
      "date": "1963-06-29T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/6969cdd2-533c-44ed-9d6b-c909488a4bea.json",
      "date": "1960-01-26T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/6bc321f1-4aa8-4f3f-b55f-b623fa8b4afc.json",
      "date": "1958-09-04T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/6c6bf598-792e-4e1b-85b4-d4cac22fda72.json",
      "date": "1961-04-09T00:00:00.000-05:00"
    },
    {
      "id": "http://example.org/letter/6feb9bf8-88d9-4254-9ca6-e53ecf0d8c4b.json",
      "date": "1964-07-15T00:00:00.000-04:00"
    },
    {
      "id": "http://example.org/letter/74010222-29ce-4abc-b5ad-f1f6bc4d5786.json",
      "date": "1965-09-17T00:00:00.000-04:00"
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
          "doc_count": 7
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 8
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 4
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 9
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 4
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 6
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
          "key": "Eastern Oregon University",
          "doc_count": 23
        },
        {
          "key": "Eastern Weissnat College",
          "doc_count": 23
        },
        {
          "key": "The Turcotte Institute",
          "doc_count": 23
        },
        {
          "key": "East Utah University",
          "doc_count": 21
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
          "key": "french",
          "doc_count": 24
        },
        {
          "key": "english",
          "doc_count": 16
        },
        {
          "key": "german",
          "doc_count": 10
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
      "self": "http://example.org/letters?page=1",
      "last": "http://example.org/letters?page=2",
      "next": "http://example.org/letters?page=2"
    }
  }
}</pre>
