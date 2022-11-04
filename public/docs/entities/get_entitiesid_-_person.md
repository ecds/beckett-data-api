# Entities API



## GET /entities/:id - Person

### GET /entities/:id
### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities/2b8569ba-7489-40d5-9908-f759c23701d2</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Content-Type: application/json; charset=utf-8
ETag: W/&quot;642eeb24e1893d41894e874461feef55&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 85e31ad5-5347-4aec-8b5d-a75a5d9440b9
X-Runtime: 1.397508
Vary: Origin
Content-Length: 3609</pre>

#### Status

<pre>200 OK</pre>

#### Body

~~~
{
  "id": "2b8569ba-7489-40d5-9908-f759c23701d2",
  "type": "person",
  "label": "Beer, Bo",
  "short_display": "<section><p><strong>Bo Beer, 1912-1988</strong></p>\n<p>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</p></section>",
  "full_display": "<table>\n<tr>\n<th scope=\"row\">Name</th>\n<td>Bo Beer</td>\n</tr>\n<tr>\n<th scope=\"row\">Alternative Name(s)</th>\n<td>Coco Montrese</td>\n</tr>\n<tr>\n<th scope=\"row\">Life Dates</th>\n<td>1912-1988</td>\n</tr>\n<tr>\n<th scope=\"row\">Description</th>\n<td>You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.</td>\n</tr>\n<tr>\n<th scope=\"row\">Profile</th>\n<td>On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</td>\n</tr>\n<tr>\n<th scope=\"row\">See Also</th>\n<td><ul><li><a href=\"http://hermann.biz/larry\" target=\"_blank\" rel=\"noopener\">http://hermann.biz/larry<span>(opens in new tab)</span></a></li></ul></td>\n</tr>\n</table>",
  "description": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
  "e_type": "person",
  "legacy_pk": 976,
  "alternate_names": [
    "Coco Montrese"
  ],
  "alternate_spellings": [
    "Chi Chi DeVayne"
  ],
  "first_name": "Bo",
  "last_name": "Beer",
  "life_dates": "1912-1988",
  "links": [
    "http://hermann.biz/larry"
  ],
  "profile": "On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.",
  "letters": {
    "mentioned_in": [
      {
        "id": "7c800afc-2fbe-434b-bed4-190943cd3202",
        "label": "20 March 1984 - Thiel, Kraig"
      }
    ],
    "recived": [
      {
        "id": "e23a1bfa-3989-4f1e-b646-60e571fdb631",
        "label": "26 January 1976 - Beer, Bo, Zemlak, Dennis"
      }
    ],
    "sent": [
      {
        "id": "ac69c570-0e33-4c95-ae9f-51f395b2a034",
        "label": "17 July 1963 - Conroy, Moises"
      }
    ],
    "sent_to": [
      {
        "id": "cc966399-1512-41ea-ba0a-8447e6dbd891",
        "label": "10 March 1952 - Fay, Joesph"
      }
    ],
    "sent_from": [
      {
        "id": "dd2eadaf-aeb2-42d3-b247-b0ab7d12e21b",
        "label": "16 January 1951 - Bednar, Jessi"
      }
    ]
  }
}
~~~

