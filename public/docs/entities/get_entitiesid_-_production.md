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

<pre>GET /entities/1d75c060-a443-42e1-a276-9c262dbd42ab</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;58bee2ed8fbfcc1e67e6049c3a105584&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 9b6406c3-5f71-4099-aa5c-fca11fcec35f
X-Runtime: 1.759005
Vary: Origin
Content-Length: 4198</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "1d75c060-a443-42e1-a276-9c262dbd42ab",
  "type": "production",
  "label": "<i>The Lives of Others</i>",
  "short_display": "<section><p><strong>Title</strong> <i>The Lives of Others</i></p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</p>\n<p><strong>Director</strong> Brandt <strong>Theatre, City</strong> Tanngrisnir, East Ashlie</p>\n<p><strong>Date(s)</strong> 1958-03-26.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\"><i>The Lives of Others</i></td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</td>\n<th scope=\"row\">Response</th>\n<td>It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.</td>\n<th scope=\"row\">Reason</th>\n<td>I'm hot and I don't care who knows it, I got a job to do.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1958-03-26.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">Brandt</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Max Quordlepleen and Bunny Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Prostetnic Vogon Jeltz</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Tanngrisnir, East Ashlie</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Cleanse tousled 90's heirloom brooklyn celiac kale chips tacos.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://howe.org/randy.dach\" target=\"_blank\" rel=\"noopener\">http://howe.org/randy.dach<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Actually locavore salvia loko ethical.",
  "e_type": "production",
  "legacy_pk": 68678,
  "alternate_names": null,
  "cast": [
    "Max Quordlepleen",
    "Bunny Lebowski"
  ],
  "city": "East Ashlie",
  "date_str": "1958-03-26.",
  "director": "Brandt",
  "links": [
    "http://howe.org/randy.dach"
  ],
  "notes": "Cleanse tousled 90's heirloom brooklyn celiac kale chips tacos.",
  "personnel": [
    "Prostetnic Vogon Jeltz"
  ],
  "proposal": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
  "response": "It’s only half completed, I’m afraid – we haven’t even finished burying the artificial dinosaur skeletons in the crust yet.",
  "reason": "I'm hot and I don't care who knows it, I got a job to do.",
  "theater": "Tanngrisnir",
  "letters": {
    "mention": "http://example.org/entities/1d75c060-a443-42e1-a276-9c262dbd42ab/letters?relation=mention",
    "received": "http://example.org/entities/1d75c060-a443-42e1-a276-9c262dbd42ab/letters?relation=received",
    "sent": "http://example.org/entities/1d75c060-a443-42e1-a276-9c262dbd42ab/letters?relation=sent",
    "destination": "http://example.org/entities/1d75c060-a443-42e1-a276-9c262dbd42ab/letters?relation=destination",
    "origin": "http://example.org/entities/1d75c060-a443-42e1-a276-9c262dbd42ab/letters?relation=origin"
  }
}
~~~

