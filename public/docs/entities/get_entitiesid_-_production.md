# Entities API



## GET /entities/:id - Production

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/d6e66b42-1ba6-488a-9ceb-5afd85763cd3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;a746a7b5ffbc015dc7c961e103d52e6a&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: e814bbdf-5f27-401c-9387-0f140322c113
X-Runtime: 1.641579
Vary: Origin
Content-Length: 4238</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "d6e66b42-1ba6-488a-9ceb-5afd85763cd3",
  "type": "production",
  "label": "<i>Dog Day Afternoon</i>",
  "short_display": "<section><p><strong>Title</strong> <i>Dog Day Afternoon</i></p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Director</strong> The Big Lebowski <strong>Theatre, City</strong> Krikkit One, Durganland</p>\n<p><strong>Date(s)</strong> 1931-06-02.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\"><i>Dog Day Afternoon</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n<th scope=\"row\">Response</th>\n<td>if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</td>\n<th scope=\"row\">Reason</th>\n<td>I'm hot and I don't care who knows it, I got a job to do.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1931-06-02.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">The Big Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Trillian and Bunny Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Hotblack Desiato's bodyguard</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Krikkit One, Durganland</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Seitan goth iphone quinoa readymade pork belly.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://conroy.biz/clarence.runolfsson\" target=\"_blank\" rel=\"noopener\">http://conroy.biz/clarence.runolfsson<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Yolo <i>tryhard biodiesel synth muggle</i> magic.",
  "e_type": "production",
  "legacy_pk": 35282,
  "alternate_names": null,
  "cast": [
    "Trillian",
    "Bunny Lebowski"
  ],
  "city": "Durganland",
  "date_str": "1931-06-02.",
  "director": "The Big Lebowski",
  "links": [
    "http://conroy.biz/clarence.runolfsson"
  ],
  "notes": "Seitan goth iphone quinoa readymade pork belly.",
  "personnel": [
    "Hotblack Desiato's bodyguard"
  ],
  "proposal": "I think you ought to know I'm feeling very depressed.",
  "response": "if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.",
  "reason": "I'm hot and I don't care who knows it, I got a job to do.",
  "theater": "Krikkit One",
  "letters": {
    "mention": "http://example.org/entities/d6e66b42-1ba6-488a-9ceb-5afd85763cd3/letters?relation=mention",
    "recived": "http://example.org/entities/d6e66b42-1ba6-488a-9ceb-5afd85763cd3/letters?relation=recived",
    "sent": "http://example.org/entities/d6e66b42-1ba6-488a-9ceb-5afd85763cd3/letters?relation=sent",
    "desination": "http://example.org/entities/d6e66b42-1ba6-488a-9ceb-5afd85763cd3/letters?relation=destination",
    "origin": "http://example.org/entities/d6e66b42-1ba6-488a-9ceb-5afd85763cd3/letters?relation=origin"
  }
}
~~~

