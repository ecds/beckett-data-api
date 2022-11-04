# Entities API



## GET /entities/:id - Writing

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/679a62b1-c28f-41b2-8828-55919276f04c</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;786adcd10faa23714520667402d64ce0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 3f363ab2-422b-414b-96bd-df7761ab0903
X-Runtime: 1.504152
Vary: Origin
Content-Length: 2705</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "679a62b1-c28f-41b2-8828-55919276f04c",
  "type": "writing",
  "label": "In a Dry Season",
  "short_display": "<section><p><strong>Title</strong> In a Dry Season</p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Colin the Security Robot</p>\n<p><strong>Date</strong> 1961-11-09.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td>In a Dry Season</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>According to the legends, the Magratheans lived most of their lives underground.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1961-11-09.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>Atlas Press.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://cole-connelly.com/cedrick\" target=\"_blank\" rel=\"noopener\">http://cole-connelly.com/cedrick<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Swag <i>humblebrag bitters 1 offal vinegar</i> actually.",
  "e_type": "writing",
  "legacy_pk": 37975,
  "date_str": "1961-11-09.",
  "links": [
    "http://cole-connelly.com/cedrick"
  ],
  "notes": "I think you ought to know I'm feeling very depressed.",
  "proposal": "According to the legends, the Magratheans lived most of their lives underground.",
  "publication_information": "Atlas Press.",
  "letters": {
    "mentioned_in": [
      {
        "id": "aa657684-0fc1-48c6-af14-127df8d9e4a1",
        "label": "30 September 1963 - Kohler, Aileen"
      }
    ],
    "recived": [
      {
        "id": "3918d701-1151-4e76-903a-fc0070a6a32a",
        "label": "23 January 1950 - Hoeger, Avis, In a Dry Season"
      }
    ],
    "sent": [
      {
        "id": "dff679f9-7877-4d77-8e56-244f101f56d2",
        "label": "02 November 1950 - Wuckert, Juliana"
      }
    ],
    "sent_to": [
      {
        "id": "36d44d16-9b2c-451a-857b-23e1029ca75a",
        "label": "06 August 1983 - Bechtelar, Luis"
      }
    ],
    "sent_from": [
      {
        "id": "e9aa007d-4d66-4caa-8264-b63350ffbaac",
        "label": "06 October 1982 - McLaughlin, Elois"
      }
    ]
  }
}
~~~

