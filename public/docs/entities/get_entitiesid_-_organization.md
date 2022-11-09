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

<pre>GET /entities/f7dc2815-f02b-4916-a254-2c357c9db4e8</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;d2a3ab7cf668ce190cd933c2263cad6f&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 4f50500a-53e3-4b78-a391-71a0e62ff3db
X-Runtime: 1.484181
Vary: Origin
Content-Length: 1943</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "f7dc2815-f02b-4916-a254-2c357c9db4e8",
  "type": "organization",
  "label": "Broop Kidron 13",
  "short_display": "<section><p><strong>Broop Kidron 13</strong></p>\n<p>Life? Don't talk to me about life.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Broop Kidron 13</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Life? Don't talk to me about life.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Shangela Wadley</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>Whatever your tastes, Magrathea can cater for you. We are not proud.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Everybody wants to find Graffiti Bridge, something to believe in, a reason to believe that there's a heaven above.</td>\n</tr>\n</table>",
  "description": "Life? Don't talk to me about life.",
  "e_type": "organization",
  "legacy_pk": 62444,
  "alternate_names": [
    "Shangela Wadley"
  ],
  "alternate_spellings": null,
  "profile": "Whatever your tastes, Magrathea can cater for you. We are not proud.",
  "letters": {
    "mention": "http://example.org/entities/f7dc2815-f02b-4916-a254-2c357c9db4e8/letters?relation=mention",
    "recived": "http://example.org/entities/f7dc2815-f02b-4916-a254-2c357c9db4e8/letters?relation=recived",
    "sent": "http://example.org/entities/f7dc2815-f02b-4916-a254-2c357c9db4e8/letters?relation=sent",
    "desination": "http://example.org/entities/f7dc2815-f02b-4916-a254-2c357c9db4e8/letters?relation=destination",
    "origin": "http://example.org/entities/f7dc2815-f02b-4916-a254-2c357c9db4e8/letters?relation=origin"
  }
}
~~~

