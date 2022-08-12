# Entities API



## GET /entities/:id - Production

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| alternate_spellings | Array |  | false |
| cast | Array |  | false |
| city | HTML String |  | false |
| date | HTML String |  | false |
| director | HTML String |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| personnel | Array |  | false |
| proposal | HTML String |  | false |
| response | HTML String |  | false |
| reason | HTML String |  | false |
| theater | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/57db018e-c68d-4b5e-a0f6-36caaf832b52</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a3126a9f05e0725ca6079d70759ab8a3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b7523c36-6351-49aa-9dcb-69fc6c7b9a62
X-Runtime: 1.176120
Vary: Origin
Content-Length: 965</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/57db018e-c68d-4b5e-a0f6-36caaf832b52",
  "type": "production",
  "label": "The Lord of the Rings: The Two Towers",
  "clean_label": "The Lord of the Rings: The Two Towers",
  "description": "Put a bird on it tumblr chillwave you probably haven't heard of them poutine.",
  "clean_description": "Put a bird on it tumblr chillwave you probably haven't heard of them poutine.",
  "alternate_spellings": [
    "Coco Montrese"
  ],
  "cast": [
    "Yooden Vranx",
    "Walter Sobchak"
  ],
  "city": "Codyshire",
  "date": "1952-11-11",
  "director": "Jackie Treehorn",
  "links": [
    "http://koelpin.biz/dania"
  ],
  "notes": "Seitan everyday selvage 8-bit offal before they sold out taxidermy austin.",
  "personnel": [
    "Hotblack Desiato"
  ],
  "proposal": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "response": "It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.",
  "reason": null,
  "theater": "RW6"
}</pre>
