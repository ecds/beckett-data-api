# Entities API



## GET /entities/:id - Music

### GET /entities/:id

### Response Fields

| Name | Default | Description | Not Null |
|------|---------|-------------|----------|
| label | HTML String |  | true |
| clean_label | String |  | true |
| description | HTML String |  | true |
| clean_description | String |  | true |
| display_header | HTML String |  | true |
| label | HTML String |  | false |
| description | HTML String |  | false |
| e_type | HTML String |  | false |
| legacy_pk | HTML String |  | false |
| alternate_names | Array |  | false |
| alternate_spellings | Array |  | false |
| composer | HTML String |  | false |
| links | Array |  | false |
| notes | HTML String |  | false |
| performed_by | Array |  | false |

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/abdc72ba-e677-4399-bfbe-b70423711ff3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;242b5e33f31f02ec8c5ef2e364ee42f0&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 8568ac00-0639-4073-bb87-64d79d9aa122
X-Runtime: 1.089073
Vary: Origin
Content-Length: 2416</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/abdc72ba-e677-4399-bfbe-b70423711ff3",
  "type": "music",
  "label": "Sometimes It Snows In April",
  "clean_label": "Sometimes It Snows In April",
  "description": "Cronut <i>chicharrones authentic tacos</i> sriracha.",
  "clean_description": "Cronut chicharrones authentic tacos sriracha.",
  "short_display": "<section><p><strong>Composer</strong> Pizpot Gargravarr</p>\n<p><strong>Title</strong> Sometimes It Snows In April</p>\n<p><strong>Description</strong> Cronut <i>chicharrones authentic tacos</i> sriracha.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Pizpot Gargravarr</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Sometimes It Snows In April</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Sharon Needles</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Cronut <i>chicharrones authentic tacos</i> sriracha.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Jackie Treehorn</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>There's a brand new groove going 'round, in your funky town, and the kick drum is the fault.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://kerluke-bode.net/emilee.mills\" target=\"_blank\" rel=\"noopener\">http://kerluke-bode.net/emilee.mills<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "e_type": "music",
  "legacy_pk": 97510,
  "alternate_names": [
    "Sharon Needles"
  ],
  "alternate_spellings": null,
  "composer": "Pizpot Gargravarr",
  "links": [
    "http://kerluke-bode.net/emilee.mills"
  ],
  "notes": "There's a brand new groove going 'round, in your funky town, and the kick drum is the fault.",
  "performed_by": [
    "Jackie Treehorn"
  ]
}</pre>
