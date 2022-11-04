# Entities API



## GET /entities/:id - Translating

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/0f05b41b-08a2-4ad3-8443-9d658e7d4ed2</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d3331e83132274504e16c319f7375182&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: f2121702-3915-4d1e-95cf-8d68e0f81bbe
X-Runtime: 1.440679
Vary: Origin
Content-Length: 2410</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "0f05b41b-08a2-4ad3-8443-9d658e7d4ed2",
  "type": "translating",
  "label": "<i>Quo Vadis</i>",
  "short_display": "<section><p><strong>Author</strong> Random Dent, <strong>Original Title</strong> <i>Quo Vadis</i></p>\n<p><strong>Translated into</strong> Gaelic by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Original Title</th>\n<td><i>Quo Vadis</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Author</th>\n<td>Random Dent</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated into</th>\n<td>Gaelic by Loonquawl and Phouchg</td>\n</tr>\n<tr>\n<th scope=\"row\">Translated Title</th>\n<td>Golgafrinchan Ark Fleet Ship B.</td>\n</tr>\n<tr>\n<th scope=\"row\">Publication/Production</th>\n<td>Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.</td>\n</tr>\n</table>",
  "description": "Disrupt <i>godard mlkshk helvetica</i> kickstarter.",
  "e_type": "translating",
  "legacy_pk": 52663,
  "authors": [
    "Random Dent"
  ],
  "notes": "Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed.",
  "translated_into": "gaelic",
  "translated_title": "Golgafrinchan Ark Fleet Ship B.",
  "translators": [
    "Loonquawl and Phouchg"
  ],
  "letters": {
    "mentioned_in": [
      {
        "id": "983c87a6-3777-4eb0-8b79-6fdcf4a3aa9b",
        "label": "25 July 1986 - Fritsch, Jennie"
      }
    ],
    "recived": [
      {
        "id": "c8646cca-cdc1-45e3-9aab-63f155e68dd7",
        "label": "05 July 1985 - <i>Quo Vadis</i>, Wolf, Fabian"
      }
    ],
    "sent": [
      {
        "id": "d4850ab6-8471-4667-8346-288591e64690",
        "label": "11 November 1978 - Kihn, Fermin"
      }
    ],
    "sent_to": [
      {
        "id": "c4818d75-f3b5-4f5b-bdca-e2fc1b8b9949",
        "label": "11 January 1982 - Boyle, Trenton"
      }
    ],
    "sent_from": [
      {
        "id": "2b4540f3-9f34-4aad-9563-7248731b973d",
        "label": "01 June 1975 - Hilll, Pat"
      }
    ]
  }
}
~~~

