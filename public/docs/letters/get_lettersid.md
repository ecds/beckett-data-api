# Letters API

## GET /letters/:id

### GET /letters/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters/6fd96553-08d5-41be-9f90-1d731f813802</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;423e05f4d122d43385b0dfdd07388785&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ef366899-1f18-4235-9857-65ba5c4fc966
X-Runtime: 0.474211
Vary: Origin
Content-Length: 1160</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "6fd96553-08d5-41be-9f90-1d731f813802",
  "legacy_pk": null,
  "code": null,
  "date": "1963-09-05T00:00:00.000-04:00",
  "addressed_to": "62528 Cronin Overpass, Wilkinsontown, HI 03281",
  "addressed_from": "Apt. 655 518 Wynona Vista, North Lonfurt, TN 28489-1496",
  "language": "german",
  "physical_desc": "Aperiam qui quas. Maiores enim nostrum. Voluptatem ullam enim.",
  "physical_detail": "chartreuse",
  "physical_notes": "Quidem excepturi mollitia. Officiis natus ea. Et et magnam.",
  "repository_info": "twee",
  "postcard_image": "http://smith.net/offal.jpg",
  "leaves": 1,
  "sides": 2,
  "postmark": "1963-12-21, Beckerfort",
  "typed": true,
  "signed": true,
  "verified": true,
  "envelope": "E",
  "notes": "Occaecati dolorum laudantium. Atque voluptatem deserunt. Tempora voluptatem et.",
  "content": "Animi autem ipsa. Saepe eum sint. Tempora at ut. Libero dicta a. Dignissimos cum molestias. Rerum voluptatem earum. Maiores nemo eligendi. Facilis aliquam dolorem. Iste omnis occaecati. Perspiciatis est similique. Rerum quasi ut. Eius ipsam quia.",
  "letter_owner_id": null,
  "file_folder_id": null,
  "letter_publisher_id": null,
  "created_at": "2022-07-06T10:48:02.449-04:00",
  "updated_at": "2022-07-06T10:48:02.449-04:00"
}</pre>
