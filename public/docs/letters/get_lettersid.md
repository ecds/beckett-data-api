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

<pre>GET /letters/ae41515d-4113-4202-8278-881fc2141f69</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;43c9a464148448320162668848dfe8b5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 82932988-6cb2-4f39-9d4e-2721c26da63f
X-Runtime: 0.577145
Vary: Origin
Content-Length: 1308</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "ae41515d-4113-4202-8278-881fc2141f69",
  "legacy_pk": null,
  "code": null,
  "date": "1961-06-10T00:00:00.000-04:00",
  "addressed_to": "Suite 735 32972 Danika Ville, South Claudio, MS 55975-8671",
  "addressed_from": "307 Keebler Lights, Jonesside, NE 00265",
  "language": "english",
  "physical_desc": "In molestiae error. Sit consequuntur sit. Quo voluptatum et.",
  "physical_detail": "kinfolk",
  "physical_notes": "Et et sed. Facilis veritatis libero. Placeat aliquid consequatur.",
  "repository_info": "letterpress",
  "postcard_image": "http://orn.biz/cliche.jpg",
  "leaves": 1,
  "sides": 1,
  "postmark": "1963-02-03, East Cherrie",
  "volume_pages": null,
  "typed": false,
  "signed": false,
  "verified": false,
  "envelope": "E",
  "notes": "Atque porro eligendi. Soluta modi magni. Dolores et ut.",
  "content": "Suscipit voluptatem aut. Et laudantium voluptatum. Sunt aspernatur rem. In nam in. Vel necessitatibus aut. Magni quasi tempora. Enim atque ducimus. Dolores eum totam. Ducimus vero magni. Et minima sit. Et nesciunt molestiae. Dignissimos quas illo. Eos cupiditate iste. Quae aliquid sunt.",
  "letter_file_id": "ecc101cc-05b1-4e50-b5c6-c17a7f39147c",
  "letter_publisher_id": "904caada-b66d-4620-bbc7-22da701bba6b",
  "letter_owner_id": "e2af9f40-41e7-4fa5-986b-39737cf8eadf",
  "created_at": "2022-07-07T08:51:47.599-04:00",
  "updated_at": "2022-07-07T08:51:47.599-04:00"
}</pre>
