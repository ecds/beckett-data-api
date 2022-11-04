# Entities API



## GET /entities/:id - Public Event

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/9657a63f-d7f6-4bf7-94fd-6bae3c0873ea</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;4f015d1fc9dcf90cbdcae0f50dd81e92&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 99af1304-d7ce-4be5-829d-023fc5b26f8c
X-Runtime: 1.576206
Vary: Origin
Content-Length: 1911</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "9657a63f-d7f6-4bf7-94fd-6bae3c0873ea",
  "type": "public_event",
  "label": "<i>Mercury</i>",
  "short_display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1963-05-23.</strong></p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Description</th>\n<td>All seven and we watch them fall. They stand in the way of love and we will smoke them all with an intellect, and a savoir faire.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1963-05-23.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://ratke-schultz.name/stefania\" target=\"_blank\" rel=\"noopener\">http://ratke-schultz.name/stefania<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "All seven and we watch them fall. They stand in the way of love and we will smoke them all with an intellect, and a savoir faire.",
  "e_type": "public_event",
  "legacy_pk": 57135,
  "date_str": "1963-05-23.",
  "letters": {
    "mentioned_in": [
      {
        "id": "6701375a-fd64-438a-a81a-a4f3677d425e",
        "label": "19 November 1968 - Zboncak, Kenny"
      }
    ],
    "recived": [
      {
        "id": "97749f2e-1181-4e6d-8b48-8b3d6dea8894",
        "label": "29 October 1980 - Nienow, Tanner, <i>Mercury</i>"
      }
    ],
    "sent": [
      {
        "id": "5aafbb01-d2e2-41fb-815c-7ecc41e0ee13",
        "label": "14 February 1981 - Ryan, Anderson"
      }
    ],
    "sent_to": [
      {
        "id": "80fbd241-21d5-40a8-971b-47baed527079",
        "label": "13 October 1954 - Tremblay, Mitchell"
      }
    ],
    "sent_from": [
      {
        "id": "7a79b097-c604-477c-a02e-f1161f3fc538",
        "label": "03 April 1967 - O'Kon, Jutta"
      }
    ]
  }
}
~~~

