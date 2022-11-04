# Entities API



## GET /entities/:id - Publication

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/7768d45e-0afa-4d16-8433-d98f362855b1</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;ab496a539a1cb983a9b2c26e6f6975c9&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 82ff8663-9b27-4625-b2aa-8e82fc2b340c
X-Runtime: 1.518446
Vary: Origin
Content-Length: 2246</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "7768d45e-0afa-4d16-8433-d98f362855b1",
  "type": "publication",
  "label": "Eerdmans Publishing",
  "short_display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Eerdmans Publishing</p>\n<p><strong>Translator</strong> Marvin</p>\n<p><strong>Publication</strong> Neutra fanny pack chia chambray try-hard williamsburg flexitarian ennui.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Brandt</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Eerdmans Publishing</td>\n</tr>\n<tr>\n<th scope=\"row\">Translator</th>\n<td>Marvin</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Neutra fanny pack chia chambray try-hard williamsburg flexitarian ennui.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n</table>",
  "description": "Mixtape <i>semiotics art party vegan twee truffaut 1 irony deep</i> v.",
  "e_type": "publication",
  "legacy_pk": 81660,
  "authors": [
    "Brandt"
  ],
  "notes": "I think you ought to know I'm feeling very depressed.",
  "publication_information": "Neutra fanny pack chia chambray try-hard williamsburg flexitarian ennui.",
  "translators": [
    "Marvin"
  ],
  "letters": {
    "mentioned_in": [
      {
        "id": "06183e22-8f04-4adb-aec3-c586b955c850",
        "label": "28 June 1952 - Sanford, Wilford"
      }
    ],
    "recived": [
      {
        "id": "d9ca0607-cb47-4f6e-a8e1-dc291c257c8a",
        "label": "15 April 1950 - Eerdmans Publishing, Ondricka, Raleigh"
      }
    ],
    "sent": [
      {
        "id": "cffd7ec9-2f9d-4962-9182-dcd8afcdfbfe",
        "label": "23 November 1980 - Grimes, Su"
      }
    ],
    "sent_to": [
      {
        "id": "f163b9e9-5811-47a6-be5b-03a02915dc56",
        "label": "26 January 1987 - Legros, Carmen"
      }
    ],
    "sent_from": [
      {
        "id": "2685a416-a393-499c-b736-a67fca3071d8",
        "label": "09 January 1966 - Leffler, Emery"
      }
    ]
  }
}
~~~

