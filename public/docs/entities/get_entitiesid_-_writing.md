# Entities API



## GET /entities/:id - Writing

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

<pre>GET /entities/5845914d-778f-4048-b2b4-f14d03551264</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c92abf520df7277e17a201401f06d450&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 560e3da1-372a-4364-a0a1-6fc537f7ee09
X-Runtime: 1.123503
Vary: Origin
Content-Length: 2107</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/5845914d-778f-4048-b2b4-f14d03551264",
  "type": "writing",
  "label": "Stranger in a Strange Land",
  "short_display": "<section><p><strong>Title</strong> Stranger in a Strange Land</p>\n<p><strong>Proposal/Response</strong> Don’t Panic</p>\n<p><strong>Translator</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Date</strong> 1935-02-10.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Stranger in a Strange Land</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal/Response</th>\n<td>Don’t Panic</td>\n</tr>\n<tr>\n<th scope=\"row\">Date</th>\n<td>1935-02-10.</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>And then of course I've got this terrible pain in all the diodes down my left side.</td>\n</tr>\n<tr>\n<th scope=\"row\">Archival Information</th>\n<td>Hachette Book Group USA.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://terry.co/aurelio\" target=\"_blank\" rel=\"noopener\">http://terry.co/aurelio<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Cornhole <i>viral organic listicle yolo skateboard photo booth synth</i> flannel.",
  "e_type": "writing",
  "legacy_pk": 98141,
  "date_str": "1935-02-10.",
  "links": [
    "http://terry.co/aurelio"
  ],
  "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
  "proposal": "Don’t Panic",
  "publication_information": "Hachette Book Group USA."
}
~~~

