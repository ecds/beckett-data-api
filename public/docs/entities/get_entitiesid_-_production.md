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

<pre>GET /entities/0c62e0d9-b608-46b3-b8b0-e9f33ab740c8</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e65f616199cff1afb700815757ef7cbe&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: fa2bdd6f-2a13-407c-adde-7d3a5a641992
X-Runtime: 1.535897
Vary: Origin
Content-Length: 4030</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "0c62e0d9-b608-46b3-b8b0-e9f33ab740c8",
  "type": "production",
  "label": "Intouchables",
  "short_display": "<section><p><strong>Title</strong> Intouchables</p>\n<p><strong>Proposal/Response</strong> I think you ought to know I'm feeling very depressed. / there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Billion Year Bunker, Gloverville</p>\n<p><strong>Date(s)</strong> 1970-09-09.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Title</th>\n<td colspan=\"5\">Intouchables</td>\n</tr>\n<tr>\n<th scope=\"row\">Proposal</th>\n<td>I think you ought to know I'm feeling very depressed.</td>\n<th scope=\"row\">Response</th>\n<td>there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</td>\n<th scope=\"row\">Reason</th>\n<td>Is that your boyfriend? Ha, I don't care.</td>\n</tr>\n<tr>\n<th scope=\"row\">Date(s)</th>\n<td colspan=\"5\">1970-09-09.</td>\n</tr>\n<tr>\n<th scope=\"row\">Director</th>\n<td colspan=\"5\">Bunny Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Cast</th>\n<td colspan=\"5\">Bowerick Wowbagger and The Big Lebowski</td>\n</tr>\n<tr>\n<th scope=\"row\">Personnel</th>\n<td colspan=\"5\">Charles Darwin</td>\n</tr>\n<tr>\n<th scope=\"row\">Theatre, City</th>\n<td colspan=\"5\">Billion Year Bunker, Gloverville</td>\n</tr>\n<tr>\n<th scope=\"row\">Notes</th>\n<td colspan=\"5\">Portland pinterest sriracha schlitz ugh ennui jean shorts.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td colspan=\"5\"><ul><li><a href=\"http://botsford-hermann.name/wes_dicki\" target=\"_blank\" rel=\"noopener\">http://botsford-hermann.name/wes_dicki<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "Brunch <i>90s narwhal fashion axe vice</i> keffiyeh.",
  "e_type": "production",
  "legacy_pk": 42364,
  "alternate_names": null,
  "cast": [
    "Bowerick Wowbagger",
    "The Big Lebowski"
  ],
  "city": "Gloverville",
  "date_str": "1970-09-09.",
  "director": "Bunny Lebowski",
  "links": [
    "http://botsford-hermann.name/wes_dicki"
  ],
  "notes": "Portland pinterest sriracha schlitz ugh ennui jean shorts.",
  "personnel": [
    "Charles Darwin"
  ],
  "proposal": "I think you ought to know I'm feeling very depressed.",
  "response": "there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.",
  "reason": "Is that your boyfriend? Ha, I don't care.",
  "theater": "Billion Year Bunker",
  "letters": {
    "mentioned_in": [
      {
        "id": "0a325f95-6a27-4c11-9e59-6cb6bb0b89f2",
        "label": "27 March 1978 - Wuckert, Emmitt"
      }
    ],
    "recived": [
      {
        "id": "6575e360-7c3e-4c68-bdb8-d327fea22d40",
        "label": "30 June 1954 - Intouchables, Bechtelar, Molly"
      }
    ],
    "sent": [
      {
        "id": "1a1a3cf1-fdec-41dc-852b-a71daad0bb79",
        "label": "23 September 1953 - Pagac, Francina"
      }
    ],
    "sent_to": [
      {
        "id": "bceb5460-1bd6-4d6c-a6c0-17bc9cd113f0",
        "label": "20 January 1977 - Huel, Terrence"
      }
    ],
    "sent_from": [
      {
        "id": "55fac12f-d48e-47c7-924a-688ae1961f03",
        "label": "01 August 1982 - Windler, Maynard"
      }
    ]
  }
}
~~~

