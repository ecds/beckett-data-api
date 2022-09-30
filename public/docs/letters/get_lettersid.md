# Letters API

## GET /letters/:id

### GET /letters/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters/2af7e47b-1743-48f9-94e5-152d1547df6f</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;1769f81d6ba8a06b5ef04d8cce9c1778&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: be3d8790-eab6-4d22-b5b6-4a4b5a24824b
X-Runtime: 0.742180
Vary: Origin
Content-Length: 6692</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "http://example.org/letters/2af7e47b-1743-48f9-94e5-152d1547df6f",
  "date": "1977-10-24T00:00:00.000-04:00",
  "recipients": [
    {
      "id": "http://example.org/entities/68e723cf-b62e-4cf9-998d-e78d442f9d72.json",
      "type": "person",
      "label": "Reilly, Suzanne",
      "short_display": "<section><p><strong>Suzanne Reilly, 1924-1974</strong></p>\n<p>There's <i>only one life-form as intelligent as me within thirty parsecs of here and that's</i> me.</p></section>"
    }
  ],
  "destinations": [
    {
      "id": "http://example.org/entities/7e8a8b62-d8f7-4bf9-b574-885347eddaed.json",
      "type": "place",
      "label": "Highgate Cemetery",
      "short_display": "<section><p><strong>Highgate Cemetery</strong></p>\n<p>Pourover <i>ethical locavore deep v muggle magic food</i> truck.</p></section>"
    }
  ],
  "mentions": {
    "people": [
      {
        "id": "http://example.org/entities/581bcda2-d9ff-4646-811b-cc29cf613187.json",
        "type": "person",
        "label": "Feil, Delsie",
        "short_display": "<section><p><strong>Delsie Feil, 1907-1997</strong></p>\n<p>Life? Don't talk to me about life.</p></section>",
        "tags": [

        ]
      }
    ],
    "publications": [
      {
        "id": "http://example.org/entities/bf2bdb7c-fb93-450f-8a88-a8cc94b00207.json",
        "type": "publication",
        "label": "Blackstaff Press",
        "short_display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> Blackstaff Press</p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Publication</strong> Cold-pressed migas sriracha carry mumblecore cleanse portland truffaut.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/6080e64e-5cec-4ebd-a7c1-6f8183fb02db.json",
        "type": "publication",
        "label": "<i>J. M. Dent</i>",
        "short_display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>J. M. Dent</i></p>\n<p><strong>Translator</strong> JinJenz</p>\n<p><strong>Publication</strong> Kombucha single-origin coffee try-hard mixtape keffiyeh meditation wes anderson banjo.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/ec35c1c4-38eb-4f89-bc7c-66108a181dcd.json",
        "type": "publication",
        "label": "Chatto and Windus",
        "short_display": "<section><p><strong>Author</strong> Walter Sobchak</p>\n<p><strong>Title</strong> Chatto and Windus</p>\n<p><strong>Translator</strong> Slartibartfast</p>\n<p><strong>Publication</strong> Readymade craft beer yr raw denim.</p></section>",
        "tags": [

        ]
      }
    ],
    "readings": [
      {
        "id": "http://example.org/entities/168bb256-6191-4b6d-aa80-b4617136e98c.json",
        "type": "reading",
        "label": "Great Work of Time",
        "short_display": "<section><p><strong>Author</strong> Enrique Auer</p>\n<p><strong>Title</strong> Great Work of Time</p>\n<p><strong>Publication</strong> Leafwood Publishers.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/000d15a3-fdbe-49a5-8e71-700abebe5e29.json",
        "type": "reading",
        "label": "<i>Fame Is the Spur</i>",
        "short_display": "<section><p><strong>Author</strong> Daniella Reynolds</p>\n<p><strong>Title</strong> <i>Fame Is the Spur</i></p>\n<p><strong>Publication</strong> Manchester University Press.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/dad2a0d8-7f80-4c54-9e6c-7da7d2890017.json",
        "type": "reading",
        "label": "The Moving Toyshop",
        "short_display": "<section><p><strong>Author</strong> Jacki Murphy</p>\n<p><strong>Title</strong> The Moving Toyshop</p>\n<p><strong>Publication</strong> Horizon Scientific Press.</p></section>",
        "tags": [

        ]
      }
    ],
    "writings": [
      {
        "id": "http://example.org/entities/8200a7ff-6431-4a9b-a131-90d5db457b8b.json",
        "type": "writing",
        "label": "The Green Bay Tree",
        "short_display": "<section><p><strong>Title</strong> The Green Bay Tree</p>\n<p><strong>Proposal/Response</strong> If they don’t keep exercising their lips, he thought, their brains start working.</p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Date</strong> 1924-04-05.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/88602b7b-c6cf-4b85-8ba1-b60e4587faf7.json",
        "type": "writing",
        "label": "<i>A Many-Splendoured Thing</i>",
        "short_display": "<section><p><strong>Title</strong> <i>A Many-Splendoured Thing</i></p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Rob McKenna</p>\n<p><strong>Date</strong> 1923-03-12.</p></section>",
        "tags": [

        ]
      },
      {
        "id": "http://example.org/entities/e6b1e11e-163b-475f-8197-44e620212795.json",
        "type": "writing",
        "label": "<i>The Cricket on the Hearth</i>",
        "short_display": "<section><p><strong>Title</strong> <i>The Cricket on the Hearth</i></p>\n<p><strong>Proposal/Response</strong> if you’ve never been through a matter transference beam before you’ve probably lost some salt and protein. The beer you had should have cushioned your system a bit.</p>\n<p><strong>Translator</strong> Zaphod Beeblebrox</p>\n<p><strong>Date</strong> 1944-12-02.</p></section>",
        "tags": [

        ]
      }
    ]
  }
}
~~~

