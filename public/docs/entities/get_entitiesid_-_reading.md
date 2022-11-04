# Entities API



## GET /entities/:id - Reading

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/0b5f1100-4f0f-448a-92fc-08fa14fe70ae</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;be29bfee832811183a730361ff4b6b3d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e8a120d4-7dcb-4064-a58c-0b1a780f57f1
X-Runtime: 1.575554
Vary: Origin
Content-Length: 2102</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "0b5f1100-4f0f-448a-92fc-08fa14fe70ae",
  "type": "reading",
  "label": "<i>Fair Stood the Wind for France</i>",
  "short_display": "<section><p><strong>Author</strong> Brandon Kassulke</p>\n<p><strong>Title</strong> <i>Fair Stood the Wind for France</i></p>\n<p><strong>Publication</strong> Harvard University Press.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Brandon Kassulke</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>Fair Stood the Wind for France</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Harvard University Press.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</td>\n</tr>\n</table>",
  "description": "Banjo letterpress leggings bespoke.",
  "e_type": "reading",
  "legacy_pk": 21668,
  "authors": [
    "Brandon Kassulke"
  ],
  "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "publication_information": "Harvard University Press.",
  "publication_format": "gastropub",
  "letters": {
    "mentioned_in": [
      {
        "id": "2aecfe73-e01f-4b8b-9227-89c40bbe1abc",
        "label": "24 June 1975 - Connelly, Chana"
      }
    ],
    "recived": [
      {
        "id": "7b2bfec0-ed1c-468b-bbda-750acca36f96",
        "label": "03 March 1959 - <i>Fair Stood the Wind for France</i>, Wuckert, Noe"
      }
    ],
    "sent": [
      {
        "id": "b4bdd58d-21e2-4c26-9bde-8af97ef6f965",
        "label": "31 January 1961 - Monahan, Dona"
      }
    ],
    "sent_to": [
      {
        "id": "d2dc19e6-ce31-47c1-9a6c-5fbb460b5f6a",
        "label": "18 July 1964 - Rogahn, Cedrick"
      }
    ],
    "sent_from": [
      {
        "id": "44f70e5e-5659-4b50-9e62-e0404239fc41",
        "label": "26 December 1971 - Reynolds, Broderick"
      }
    ]
  }
}
~~~

