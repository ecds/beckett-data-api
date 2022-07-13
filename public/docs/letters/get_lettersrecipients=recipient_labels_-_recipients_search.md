# Letters API

## GET /letters?recipients=:recipient_labels - Recipients search

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

<pre>GET /letters?recipients=%3Ci%3ELyra+Erso%3C%2Fi%3E%2CRevolio+%27Gearhead%27+Clockberg%2C+Jr.</pre>

#### Query Parameters

<pre>recipients: &lt;i&gt;Lyra Erso&lt;/i&gt;,Revolio &#39;Gearhead&#39; Clockberg, Jr.</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;recipients=%3Ci%3ELyra+Erso%3C%2Fi%3E%2CRevolio+%27Gearhead%27+Clockberg%2C+Jr.&gt;; rel=&#39;self&#39;
X-Total-Count: 0
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a922d774a4f488c7073fecb2e2c6add8&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 5a566e91-e1b3-4f47-8328-7c7b217508eb
X-Runtime: 2.461760
Vary: Origin
Content-Length: 486</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [

  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 0,
      "buckets": [

      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 0,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [

      ]
    },
    "language": {
      "meta": {
      },
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
      "self": "http://example.org/letters?page=1&recipients=%3Ci%3ELyra+Erso%3C%2Fi%3E%2CRevolio+%27Gearhead%27+Clockberg%2C+Jr."
    }
  }
}</pre>
