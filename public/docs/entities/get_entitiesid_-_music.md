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

<pre>GET /entities/f43d73b0-3914-4fe2-94e3-182b7be033ff</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;805652f5348d10dd1a8d03db709fb806&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ec951eba-ee56-40eb-aa78-42cb4ec9fe36
X-Runtime: 0.795896
Vary: Origin
Content-Length: 2032</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "id": "http://example.org/entities/f43d73b0-3914-4fe2-94e3-182b7be033ff",
  "type": "music",
  "label": "Delirious",
  "short_display": "<section><p><strong>Composer</strong> Eccentrica Gallumbits</p>\n<p><strong>Title</strong> Delirious</p>\n<p><strong>Description</strong> Xoxo 90s venmo jean shorts 1 postironic.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Composer</th>\n<td>Eccentrica Gallumbits</td>\n</tr>\n<tr>\n<th scope=\"row\">Title</th>\n<td>Delirious</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Title(s)</th>\n<td>Thorgy Thor</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>Xoxo 90s venmo jean shorts 1 postironic.</td>\n</tr>\n<tr>\n<th scope=\"row\">Performed by</th>\n<td>Jackie Treehorn</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Are your smiles, are your smiles for me?</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://rutherford.info/bryce\" target=\"_blank\" rel=\"noopener\">http://rutherford.info/bryce<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Xoxo 90s venmo jean shorts 1 postironic.",
  "e_type": "music",
  "legacy_pk": 88995,
  "alternate_names": [
    "Thorgy Thor"
  ],
  "alternate_spellings": null,
  "composer": "Eccentrica Gallumbits",
  "links": [
    "http://rutherford.info/bryce"
  ],
  "notes": "Are your smiles, are your smiles for me?",
  "performed_by": [
    "Jackie Treehorn"
  ]
}</pre>
