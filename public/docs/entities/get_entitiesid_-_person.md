# Entities API



## GET /entities/:id - Person

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

<pre>GET /entities/7b43f02c-59a7-45f8-8250-307b2be2f01c</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;6c4efb5c6e1b93f11562a554a3b9866b&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ae903fe6-1eb9-4094-a323-526988030e38
X-Runtime: 0.796889
Vary: Origin
Content-Length: 1993</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/7b43f02c-59a7-45f8-8250-307b2be2f01c",
  "type": "person",
  "label": "Goyette, Waltraud",
  "short_display": "<section><p><strong>Waltraud Goyette, 1905-1979</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Waltraud Goyette</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Bob The Drag Queen</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1905-1979</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://rodriguez.io/sherwood\" target=\"_blank\" rel=\"noopener\">http://rodriguez.io/sherwood<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "I think you ought to know I'm feeling very depressed.",
  "e_type": "person",
  "legacy_pk": 51962,
  "alternate_names": [
    "Bob The Drag Queen"
  ],
  "alternate_spellings": [
    "Ariel Versace"
  ],
  "first_name": "Waltraud",
  "last_name": "Goyette",
  "life_dates": "1905-1979",
  "links": [
    "http://rodriguez.io/sherwood"
  ],
  "profile": "Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again."
}
~~~

