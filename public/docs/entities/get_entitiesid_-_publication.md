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

<pre>GET /entities/9c079a80-a08c-4a49-8888-9342f1355353</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b86ef4c966000e1f76502f900e2ff191&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ddb36932-988f-442f-a641-c586440de593
X-Runtime: 1.482554
Vary: Origin
Content-Length: 2766</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "9c079a80-a08c-4a49-8888-9342f1355353",
  "type": "publication",
  "label": "<i>J. M. Dent</i>",
  "short_display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> <i>J. M. Dent</i></p>\n<p><strong>Translator</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Publication</strong> Park master jean shorts scenester bicycle rights biodiesel.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Author</th>\n<td>The Big Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td><i>J. M. Dent</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Translator</th>\n<td>Prostetnic Vogon Kwaltz</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication</th>\n<td>Park master jean shorts scenester bicycle rights biodiesel.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n</table>",
  "description": "Chambray <i>organic 3 wolf moon vegan biodiesel</i> farmtotable.",
  "e_type": "publication",
  "legacy_pk": 55902,
  "authors": [
    "The Big Lebowski"
  ],
  "notes": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "publication_information": "Park master jean shorts scenester bicycle rights biodiesel.",
  "translators": [
    "Prostetnic Vogon Kwaltz"
  ],
  "letters": {
    "mention": "http://example.org/entities/9c079a80-a08c-4a49-8888-9342f1355353/letters?relation=mention",
    "recived": "http://example.org/entities/9c079a80-a08c-4a49-8888-9342f1355353/letters?relation=recived",
    "sent": "http://example.org/entities/9c079a80-a08c-4a49-8888-9342f1355353/letters?relation=sent",
    "desination": "http://example.org/entities/9c079a80-a08c-4a49-8888-9342f1355353/letters?relation=destination",
    "origin": "http://example.org/entities/9c079a80-a08c-4a49-8888-9342f1355353/letters?relation=origin"
  }
}
~~~

