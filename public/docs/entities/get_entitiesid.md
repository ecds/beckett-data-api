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

<pre>GET /entities/e9e772b3-0804-481a-a8f8-43e1cd4a9ebd</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;b91869f967b1ea2590fd2c2ed1266e7d&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 58db6172-7ba4-46ab-ae99-840b6795ca50
X-Runtime: 0.816404
Vary: Origin
Content-Length: 1985</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/e9e772b3-0804-481a-a8f8-43e1cd4a9ebd",
  "type": "person",
  "label": "Durgan, Modesto",
  "short_display": "<section><p><strong>Modesto Durgan, 1918-1975</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Modesto Durgan</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Willam</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1918-1975</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I <i>think you ought to know I'm feeling very</i> depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>If they don’t keep exercising their lips, he thought, their brains start working.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://schaefer.co/dave_hudson\" target=\"_blank\" rel=\"noopener\">http://schaefer.co/dave_hudson<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I <i>think you ought to know I'm feeling very</i> depressed.",
  "e_type": "person",
  "legacy_pk": 20890,
  "alternate_names": [
    "Willam"
  ],
  "alternate_spellings": [
    "Sahara Davenport"
  ],
  "first_name": "Modesto",
  "last_name": "Durgan",
  "life_dates": "1918-1975",
  "links": [
    "http://schaefer.co/dave_hudson"
  ],
  "profile": "If they don’t keep exercising their lips, he thought, their brains start working."
}
~~~

