# Entities API



## GET /entities/:id - Organization

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/e12e48ab-2066-473f-91c8-44a61d44a7f5</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;3b45a5c8fd395d43a2cbf85bf10952d4&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: bac20d36-049d-47d6-8df1-a9204573de78
X-Runtime: 1.556938
Vary: Origin
Content-Length: 2113</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "e12e48ab-2066-473f-91c8-44a61d44a7f5",
  "type": "organization",
  "label": "<i>Nano</i>",
  "short_display": "<section><p><strong><i>Nano</i></strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Nano</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I <i>think you ought to know I'm feeling very</i> depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>BenDeLaCreme</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>I've just had an unhappy love affair, so I don't see why anybody else should have a good time.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Shut up already, damn!</td>\n</tr>\n</table>",
  "description": "I <i>think you ought to know I'm feeling very</i> depressed.",
  "e_type": "organization",
  "legacy_pk": 80089,
  "alternate_names": [
    "BenDeLaCreme"
  ],
  "alternate_spellings": null,
  "profile": "I've just had an unhappy love affair, so I don't see why anybody else should have a good time.",
  "letters": {
    "mentioned_in": [
      {
        "id": "4887a131-e406-4a7d-acd2-fd02e4b33691",
        "label": "24 October 1959 - Rogahn, Sherly"
      }
    ],
    "recived": [
      {
        "id": "9d18ee80-d48d-4747-8bfd-b49e4c5cba08",
        "label": "16 September 1974 - Olson, Lela, <i>Nano</i>"
      }
    ],
    "sent": [
      {
        "id": "731e3f8e-9052-448e-b9f4-b219c54470fd",
        "label": "14 February 1984 - Welch, Daryl"
      }
    ],
    "sent_to": [
      {
        "id": "91e55339-22c4-4df3-95dc-040b402f0292",
        "label": "07 October 1961 - Hauck, Dennis"
      }
    ],
    "sent_from": [
      {
        "id": "0a9f10ce-56c7-4b03-83bb-2b3fcc171e56",
        "label": "14 May 1982 - Anderson, Terrance"
      }
    ]
  }
}
~~~

