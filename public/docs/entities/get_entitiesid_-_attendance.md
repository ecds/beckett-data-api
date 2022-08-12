# Entities API



## GET /entities/:id - Attendance

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
| attended_with | Array |  | false |
| director | HTML String |  | false |
| event_type | HTML String |  | false |
| performed_by | Array |  | false |
| place_date | HTML String |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/453a9524-2944-454d-9358-57a15ff462ad</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d99c79010ac5d4d04ccc38160c3637a5&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 42eb18d0-50a0-475f-b71c-59cd7f986dcc
X-Runtime: 1.167863
Vary: Origin
Content-Length: 564</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/453a9524-2944-454d-9358-57a15ff462ad",
  "type": "attendance",
  "label": "<i>Judgment at Nuremberg</i>",
  "clean_label": "Judgment at Nuremberg",
  "description": "Skateboard xoxo offal fingerstache keytar viral ramps literally.",
  "clean_description": "Skateboard xoxo offal fingerstache keytar viral ramps literally.",
  "alternate_spellings": [
    "Eureka"
  ],
  "attended_with": [
    "Donny",
    "Frankie and Benjy"
  ],
  "director": "Fenchurch",
  "event_type": "radio_broadcast",
  "performed_by": [
    "Rob McKenna"
  ],
  "place_date": "Lessiehaven, 01 April 1959"
}</pre>
