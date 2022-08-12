# Entities API



## GET /entities?search=:label&amp;fields=label&amp;type=person - Person by Label

### GET /entities

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

<pre>GET /entities?search=Heathcote%2C+Sharice&amp;type=person</pre>

#### Query Parameters

<pre>search: Heathcote, Sharice
type: person</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=Heathcote%2C+Sharice&amp;type=person&gt;; rel=&#39;self&#39;
X-Total-Count: 1
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d100e679a3acefeddb110afab37ddaec&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8e1f5b86-57de-4526-b724-2cf6ae6be88d
X-Runtime: 11.741865
Vary: Origin
Content-Length: 850</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "http://example.org/entities/aad86d24-e4fa-476d-b0ac-72de89ee6b25",
      "label": "Heathcote, Sharice",
      "type": "person",
      "display_header": "<b>Heathcote, Sharice 1913-1987</b>",
      "description": "Here <i>I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I</i> don't.",
      "clean_label": "Heathcote, Sharice",
      "clean_description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "person",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 1,
    "links": {
      "self": "http://example.org/entities?page=1&search=Heathcote%2C+Sharice&type=person"
    }
  }
}</pre>
