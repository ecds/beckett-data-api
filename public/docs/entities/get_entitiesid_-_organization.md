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

<pre>GET /entities/7c9f9aa5-2152-4d7c-b17f-e108a0fc2ccf</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;06b6c9384abcf19aae47cdbf28cf1b3a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: d5bde5f8-0022-4bc6-85f8-04b9d59549e9
X-Runtime: 0.695357
Vary: Origin
Content-Length: 1967</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/7c9f9aa5-2152-4d7c-b17f-e108a0fc2ccf",
  "type": "organization",
  "label": "Xaxis",
  "short_display": "<section><p><strong>Xaxis</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Xaxis</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternate Name(s)</th>\n<td>Aja</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>Don’t Panic</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td>Don't worry, I won't hurt you... I only want you to have some fun.</td>\n</tr>\n</table>",
  "description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "e_type": "organization",
  "legacy_pk": 36722,
  "alternate_names": [
    "Aja"
  ],
  "alternate_spellings": null,
  "profile": "Don’t Panic"
}
~~~

