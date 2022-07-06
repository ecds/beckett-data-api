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

<pre>GET /letters/5112bf35-d5f8-4641-979a-fd9d5e11083c</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;725332fcd310655413d0e740a9ea9fe2&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 2216f07e-c883-4154-8673-8864295dbb14
X-Runtime: 0.472843
Vary: Origin
Content-Length: 1149</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "5112bf35-d5f8-4641-979a-fd9d5e11083c",
  "legacy_pk": null,
  "code": null,
  "date": "1959-01-28T00:00:00.000-05:00",
  "addressed_to": "53717 Shani Plains, Kizzieborough, RI 85731-8261",
  "addressed_from": "Apt. 158 8365 Hintz Drives, Port Gennashire, AR 40042-8826",
  "language": "german",
  "physical_desc": "Et explicabo aut. Qui ab in. Consequatur qui molestiae.",
  "physical_detail": "offal",
  "physical_notes": "Eaque aut sint. Corrupti tenetur quasi. Fugiat alias vel.",
  "repository_info": "XOXO",
  "postcard_image": "http://schulist.info/meditation.jpg",
  "leaves": 3,
  "sides": 2,
  "postmark": "1965-04-14, Lake Sidbury",
  "typed": true,
  "signed": true,
  "verified": false,
  "envelope": "E",
  "notes": "Mollitia voluptatem placeat. Ipsum dignissimos iure. Et consequatur eaque.",
  "content": "Aut unde odio. Eos et dolorem. Odit rerum qui. Repellat autem sint. Eaque rem aut. Aspernatur earum at. Dolorem pariatur beatae. Saepe dolor deleniti. Beatae omnis ex. Eaque fuga minima. Aliquam vero porro. Ex sint quod. Enim natus sunt.",
  "letter_owner_id": null,
  "file_folder_id": null,
  "letter_publisher_id": null,
  "created_at": "2022-07-06T09:56:15.264-04:00",
  "updated_at": "2022-07-06T09:56:15.264-04:00"
}</pre>
