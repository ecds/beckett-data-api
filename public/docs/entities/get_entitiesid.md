# Entities API



## GET /entities/:id

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/67d7ac28-e40d-41e7-b02f-57e03d6d283a</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;427dd5fad62a303f6ada751a3b046663&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: b4771d68-0674-41ec-8ff8-f66f4a1461f5
X-Runtime: 0.870103
Vary: Origin
Content-Length: 2046</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/67d7ac28-e40d-41e7-b02f-57e03d6d283a",
  "type": "person",
  "label": "Schowalter, Joshua",
  "short_display": "<section><p><strong>Joshua Schowalter, 1921-1980</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Joshua Schowalter</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Farrah Moan</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1921-1980</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I <i>think you ought to know I'm feeling very</i> depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>But Mr. Dent, the plans have been available in the local planning office for the last nine months.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://ryan.org/patricia_breitenberg\" target=\"_blank\" rel=\"noopener\">http://ryan.org/patricia_breitenberg<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I <i>think you ought to know I'm feeling very</i> depressed.",
  "e_type": "person",
  "legacy_pk": 61784,
  "alternate_names": [
    "Farrah Moan"
  ],
  "alternate_spellings": [
    "Jujubee"
  ],
  "first_name": "Joshua",
  "last_name": "Schowalter",
  "life_dates": "1921-1980",
  "links": [
    "http://ryan.org/patricia_breitenberg"
  ],
  "profile": "But Mr. Dent, the plans have been available in the local planning office for the last nine months."
}</pre>
