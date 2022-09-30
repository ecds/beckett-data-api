# Entities API



## GET /entities/:id - Organization

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

<pre>GET /entities/bd919b4b-990f-4530-a4e1-350e4cf537df</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;758818cc7ac49a462d06881eccbf550e&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ef0341e2-a8ee-4d9f-8fc4-16596ac8eaa2
X-Runtime: 0.703580
Vary: Origin
Content-Length: 1497</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/bd919b4b-990f-4530-a4e1-350e4cf537df",
  "type": "organization",
  "label": "<i>Viltvodle VI</i>",
  "short_display": "<section><p><strong><i>Viltvodle VI</i></strong></p>\n<p>And then of course I've got this terrible pain in all the diodes down my left side.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td><i>Viltvodle VI</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Scarlet Envy</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>Earth: Mostly Harmless</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Are your smiles, are your smiles for me?</td>\n</tr>\n</table>",
  "description": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "e_type": "organization",
  "legacy_pk": 47777,
  "alternate_names": [
    "Scarlet Envy"
  ],
  "alternate_spellings": null,
  "profile": "Earth: Mostly Harmless"
}
~~~

