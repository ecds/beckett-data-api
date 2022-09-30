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

<pre>GET /entities/5df91983-a69a-4ce0-9a1f-f07de3f1e627</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e31cb1f45495c7706942979090442fa3&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ee5ef37d-73bd-445e-b3e2-661306454750
X-Runtime: 0.809243
Vary: Origin
Content-Length: 2147</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/5df91983-a69a-4ce0-9a1f-f07de3f1e627",
  "type": "person",
  "label": "Waelchi, Tiesha",
  "short_display": "<section><p><strong>Tiesha Waelchi, 1909-1970</strong></p>\n<p>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Tiesha Waelchi</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Jujubee</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1909-1970</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>But Mr. Dent, the plans have been available in the local planning office for the last nine months.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://marks-kulas.biz/adam\" target=\"_blank\" rel=\"noopener\">http://marks-kulas.biz/adam<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
  "e_type": "person",
  "legacy_pk": 5741,
  "alternate_names": [
    "Jujubee"
  ],
  "alternate_spellings": [
    "Blair St. Clair"
  ],
  "first_name": "Tiesha",
  "last_name": "Waelchi",
  "life_dates": "1909-1970",
  "links": [
    "http://marks-kulas.biz/adam"
  ],
  "profile": "But Mr. Dent, the plans have been available in the local planning office for the last nine months."
}
~~~

