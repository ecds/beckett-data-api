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

<pre>GET /entities/83c80759-2f73-4885-ae60-98180e964cce</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;249a83d66fa85bc5410655cc5a64cf32&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d56e32b4-b868-434f-bba0-72486398aac8
X-Runtime: 1.564266
Vary: Origin
Content-Length: 2236</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "83c80759-2f73-4885-ae60-98180e964cce",
  "type": "organization",
  "label": "<i>Broop Kidron 13</i>",
  "short_display": "<section><p><strong><i>Broop Kidron 13</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Broop Kidron 13</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Aja</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>If there's anything more important than my ego around, I want it caught and shot now.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>We've been together for quite some time, I'd think by now you'd know, it would take forever to get you off my mind if ever you decide to go.</td>\n</tr>\n</table>",
  "description": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "e_type": "organization",
  "legacy_pk": 2475,
  "alternate_names": [
    "Aja"
  ],
  "alternate_spellings": null,
  "profile": "If there's anything more important than my ego around, I want it caught and shot now.",
  "letters": {
    "mention": "http://example.org/entities/83c80759-2f73-4885-ae60-98180e964cce/letters?relation=mention",
    "received": "http://example.org/entities/83c80759-2f73-4885-ae60-98180e964cce/letters?relation=received",
    "sent": "http://example.org/entities/83c80759-2f73-4885-ae60-98180e964cce/letters?relation=sent",
    "destination": "http://example.org/entities/83c80759-2f73-4885-ae60-98180e964cce/letters?relation=destination",
    "origin": "http://example.org/entities/83c80759-2f73-4885-ae60-98180e964cce/letters?relation=origin"
  }
}
~~~

