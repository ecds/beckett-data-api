# Letters API

## GET /letters?start_date=:YYYY-MM-DD&amp;end_date=:YYYY-MM-DD - On or Between Dates

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels | false | null
| senders | Comma seperated list of sender labels | false | null
| repositories | Comma seperated list of repository labels | false | null
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?start_date=1965-10-14&amp;end_date=1965-07-16</pre>

#### Query Parameters

<pre>start_date: 1965-10-14
end_date: 1965-07-16</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?end_date=1965-07-16&amp;page=1&amp;start_date=1965-10-14&gt;; rel=&#39;self&#39;
X-Total-Count: 0
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d5e498b06e1db74e1fef83de9e930033&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 708fc209-e910-42ec-8593-cbe77581bbf9
X-Runtime: 2.135028
Vary: Origin
Content-Length: 423</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [

  ],
  "aggs": {
    "date": {
      "doc_count": 0,
      "buckets": [

      ]
    },
    "repositories": {
      "doc_count": 0,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [

      ]
    },
    "language": {
      "doc_count": 0,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [

      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 0,
    "total_count": 0,
    "links": {
      "self": "http://example.org/letters?end_date=1965-07-16&page=1&start_date=1965-10-14"
    }
  }
}</pre>
