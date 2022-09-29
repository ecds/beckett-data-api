# Letters API

## GET /letters?volumes=:list_of_volumes

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of paginated letters response. | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels. | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels. | false | null
| senders | Comma seperated list of sender labels. | false | null
| repositories | Comma seperated list of repository labels. | false | null
| languages | Case insensitive comma seperated list of languages. Options are English, French, German, and Italian. | false | null
| volumes | Comma sperated list of volumes. Options are 0, 1, 2, 3, and 4. Zero means no volume. | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters?volumes=1%2C+3</pre>

#### Query Parameters

<pre>volumes: 1, 3</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&amp;volumes=1%2C+3&gt;; rel=&#39;self&#39;
X-Total-Count: 15
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8912056718d93d851f9ff9cc5252a153&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: 0788079a-2bbc-4f15-841d-956897fb4f64
X-Runtime: 3.109398
Vary: Origin
Content-Length: 71750</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/72e57796-7a73-484f-8830-8e8d1089b5e9",
      "date": "1954-01-23T00:00:00.000-05:00",
      "label": "23 January 1954 - Champlin, Lyle",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Champlin, Lyle"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ab04bdd2-be20-4898-931f-85524964fa17",
            "display": "<section><p><strong>Rehearsal</strong>, Mixtape <i>paleo tryhard williamsburg ennui churchkey twee</i> viral.</p>\n<p><strong>Attended with</strong> Karl Hungus and Tricia McMillan</p>\n<p><strong>Place, Date</strong> South Rosaurachester, 07 July 1967</p>\n<p><strong>Director</strong> Paula Nancy Millstone Jennings</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/89a9f07c-4d3c-41f9-91da-2d4e0d186938",
            "display": "<section><p><strong>Reading</strong>, Gentrify freegan distillery crucifix fashion axe.</p>\n<p><strong>Attended with</strong> Donny and Wonko the Sane</p>\n<p><strong>Place, Date</strong> Kurtfort, 03 December 1936</p>\n<p><strong>Director</strong> Mella</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/0c7e046d-73a2-4613-8a20-f62615ef71c1",
            "display": "<section><p><strong>Composer</strong> Paula Nancy Millstone Jennings</p>\n<p><strong>Title</strong> <i>Dead On It</i></p>\n<p><strong>Description</strong> Kogi <i>xoxo singleorigin coffee shabby</i> chic.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d35890da-1141-436f-bfce-08d28741275d",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> <i>I Love U, but I Don't Trust U Anymore</i></p>\n<p><strong>Description</strong> Bespoke locavore green juice wayfarers fixie poutine kickstarter.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9db3e8fa-33d1-400d-9dd5-ccf08e554f1c",
            "display": "<section><p><strong>Composer</strong> Barry Manilow</p>\n<p><strong>Title</strong> <i>Play In The Sunshine</i></p>\n<p><strong>Description</strong> Blue <i>bottle street keffiyeh mumblecore plaid banjo goth</i> marfa.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/e0081591-6a2d-4b3c-9ffe-a545676837a7",
            "display": "<section><p><strong>Title</strong> V for Vendetta</p>\n<p><strong>Proposal/Response</strong> Life? Don't talk to me about life. / ...they discovered only a small asteroid inhabited by a solitary old man who claimed repeatedly that nothing was true, though he was later discovered to be lying.</p>\n<p><strong>Director</strong> Maude Lebowski <strong>Theatre, City</strong> Bistromath, Wuckertmouth</p>\n<p><strong>Date(s)</strong> 1923-04-26.</p></section>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/7231d4ff-cb09-4f47-81b4-4b6bb2b0963a",
            "display": "<section><p><strong>Title</strong> Casino</p>\n<p><strong>Proposal/Response</strong> There's only one life-form as intelligent as me within thirty parsecs of here and that's me. / In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Director</strong> Bunny Lebowski <strong>Theatre, City</strong> Starship Titanic, South Feltonchester</p>\n<p><strong>Date(s)</strong> 1924-09-20.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3536779f-0c45-41f3-a768-61be3b76b34a",
            "display": "<section><p><strong>Artist</strong> Garkbit</p>\n<p><strong>Title</strong> <i>Pretzel Body Logic</i></p>\n<p><strong>Description</strong> Ramps roof distillery gentrify mixtape helvetica master butcher deep v.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f8029695-ca9e-4902-8581-e8f4c6612b4d",
            "display": "<section><p><strong>Artist</strong> Prak</p>\n<p><strong>Title</strong> <i>And God Created Woman</i></p>\n<p><strong>Description</strong> Typewriter leggings art party forage.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/84801eff-e82a-4acf-a0a0-8df078ceba59",
      "date": "1955-08-22T00:00:00.000-04:00",
      "label": "22 August 1955 - Runolfsson, Dolores",
      "language": "italian",
      "volume": 1,
      "recipients": [
        "Runolfsson, Dolores"
      ],
      "destinations": [
        "Xaxis"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/1f32526b-511c-4955-b2ec-b0b31c2393f3",
            "display": "<section><p><strong>Composer</strong> Rob McKenna</p>\n<p><strong>Title</strong> <i>Money Don't Matter 2 Night</i></p>\n<p><strong>Description</strong> Organic <i>bicycle rights dreamcatcher freegan neutra</i> meditation.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/fa49faf2-1e39-4223-89ed-06d45a3cc43e",
            "display": "<section><p><strong>Composer</strong> Tricia McMillan</p>\n<p><strong>Title</strong> I Would Die 4 U</p>\n<p><strong>Description</strong> Tote bag retro chia postironic ennui goth.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1059d908-f56e-4645-8c4b-2815af4858da",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/3835a239-78c0-46a2-9935-089c085a135a",
            "display": "<section><p><strong>Jajazikstak</strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ec1aa967-2622-48d3-a622-7459d2824ad4",
            "display": "<section><p><strong>Happi-Werld III</strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/4cf66ae8-4c45-4c90-8049-49a5fe206259",
            "display": "<section><p><strong>Author</strong> Lanita Klein CPA</p>\n<p><strong>Title</strong> <i>To a God Unknown</i></p>\n<p><strong>Publication</strong> Virgin Publishing.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/548528a9-c62e-4b43-8796-0e3f6599e9a0",
            "display": "<section><p><strong>Author</strong> Carmine Connelly</p>\n<p><strong>Title</strong> <i>Sleep the Brave</i></p>\n<p><strong>Publication</strong> Bantam Books.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6d52a7db-cba5-4c37-bee5-17068202413d",
            "display": "<section><p><strong>Artist</strong> Zarquon</p>\n<p><strong>Title</strong> Screwdriver</p>\n<p><strong>Description</strong> Paleo etsy skateboard carry mixtape chillwave actually.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/19d0d8ea-95b1-4021-93fb-8adc9b871c4d",
            "display": "<section><p><strong>Artist</strong> Deep Thought</p>\n<p><strong>Title</strong> Bambi</p>\n<p><strong>Description</strong> Cray <i>authentic tousled intelligentsia normcore flexitarian popup</i> hammock.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/fe0196da-5ab2-464e-a348-2e7740a686b6",
      "date": "1960-06-23T00:00:00.000-04:00",
      "label": "23 June 1960 - Huels, Rochel",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Huels, Rochel"
      ],
      "destinations": [
        "Islington"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/27d41f5a-deae-4c1c-a55c-3a2d8de2aa7c",
            "display": "<section><p><strong><i>Milliways</i></strong></p>\n<p>Swag occupy cleanse tofu umami wolf bicycle rights.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/27207990-44a9-4d5d-af6f-bdef1c802f8d",
            "display": "<section><p><strong>Kakrafoon Kappa</strong></p>\n<p>Humblebrag <i>meditation everyday bicycle rights coldpressed fashion axe</i> freegan.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/bee0c678-6336-4fa7-a015-0f72cfb8ab99",
            "display": "<section><p><strong>Frogstar system</strong></p>\n<p>Loko street kitsch leggings.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/24ce9d87-152b-41ac-90f9-a376e8df1ecc",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1941-05-01.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cc9bbc19-0980-49d0-a57d-b823dabbd64f",
            "display": "<section><p><strong><i>Mercury</i></strong></p>\n<p><strong>1954-06-04.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/644e1345-bc1a-4fb3-be32-0f30977070c2",
            "display": "<section><p><strong>Discovery</strong></p>\n<p><strong>1963-01-10.</strong></p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/c0071521-3040-4f1a-9b6c-3e395e0337c2",
            "display": "<section><p><strong>Author</strong> Rogelio Champlin I</p>\n<p><strong>Title</strong> Lilies of the Field</p>\n<p><strong>Publication</strong> Karadi Tales.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4b85311e-2c5e-4a92-87bf-25269ce37031",
            "display": "<section><p><strong>Author</strong> Mrs. Carol Mayert</p>\n<p><strong>Title</strong> <i>The Violent Bear It Away</i></p>\n<p><strong>Publication</strong> Butterworth-Heinemann.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/4b2abbe2-7b03-461f-ba3f-7bf6819d0f4f",
            "display": "<section><p><strong>Author</strong> Van Effertz</p>\n<p><strong>Title</strong> <i>Beyond the Mexique Bay</i></p>\n<p><strong>Publication</strong> Broadview Press.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/6ad74f61-33be-4246-b432-e990443480bf",
            "display": "<section><p><strong>Author</strong> Zarniwoop, <strong>Original Title</strong> Ego Dominus Tuus</p>\n<p><strong>Translated into</strong> Swedish by Loonquawl</p>\n<p><strong>Translated title</strong> Golgafrinchan Ark Fleet Ship B.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/167641dd-6724-4994-a9dc-0ceff9708c2e",
      "date": "1961-10-02T00:00:00.000-04:00",
      "label": "02 October 1961 - Stracke, Hortense",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Stracke, Hortense"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/fba2d277-f297-4042-a5b6-80882505843f",
            "display": "<section><p><strong>Composer</strong> Ford Prefect</p>\n<p><strong>Title</strong> <i>Peach</i></p>\n<p><strong>Description</strong> Asymmetrical green juice churchkey street bespoke small batch phlogiston tilde.</p></section>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c16145d7-68e6-4086-9707-44952adc99dc",
            "display": "<section><p><strong>Cedrick Denesik, 1911-1995</strong></p>\n<p>Life? <i>Don't talk to me about</i> life.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9e81480c-9446-4eb7-b5f9-4aa68138ea51",
            "display": "<section><p><strong>Myrtle Gerhold, 1910-1991</strong></p>\n<p>Life? Don't talk to me about life.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c83c8860-b8f3-49bc-9ccb-050ece1dcacc",
            "display": "<section><p><strong><i>Bistro Illegal</i></strong></p>\n<p>Retro <i>bitters bicycle rights deep</i> v.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/e65972a0-d4a3-4ac8-94fa-e7541cf3ce6b",
            "display": "<section><p><strong><i>Guildford</i></strong></p>\n<p>Farmtotable <i>loko williamsburg banh mi pabst cleanse actually cray</i> polaroid.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0655f606-c5a3-4933-a8e1-f8dfee5418a4",
            "display": "<section><p><strong>Artist</strong> Lunkwill and Fook</p>\n<p><strong>Title</strong> Do It All Night</p>\n<p><strong>Description</strong> Quinoa austin godard seitan bespoke lofi chillwave.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/3671b66a-7450-467e-97f7-43b2631871c2",
            "display": "<section><p><strong>Artist</strong> Random Dent</p>\n<p><strong>Title</strong> Joy In Repetition</p>\n<p><strong>Description</strong> Five dollar toast gentrify skateboard chicharrones listicle chia.</p>\n<p><strong>Owner/location</strong> Tanngrisnir</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/612dda71-4d80-4668-9988-127d29d0b0de",
            "display": "<section><p><strong>Artist</strong> Questular Rontok</p>\n<p><strong>Title</strong> She's Always In My Hair</p>\n<p><strong>Description</strong> Synth <i>tote bag ugh sriracha vice waistcoat next</i> level.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/dc61e1e7-64ee-44f0-b463-8217bea08535",
      "date": "1965-02-25T00:00:00.000-05:00",
      "label": "25 February 1965 - Abernathy, Bernardo",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Abernathy, Bernardo"
      ],
      "destinations": [
        "Easter Island"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/b57fa45d-c3cc-4221-b4eb-88dfd28b1307",
            "display": "<section><p><strong>Reading</strong>, Tattooed <i>bicycle rights normcore fixie</i> kogi.</p>\n<p><strong>Attended with</strong> Brandt and The Allitnils</p>\n<p><strong>Place, Date</strong> West Rodrick, 14 September 1939</p>\n<p><strong>Director</strong> Prostetnic Vogon Kwaltz</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/7a8a54ae-01f4-4d6d-91f4-355a3b35f72f",
            "display": "<section><p><strong>Composer</strong> Hactar</p>\n<p><strong>Title</strong> <i>Pink Cashmere</i></p>\n<p><strong>Description</strong> Glutenfree brunch wayfarers quinoa drinking.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/40499e8e-0205-4b9c-a113-e74f0fa6afb6",
            "display": "<section><p><strong><i>Sector ZZ9 Plural Z Alpha</i></strong></p>\n<p>Plaid paleo artisan venmo vhs singleorigin coffee park.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/9c0cf759-31ce-4985-a196-a82fa8053c8f",
            "display": "<section><p><strong>Artist</strong> Agrajag</p>\n<p><strong>Title</strong> <i>3 Chains o' Gold</i></p>\n<p><strong>Description</strong> 3 wolf moon five dollar toast franzen glutenfree tousled ethical fixie.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/5dabc8c4-b0b7-4e10-b6ae-86a4c64bd17e",
            "display": "<section><p><strong>Artist</strong> Deep Thought</p>\n<p><strong>Title</strong> <i>I Love U, but I Don't Trust U Anymore</i></p>\n<p><strong>Description</strong> Direct trade beard tacos irony crucifix.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/a2bce3be-8c38-457b-ad39-060abf7d0eea",
      "date": "1965-06-01T00:00:00.000-04:00",
      "label": "01 June 1965 - Wiegand, Pasquale",
      "language": "french",
      "volume": 3,
      "recipients": [
        "Wiegand, Pasquale"
      ],
      "destinations": [
        "Evildrome Boozarama"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/dc10812b-8cd0-4a92-a988-1774497378f0",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> I Wish U Heaven</p>\n<p><strong>Description</strong> Wolf <i>pbrb roof keffiyeh</i> squid.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/85a53b1f-55b6-4ad1-a334-ad18001ede04",
            "display": "<section><p><strong>Composer</strong> Questular Rontok</p>\n<p><strong>Title</strong> Cindy C.</p>\n<p><strong>Description</strong> Meggings <i>shabby chic churchkey asymmetrical jean shorts loko pork belly</i> yr.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7abb547e-dbec-4f8d-9e0e-f478bc1184d1",
            "display": "<section><p><strong>Composer</strong> Hillman Hunter</p>\n<p><strong>Title</strong> (There'll Never B) Another Like Me</p>\n<p><strong>Description</strong> Neutra beard cornhole fixie ennui.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/a7c63615-c5ff-4681-98ae-6fa184c6fac7",
            "display": "<section><p><strong><i>Blagulon Kappa</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/5a55d1e3-1ef2-40c0-94e2-4412c51e3eb2",
            "display": "<section><p><strong><i>Oglaroon</i></strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d104a62b-1abf-461b-bedf-b9f3b1c56d5f",
            "display": "<section><p><strong>Frogstar World B</strong></p>\n<p>I <i>think you ought to know I'm feeling very</i> depressed.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/de90d1b7-a874-4447-b72f-07322515b579",
            "display": "<section><p><strong>Author</strong> Mr. Tim Stark</p>\n<p><strong>Title</strong> Surprised by Joy</p>\n<p><strong>Publication</strong> McGraw-Hill Education.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/68a58c98-e47b-4c69-b825-b24726f1f495",
            "display": "<section><p><strong>Author</strong> Jutta Monahan</p>\n<p><strong>Title</strong> A Glass of Blessings</p>\n<p><strong>Publication</strong> Tachyon Publications.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d683ff50-404c-414f-9f1d-dca208dd75e5",
            "display": "<section><p><strong>Author</strong> Pasta Fasta, <strong>Original Title</strong> <i>The Waste Land</i></p>\n<p><strong>Translated into</strong> Greek by Wonko the Sane</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/3a29b9d9-9b67-42cd-b4da-d074ea1d5fe2",
            "display": "<section><p><strong>Author</strong> Vroomfondel, <strong>Original Title</strong> Dulce et Decorum Est</p>\n<p><strong>Translated into</strong> Hungarian by Barry Manilow</p>\n<p><strong>Translated title</strong> Starship Titanic.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c921a1d7-56cd-4dde-b6a5-13f5fe7a2fe5",
      "date": "1966-12-02T00:00:00.000-05:00",
      "label": "02 December 1966 - Hettinger, Twana",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Hettinger, Twana"
      ],
      "destinations": [
        "<i>Cathedral of Chalesm</i>"
      ],
      "origins": null,
      "mentions": {
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/8bce982f-5f12-496b-b296-5225042e90ec",
            "display": "<section><p><strong>Collin Stracke, 1912-1984</strong></p>\n<p>There's only one life-form as intelligent as me within thirty parsecs of here and that's me.</p></section>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/b7261574-5693-4725-939b-1754e9e0110c",
            "display": "<section><p><strong>Viki Balistreri, 1919-1996</strong></p>\n<p>I think you ought to know I'm feeling very depressed.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/17ba2109-263b-4cdb-9860-53f4430eb37e",
            "display": "<section><p><strong><i>Easter Island</i></strong></p>\n<p>Tousled <i>kale chips chicharrones street wes anderson vhs</i> gentrify.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/bc3d1595-5af8-4dba-8623-0160a8177867",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Carcanet Press</i></p>\n<p><strong>Translator</strong> Phouchg</p>\n<p><strong>Publication</strong> Pour-over distillery food truck kogi gentrify fashion axe thundercats.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/360e0256-8c6e-402d-9715-e2685bbb657f",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> University of California Press</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Publication</strong> 8-bit ramps chillwave wayfarers.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/890ab8fb-d780-4d66-b7af-8455cf7d4211",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Harcourt Assessment</p>\n<p><strong>Translator</strong> Wonko the Sane</p>\n<p><strong>Publication</strong> Tote bag kinfolk viral yuccie lo-fi.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/172d0797-1dfb-4667-a47e-4f76d6f68c08",
            "display": "<section><p><strong>Artist</strong> Genghis Khan</p>\n<p><strong>Title</strong> <i>U Got The Look</i></p>\n<p><strong>Description</strong> Goth <i>cleanse mixtape truffaut everyday roof stumptown beard</i> chia.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/97842f27-31b8-4138-87a8-679b702de205",
            "display": "<section><p><strong>Artist</strong> Ford Prefect</p>\n<p><strong>Title</strong> D.M.S.R</p>\n<p><strong>Description</strong> Forage sustainable diy polaroid.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f33d014b-9dbd-4a39-8daf-1982017bfe8f",
      "date": "1967-12-09T00:00:00.000-05:00",
      "label": "09 December 1967 - Hackett, Gino",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Hackett, Gino"
      ],
      "destinations": [
        "<i>Easter Island</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/be2e2791-e781-48a5-b14d-1a49d0402400",
            "display": "<section><p><strong>Composer</strong> Majikthise</p>\n<p><strong>Title</strong> Gold</p>\n<p><strong>Description</strong> Fingerstache gastropub poutine authentic direct trade.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9f70da10-451d-47ee-9991-025ad8d1e1aa",
            "display": "<section><p><strong>Composer</strong> Random Dent</p>\n<p><strong>Title</strong> <i>Scandalous!</i></p>\n<p><strong>Description</strong> Heirloom <i>ennui raw denim cray popup kinfolk selvage</i> glutenfree.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/06dfd0cd-1700-498c-8439-d2d821333685",
            "display": "<section><p><strong>Author</strong> Reda Ziemann JD</p>\n<p><strong>Title</strong> A Time of Gifts</p>\n<p><strong>Publication</strong> DAW Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/0399d9f4-9df8-4ec3-a855-dfaf50040bb0",
            "display": "<section><p><strong>Author</strong> Mrs. Cristine Will</p>\n<p><strong>Title</strong> Of Human Bondage</p>\n<p><strong>Publication</strong> Schocken Books.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/b9d8e729-cbf6-4436-90f7-c422a6d446f4",
            "display": "<section><p><strong>Author</strong> Bennie Casper</p>\n<p><strong>Title</strong> <i>In a Dry Season</i></p>\n<p><strong>Publication</strong> Velazquez Press.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/ec9aa0d8-05a7-46b7-af05-f2e7af480250",
            "display": "<section><p><strong>Artist</strong> Colin the Security Robot</p>\n<p><strong>Title</strong> 3 Chains o' Gold</p>\n<p><strong>Description</strong> Churchkey <i>squid cleanse seitan</i> bespoke.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/86411fd2-96d6-4fb9-a0dc-7e2dcf133f80",
            "display": "<section><p><strong>Artist</strong> Gag Halfrunt</p>\n<p><strong>Title</strong> Breakfast Can Wait</p>\n<p><strong>Description</strong> Kale chips sustainable postironic helvetica fingerstache lofi brunch.</p>\n<p><strong>Owner/location</strong> RW6</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/4d5df6ec-408e-4b4b-892b-f6b9d277347b",
            "display": "<section><p><strong>Artist</strong> The Allitnils</p>\n<p><strong>Title</strong> <i>Tamborine</i></p>\n<p><strong>Description</strong> Chambray pug you probably havent heard of them xoxo phlogiston umami salvia glutenfree hashtag.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/de0c6207-05e0-493d-a7c5-b8fffeafe574",
            "display": "<section><p><strong>Title</strong> <i>To a God Unknown</i></p>\n<p><strong>Proposal/Response</strong> According to the legends, the Magratheans lived most of their lives underground.</p>\n<p><strong>Translator</strong> Reg Nullify</p>\n<p><strong>Date</strong> 1954-05-31.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/68ad8638-1c91-43a9-8334-79d2b74fb9db",
            "display": "<section><p><strong>Title</strong> The Grapes of Wrath</p>\n<p><strong>Proposal/Response</strong> Earth: Mostly Harmless</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Date</strong> 1945-02-22.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/f70233e5-7728-4ebb-ba33-eb82942fb401",
            "display": "<section><p><strong>Title</strong> <i>The Far-Distant Oxus</i></p>\n<p><strong>Proposal/Response</strong> In the beginning, the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.</p>\n<p><strong>Translator</strong> Mella</p>\n<p><strong>Date</strong> 1928-01-08.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/37796e4d-4d77-4673-91c7-c753c33201e9",
      "date": "1970-06-23T00:00:00.000-04:00",
      "label": "23 June 1970 - Ratke, Dante",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Ratke, Dante"
      ],
      "destinations": [
        "Horse and Groom"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f45c9be8-06bb-4ef5-b261-c69f31960c1b",
            "display": "<section><p><strong>Theatre</strong>, Street lomo leggings coldpressed.</p>\n<p><strong>Attended with</strong> Jesus Quintana and Agrajag</p>\n<p><strong>Place, Date</strong> Glindaton, 25 September 1940</p>\n<p><strong>Director</strong> The Allitnils</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/cf48c25b-cb02-4d95-ac86-5319bd336f5c",
            "display": "<section><p><strong>Radio Broadcast</strong>, Blog postironic retro photo booth fingerstache.</p>\n<p><strong>Attended with</strong> Bunny Lebowski and Lunkwill and Fook</p>\n<p><strong>Place, Date</strong> West Solomonmouth, 17 February 1937</p>\n<p><strong>Director</strong> Fenchurch</p></section>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/2a938c86-5274-4652-9b12-945a84f8099a",
            "display": "<section><p><strong>Rehearsal</strong>, Roof <i>mumblecore offal kickstarter churchkey</i> semiotics.</p>\n<p><strong>Attended with</strong> Walter Sobchak and Roosta</p>\n<p><strong>Place, Date</strong> North Linwood, 17 February 1963</p>\n<p><strong>Director</strong> Vroomfondel</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6d1eca59-a023-4f16-a25b-2eae63ddcacf",
            "display": "<section><p><strong>Composer</strong> Zaphod Beeblebrox</p>\n<p><strong>Title</strong> <i>Let's Go Crazy</i></p>\n<p><strong>Description</strong> Gentrify <i>xoxo popup mumblecore fixie</i> vhs.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/c72d324f-2065-4e1a-ae30-bd6dac54128b",
            "display": "<section><p><strong>Composer</strong> Hotblack Desiato's bodyguard</p>\n<p><strong>Title</strong> Computer Blue</p>\n<p><strong>Description</strong> Banjo viral venmo blog polaroid.</p></section>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/1da577f6-ba16-454b-92c5-2a2721e08f7d",
            "display": "<section><p><strong>Enterprise</strong></p>\n<p><strong>1938-03-25.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/8cf72c25-3068-4695-abf5-8e1bab23c298",
            "display": "<section><p><strong><i>Columbia</i></strong></p>\n<p><strong>1954-09-12.</strong></p></section>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/9201da28-6722-435f-a92a-fa25dfc2681f",
            "display": "<section><p><strong>Atlantis</strong></p>\n<p><strong>1935-04-22.</strong></p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/318a7c77-41bf-4c3a-8b39-dfd50b4e2ab1",
            "display": "<section><p><strong>Title</strong> <i>The Golden Bowl</i></p>\n<p><strong>Proposal/Response</strong> Magrathea itself disappeared and its memory soon passed into the obscurity of legend. In these enlightened days, of course, no one believes a word of it.</p>\n<p><strong>Translator</strong> Random Dent</p>\n<p><strong>Date</strong> 1956-05-24.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5540b83d-adfa-44aa-a40a-df027c29a48b",
            "display": "<section><p><strong>Title</strong> <i>Shall not Perish</i></p>\n<p><strong>Proposal/Response</strong> Whatever your tastes, Magrathea can cater for you. We are not proud.</p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Date</strong> 1957-08-19.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/d8ef42f9-037b-42a1-a12b-6e00da1327c0",
            "display": "<section><p><strong>Title</strong> Little Hands Clapping</p>\n<p><strong>Proposal/Response</strong> It seemed to me that any civilization that had so far lost its head as to need to include a set of detailed instructions for use in a packet of toothpicks, was no longer a civilization in which I could live and stay sane.</p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Date</strong> 1953-09-10.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4c5caed6-1676-46f3-9481-0aea3e38002b",
      "date": "1972-04-12T00:00:00.000-05:00",
      "label": "12 April 1972 - Steuber, Emile",
      "language": "english",
      "volume": 1,
      "recipients": [
        "Steuber, Emile"
      ],
      "destinations": [
        "<i>London</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/45f087da-7ece-47d5-9770-537ac6c0cca5",
            "display": "<section><p><strong>Composer</strong> Dan Streetmentioner</p>\n<p><strong>Title</strong> <i>Endorphinmachine</i></p>\n<p><strong>Description</strong> Flexitarian <i>glutenfree 90s art party</i> fixie.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/9891ffa9-4bee-48d7-bf4e-2d8e11e0614d",
            "display": "<section><p><strong>Composer</strong> Mr. Prosser</p>\n<p><strong>Title</strong> Superfunkycalifragisexy</p>\n<p><strong>Description</strong> Thundercats <i>tousled crucifix tattooed vhs</i> kogi.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/99e1c166-580f-428a-bf47-7d1903b053fe",
            "display": "<section><p><strong>Composer</strong> Charles Darwin</p>\n<p><strong>Title</strong> <i>U Got The Look</i></p>\n<p><strong>Description</strong> Lumbersexual <i>waistcoat disrupt yolo ennui microdosing twee</i> mixtape.</p></section>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/796189d8-d238-4a56-81da-610510701961",
            "display": "<section><p><strong>Santraginus V</strong></p>\n<p>Pardon <i>me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so</i> depressed.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/df054aa8-f22c-4feb-97ba-8b40b3626f3a",
            "display": "<section><p><strong><i>Happi-Werld III</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/9ed95943-6548-4ae7-93e1-643ac43837d0",
            "display": "<section><p><strong><i>The Domain of The King</i></strong></p>\n<p>Keytar <i>put a bird on it you probably havent heard of them</i> brunch.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/93e83914-49e9-4f3a-8fc8-2683e1dd2fb7",
            "display": "<section><p><strong>Boston</strong></p>\n<p>Selvage next level disrupt squid kale chips cred forage.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e1342b0c-d809-4b1c-97c6-19c16840fe44",
            "display": "<section><p><strong>Author</strong> Colin the Security Robot, <strong>Original Title</strong> Quo Vadis</p>\n<p><strong>Translated into</strong> Hebrew by Vroomfondel</p>\n<p><strong>Translated title</strong> RW6.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ab1513ee-2f85-438c-916c-5b565d2adb1e",
      "date": "1973-05-08T00:00:00.000-04:00",
      "label": "08 May 1973 - Herman, Mariko",
      "language": "french",
      "volume": 1,
      "recipients": [
        "Herman, Mariko"
      ],
      "destinations": [
        "Islington"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/1d1d31f9-510a-4f71-b51c-4888106aa57e",
            "display": "<section><p><strong>Milliways</strong></p>\n<p>Tumblr <i>five dollar toast marfa polaroid raw denim</i> taxidermy.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/0aecff92-ad62-4dc7-95a9-5e196cd743ec",
            "display": "<section><p><strong>Author</strong> Stuart Littel</p>\n<p><strong>Title</strong> The Monkey's Raincoat</p>\n<p><strong>Publication</strong> Libertas Academica.</p></section>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/b2036de7-e2ee-4ba4-a27f-ba7fb297a26b",
            "display": "<section><p><strong>Author</strong> Mella, <strong>Original Title</strong> Wildfire at Midnight</p>\n<p><strong>Translated into</strong> Swedish by Loonquawl and Phouchg</p>\n<p><strong>Translated title</strong> Billion Year Bunker.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f3ecbcd8-465a-4487-8cf9-4f5211d6d6e1",
            "display": "<section><p><strong>Title</strong> Infinite Jest</p>\n<p><strong>Proposal/Response</strong> If there's anything more important than my ego around, I want it caught and shot now.</p>\n<p><strong>Translator</strong> Gag Halfrunt</p>\n<p><strong>Date</strong> 1962-02-21.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/c88e4314-ccdb-4788-8dd1-fc3284d4e7a0",
      "date": "1973-06-02T00:00:00.000-04:00",
      "label": "02 June 1973 - Beahan, Glenn",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Beahan, Glenn"
      ],
      "destinations": [
        "<i>Western Spiral Arm</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/5b50dba1-f067-4f10-82ea-5b56a845d34d",
            "display": "<section><p><strong>Reading</strong>, Keffiyeh <i>hella before they sold out</i> helvetica.</p>\n<p><strong>Attended with</strong> Brandt and Rob McKenna</p>\n<p><strong>Place, Date</strong> Judeburgh, 06 May 1958</p>\n<p><strong>Director</strong> Prostetnic Vogon Jeltz</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/6d14de82-5f4d-4da2-8697-e3486a43787e",
            "display": "<section><p><strong>Composer</strong> Genghis Khan</p>\n<p><strong>Title</strong> Another Lonely Christmas</p>\n<p><strong>Description</strong> Put <i>a bird on it chicharrones yolo retro swag</i> pbrb.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7e9fdb27-440b-4e3f-98c4-092e157e2a60",
            "display": "<section><p><strong>Composer</strong> Emily Saunders</p>\n<p><strong>Title</strong> Ol' Skool Company</p>\n<p><strong>Description</strong> Lumbersexual <i>kitsch gastropub ugh</i> pug.</p></section>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/8990cda7-bfe9-4cc0-a678-908d117f5d8d",
            "display": "<section><p><strong>Title</strong> Spotlight</p>\n<p><strong>Proposal/Response</strong> Pardon me for breathing, which I never do anyway so I don't know why I bother to say it, Oh God, I'm so depressed. / Will you open up the exit hatch, please, computer?</p>\n<p><strong>Director</strong> Karl Hungus <strong>Theatre, City</strong> RW6, Susanachester</p>\n<p><strong>Date(s)</strong> 1947-09-15.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/8b74f2b8-5878-435a-ad21-3b972489acc8",
            "display": "<section><p><strong>Author</strong> Melissa Padberg</p>\n<p><strong>Title</strong> Noli Me Tangere</p>\n<p><strong>Publication</strong> Etruscan Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e5c02ed6-b633-44ea-9ed6-aa12462f6502",
            "display": "<section><p><strong>Author</strong> Devin Mante</p>\n<p><strong>Title</strong> <i>Sleep the Brave</i></p>\n<p><strong>Publication</strong> Ten Speed Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/75113062-e052-4b09-878a-0c5b4cb17e95",
            "display": "<section><p><strong>Author</strong> Colby Hansen</p>\n<p><strong>Title</strong> <i>The Sun Also Rises</i></p>\n<p><strong>Publication</strong> Medknow Publications.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/4bb0fe4d-498a-46a8-8647-d676b6d43f5b",
      "date": "1979-07-19T00:00:00.000-04:00",
      "label": "19 July 1979 - Russel, Jackie",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Russel, Jackie"
      ],
      "destinations": [
        "<i>North West Ripple</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ffbc1519-0c32-4e59-b75f-ad455fec1f43",
            "display": "<section><p><strong><i>Dangrabad Beta</i></strong></p>\n<p>You <i>think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your</i> level.</p></section>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/d0a46a32-42bf-4d09-8705-3f05f46fdec6",
            "display": "<section><p><strong><i>Lamuella</i></strong></p>\n<p>I <i>wish you'd just tell me rather trying to engage my enthusiasm, because I haven't got</i> one.</p></section>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a9a8fb92-6a0f-44f4-a511-f3e576565a1a",
            "display": "<section><p><strong><i>Bournemouth</i></strong></p>\n<p>8bit retro selfies distillery twee blog.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/12d3f948-9339-4cf2-af1d-b1fce9120a88",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> Naiad Press</p>\n<p><strong>Translator</strong> Trillian</p>\n<p><strong>Publication</strong> Salvia retro kickstarter distillery pork belly post-ironic trust fund.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/996d62aa-6fb0-4f8a-8c71-398409d88a92",
            "display": "<section><p><strong>Author</strong> The Big Lebowski</p>\n<p><strong>Title</strong> Atheneum Publishers</p>\n<p><strong>Translator</strong> Hillman Hunter</p>\n<p><strong>Publication</strong> Vegan meggings bushwick banh mi.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/5b6e235e-1c37-48c0-9548-f4258128b8f7",
            "display": "<section><p><strong>Author</strong> Jackie Treehorn</p>\n<p><strong>Title</strong> <i>Fairview Press</i></p>\n<p><strong>Translator</strong> Garkbit</p>\n<p><strong>Publication</strong> Tumblr vhs banh mi mlkshk.</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/9f835209-c84e-41b3-a836-05133924cb07",
            "display": "<section><p><strong>Title</strong> Dulce et Decorum Est</p>\n<p><strong>Proposal/Response</strong> Curiously enough, the only thing that went through the mind of the bowl of petunias as it fell was Oh no, not again.</p>\n<p><strong>Translator</strong> Pasta Fasta</p>\n<p><strong>Date</strong> 1923-03-26.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/67b73045-9b95-4f66-8cc5-b492f65f684e",
            "display": "<section><p><strong>Title</strong> <i>Gone with the Wind</i></p>\n<p><strong>Proposal/Response</strong> On the planet Earth, man had always assumed that he was more intelligent than dolphins because he had achieved so much—the wheel, New York, wars and so on—whilst all the dolphins had ever done was muck about in the water having a good time. But conversely, the dolphins had always believed that they were far more intelligent than man—for precisely the same reasons.</p>\n<p><strong>Translator</strong> Oolon Colluphid</p>\n<p><strong>Date</strong> 1957-08-08.</p></section>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/017745f7-c85b-4aa9-b41e-75797160e2bd",
            "display": "<section><p><strong>Title</strong> <i>The Mermaids Singing</i></p>\n<p><strong>Proposal/Response</strong> there’s an infinite number of monkeys outside who want to talk to us about this script for Hamlet they’ve worked out.</p>\n<p><strong>Translator</strong> Zarniwoop</p>\n<p><strong>Date</strong> 1932-08-01.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bad25812-abbb-4ce7-ae63-f1e508a52d10",
      "date": "1979-10-08T00:00:00.000-04:00",
      "label": "08 October 1979 - Kris, Harlan",
      "language": "german",
      "volume": 1,
      "recipients": [
        "Kris, Harlan"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/a921edc6-ebd0-4c74-9c77-f3a88f4ec9de",
            "display": "<section><p><strong><i>France</i></strong></p>\n<p>Hammock kitsch freegan artisan pitchfork.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c598be2b-1092-46a6-a839-cbe5cd4cdea3",
            "display": "<section><p><strong><i>Space</i></strong></p>\n<p>Williamsburg listicle pork belly beard tattooed chillwave celiac aesthetic letterpress.</p></section>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/de80057b-dae0-493d-a15f-63d47ecbb0db",
            "display": "<section><p><strong><i>Ziggie's Den of Iniquity</i></strong></p>\n<p>Kale <i>chips xoxo swag you probably havent heard of them squid next level pork</i> belly.</p></section>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/582d9e72-9f9a-44ad-b00c-ce32a498c158",
            "display": "<section><p><strong>Author</strong> Antionette Prosacco II</p>\n<p><strong>Title</strong> <i>Time of our Darkness</i></p>\n<p><strong>Publication</strong> University of Nebraska Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/5ee9b2eb-bcb6-4c34-bdf5-1581842ecdda",
            "display": "<section><p><strong>Author</strong> Eustolia Conroy</p>\n<p><strong>Title</strong> An Evil Cradling</p>\n<p><strong>Publication</strong> Tartarus Press.</p></section>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/5a9d6876-9c33-403b-9c18-039d8670d9c9",
            "display": "<section><p><strong>Author</strong> Deirdre Daniel</p>\n<p><strong>Title</strong> <i>A Confederacy of Dunces</i></p>\n<p><strong>Publication</strong> Manor House Publishing.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/41b8a358-bf39-4bef-8f68-6011114b50d2",
            "display": "<section><p><strong>Artist</strong> Trin Tragula</p>\n<p><strong>Title</strong> <i>Girls &amp; Boys</i></p>\n<p><strong>Description</strong> Glutenfree <i>gastropub listicle iphone tofu salvia selvage</i> locavore.</p>\n<p><strong>Owner/location</strong> Heart of Gold</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/867ac02a-1a77-4661-9ed7-58dedd7294e4",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> <i>Let's Go Crazy</i></p>\n<p><strong>Description</strong> Irony <i>bushwick diy brunch you probably havent heard of them muggle magic</i> humblebrag.</p>\n<p><strong>Owner/location</strong> Krikkit One</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/b808aa4f-273e-45bf-8903-77dbb2e2c4c4",
            "display": "<section><p><strong>Artist</strong> Loonquawl and Phouchg</p>\n<p><strong>Title</strong> <i>Raspberry Beret</i></p>\n<p><strong>Description</strong> Migas whatever distillery swag tote bag.</p>\n<p><strong>Owner/location</strong> Vogon Constructor Fleet</p></section>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d77070eb-1070-4cb1-9f51-6df7ea9914ba",
            "display": "<section><p><strong>Title</strong> This Side of Paradise</p>\n<p><strong>Proposal/Response</strong> He was staring at the instruments with the air of one who is trying to convert Fahrenheit to centigrade in his head while his house is burning down.</p>\n<p><strong>Translator</strong> Genghis Khan</p>\n<p><strong>Date</strong> 1950-05-10.</p></section>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b0b119fb-e1af-4b53-a557-28f1fe4050d0",
      "date": "1983-09-25T00:00:00.000-04:00",
      "label": "25 September 1983 - Oberbrunner, Betsey",
      "language": "german",
      "volume": 3,
      "recipients": [
        "Oberbrunner, Betsey"
      ],
      "destinations": [
        "<i>The Big Bang Burger Bar</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/3f68c005-fcd8-4275-acf4-462974813a03",
            "display": "<section><p><strong>Reading</strong>, Paleo disrupt cleanse ugh food truck fashion axe jean shorts squid flexitarian.</p>\n<p><strong>Attended with</strong> The Dude and Charles Darwin</p>\n<p><strong>Place, Date</strong> Lake Prestonborough, 18 March 1930</p>\n<p><strong>Director</strong> Trillian</p></section>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/a05b4a73-deac-42a2-8e1e-1af0ea143c01",
            "display": "<section><p><strong>Composer</strong> Hactar</p>\n<p><strong>Title</strong> Funk n' Roll</p>\n<p><strong>Description</strong> You probably havent heard of them venmo drinking occupy lofi phlogiston.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/a6def26a-605f-4a2e-b265-25c7cd2fa38a",
            "display": "<section><p><strong>Composer</strong> Trillian</p>\n<p><strong>Title</strong> 1000 X's &amp; O's</p>\n<p><strong>Description</strong> Chicharrones <i>coldpressed trust fund ennui blog godard</i> everyday.</p></section>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/5cb1207d-4c93-4bea-abbf-0d72998c7d1f",
            "display": "<section><p><strong>Composer</strong> Prak</p>\n<p><strong>Title</strong> <i>Head</i></p>\n<p><strong>Description</strong> Cray cardigan kinfolk wes anderson direct trade.</p></section>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/c8627d2d-fa40-4d13-92d3-5d5253aec788",
            "display": "<section><p><strong>Author</strong> Brandt</p>\n<p><strong>Title</strong> <i>Churchill Livingstone</i></p>\n<p><strong>Translator</strong> Charles Darwin</p>\n<p><strong>Publication</strong> Beard raw denim chillwave locavore ramps lomo put a bird on it tilde.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/391484cf-2075-4b5c-881d-92a9204323cd",
            "display": "<section><p><strong>Author</strong> The Dude</p>\n<p><strong>Title</strong> Shire Books</p>\n<p><strong>Translator</strong> Agrajag</p>\n<p><strong>Publication</strong> Trust fund try-hard butcher squid master put a bird on it food truck scenester.</p></section>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/035c613d-6dee-4283-8485-bbf496c92dd2",
            "display": "<section><p><strong>Author</strong> Maude Lebowski</p>\n<p><strong>Title</strong> <i>Chick Publications</i></p>\n<p><strong>Translator</strong> Gail Andrews</p>\n<p><strong>Publication</strong> Hella asymmetrical cray vice phlogiston microdosing single-origin coffee bespoke ennui.</p></section>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/daf3945b-5d2e-4c31-8083-984b8eb5d94d",
            "display": "<section><p><strong>Artist</strong> JinJenz</p>\n<p><strong>Title</strong> Joy In Repetition</p>\n<p><strong>Description</strong> Yolo organic fingerstache offal.</p>\n<p><strong>Owner/location</strong> Bistromath</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8e899907-13b2-4738-acc8-e5795d83735f",
            "display": "<section><p><strong>Artist</strong> Zarquon</p>\n<p><strong>Title</strong> Money Don't Matter 2 Night</p>\n<p><strong>Description</strong> Helvetica slowcarb artisan pbrb tryhard lumbersexual.</p>\n<p><strong>Owner/location</strong> Starship Titanic</p></section>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/320824b5-9a00-4763-b6b0-c3d1be227b19",
            "display": "<section><p><strong>Artist</strong> Prostetnic Vogon Kwaltz</p>\n<p><strong>Title</strong> 200 Balloons</p>\n<p><strong>Description</strong> 90s <i>cray cred phlogiston 1 organic</i> hashtag.</p>\n<p><strong>Owner/location</strong> Golgafrinchan Ark Fleet Ship B</p></section>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "volume": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": 2,
          "doc_count": 10
        },
        {
          "key": 1,
          "doc_count": 8
        },
        {
          "key": 3,
          "doc_count": 7
        },
        {
          "key": 0,
          "doc_count": 3
        },
        {
          "key": 4,
          "doc_count": 2
        }
      ]
    },
    "date": {
      "meta": {
      },
      "doc_count": 15,
      "buckets": [
        {
          "key_as_string": "1954-01-01T00:00:00.000Z",
          "key": -504921600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1955-01-01T00:00:00.000Z",
          "key": -473385600000,
          "doc_count": 1
        },
        {
          "key_as_string": "1956-01-01T00:00:00.000Z",
          "key": -441849600000,
          "doc_count": 0
        },
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 1
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 1
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 2
        },
        {
          "key_as_string": "1966-01-01T00:00:00.000Z",
          "key": -126230400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1967-01-01T00:00:00.000Z",
          "key": -94694400000,
          "doc_count": 1
        },
        {
          "key_as_string": "1968-01-01T00:00:00.000Z",
          "key": -63158400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1969-01-01T00:00:00.000Z",
          "key": -31536000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1970-01-01T00:00:00.000Z",
          "key": 0,
          "doc_count": 1
        },
        {
          "key_as_string": "1971-01-01T00:00:00.000Z",
          "key": 31536000000,
          "doc_count": 0
        },
        {
          "key_as_string": "1972-01-01T00:00:00.000Z",
          "key": 63072000000,
          "doc_count": 1
        },
        {
          "key_as_string": "1973-01-01T00:00:00.000Z",
          "key": 94694400000,
          "doc_count": 2
        },
        {
          "key_as_string": "1974-01-01T00:00:00.000Z",
          "key": 126230400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1975-01-01T00:00:00.000Z",
          "key": 157766400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1976-01-01T00:00:00.000Z",
          "key": 189302400000,
          "doc_count": 0
        },
        {
          "key_as_string": "1977-01-01T00:00:00.000Z",
          "key": 220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1978-01-01T00:00:00.000Z",
          "key": 252460800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1979-01-01T00:00:00.000Z",
          "key": 283996800000,
          "doc_count": 2
        },
        {
          "key_as_string": "1980-01-01T00:00:00.000Z",
          "key": 315532800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1981-01-01T00:00:00.000Z",
          "key": 347155200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1982-01-01T00:00:00.000Z",
          "key": 378691200000,
          "doc_count": 0
        },
        {
          "key_as_string": "1983-01-01T00:00:00.000Z",
          "key": 410227200000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 15,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Eastern North Carolina Institute",
          "doc_count": 12
        },
        {
          "key": "Western Reilly",
          "doc_count": 7
        },
        {
          "key": "Southern Rhode Island University",
          "doc_count": 5
        },
        {
          "key": "King College",
          "doc_count": 4
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 15,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "german",
          "doc_count": 9
        },
        {
          "key": "french",
          "doc_count": 4
        },
        {
          "key": "english",
          "doc_count": 1
        },
        {
          "key": "italian",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 15,
    "links": {
      "self": "http://example.org/letters?page=1&volumes=1%2C+3"
    }
  }
}</pre>
