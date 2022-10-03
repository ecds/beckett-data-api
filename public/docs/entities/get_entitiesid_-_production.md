# Entities API



## GET /entities/:id - Production

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

<pre>GET /entities/8a7d0bc9-1ba2-4a3e-8747-e570e2524ab8</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;280fef8bd64b754e7ab41adc83a95aba&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: af57a7fc-1504-4e74-beb6-374461cc9362
X-Runtime: 1.259989
Vary: Origin
Content-Length: 3648</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/entities/8a7d0bc9-1ba2-4a3e-8747-e570e2524ab8",
  "type": "production",
  "label": "Pulp Fiction",
  "short_display": "<section><p><strong>Title</strong> Pulp Fiction</p>\n<p><strong>Proposal/Response</strong> I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> Bistromath, Lockmanshire</p>\n<p><strong>Date(s)</strong> 1969-08-13.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\">Pulp Fiction</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.</td>\n<th scope=\"row\">Response</th>\n<td>In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</td>\n<th scope=\"row\">Reason</th>\n<td>Let's go crazy, let's get nuts! Look for the purple bandana until they put us in the truck, let's go!</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1969-08-13.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">Karl Hungus</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Agda and Donny</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Ford Prefect</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Bistromath, Lockmanshire</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Keytar cardigan loko yuccie butcher mixtape ugh salvia.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://kling.net/timmy.terry\" target=\"_blank\" rel=\"noopener\">http://kling.net/timmy.terry<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Cronut goth bicycle rights diy thundercats distillery farmtotable carry celiac.",
  "e_type": "production",
  "legacy_pk": 27689,
  "alternate_names": null,
  "cast": [
    "Agda",
    "Donny"
  ],
  "city": "Lockmanshire",
  "date_str": "1969-08-13.",
  "director": "Karl Hungus",
  "links": [
    "http://kling.net/timmy.terry"
  ],
  "notes": "Keytar cardigan loko yuccie butcher mixtape ugh salvia.",
  "personnel": [
    "Ford Prefect"
  ],
  "proposal": "I wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got one.",
  "response": "In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.",
  "reason": "Let's go crazy, let's get nuts! Look for the purple bandana until they put us in the truck, let's go!",
  "theater": "Bistromath"
}
~~~

