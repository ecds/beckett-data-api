# Entities API



## GET /entities/:id - Music

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| short_display | HTML String |  | true |
| full_display | HTML String |  | true |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/da6aca17-ea7a-4745-aa26-52ab2d9f6e28</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;fc8971ebfeabce91bef1322998c4c851&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: eaa3a148-b56e-437a-8beb-6c543bf97bd7
X-Runtime: 1.067745
Vary: Origin
Content-Length: 2207</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/da6aca17-ea7a-4745-aa26-52ab2d9f6e28",
  "type": "music",
  "label": "Money Don't Matter 2 Night",
  "short_display": "<section><p><strong>Composer</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> Money Don't Matter 2 Night</p>\n<p><strong>Description</strong> Etsy <i>pork belly tilde</i> tryhard.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Pizpot Gargravarr</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Money Don't Matter 2 Night</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Laganja Estranja</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Etsy <i>pork belly tilde</i> tryhard.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>The Big Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>It was 7:45 and we were all line, to greet the teacher Miss Cathleen.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://kuhlman.name/albert.hickle\" target=\"_blank\" rel=\"noopener\">http://kuhlman.name/albert.hickle<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Etsy <i>pork belly tilde</i> tryhard.",
  "e_type": "music",
  "legacy_pk": 90111,
  "alternate_names": [
    "Laganja Estranja"
  ],
  "alternate_spellings": null,
  "composer": "Pizpot Gargravarr",
  "links": [
    "http://kuhlman.name/albert.hickle"
  ],
  "notes": "It was 7:45 and we were all line, to greet the teacher Miss Cathleen.",
  "performed_by": [
    "The Big Lebowski"
  ]
}
~~~

