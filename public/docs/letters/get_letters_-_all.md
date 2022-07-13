# Letters API

## GET /letters - All

### GET /letters

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of letters | false | 1
| per_page | Number of letters on a single response. | false | 25
| search | Text to search. | false | *
| fields | Comma seperated list of fields to be queried. | false | recipients, mentions, destinations, origins, repositories
| start_date | Letters dated on or after given date. Must be in YYYY-MM-DD format. | false | null
| end_date | Letters dated on or before given date. Must be in YYYY-MM-DD format. | false | null
| recipients | Comma seperated list of recipient labels | false | null
| destinations | Comma seperated list of destination labels | false | null
| origins | Comma seperated list of origin labels | false | null
| senders | Comma seperated list of sender labels | false | null
| repositories | Comma seperated list of repository labels | false | null
| languages | Comma seperated list of languages. Options are English, French, German, or Italian | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /letters</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/letters?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;last&#39;, &lt;http://example.org/letters?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 30
Content-Type: application/json; charset=utf-8
ETag: W/&quot;8dc07afba4759b6e6da856e17b5342e6&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: de33d447-ff11-4868-b0a8-acfc410988b5
X-Runtime: 2.217750
Vary: Origin
Content-Length: 50007</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "letters": [
    {
      "id": "http://example.org/letters/9aed4504-b0ff-4775-9fcd-c0d565af7dad",
      "date": "1957-03-27T00:00:00.000-05:00",
      "label": "27 March 1957 - Lyra Erso",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "Ysllodins"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/089bd666-4276-4f86-a8b9-a28d7d283bdc",
            "display": "<span>Rob McKenna, <i>Raspberry Beret</i> [Manila Luzon].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/232140a2-c121-41a3-9c63-9b8600a5ee10",
            "display": "<span>Zarniwoop, 1-800-Newfunk Ad [Thorgy Thor].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/cce256f9-1bfd-472a-8c51-5147b7c027f7",
            "display": "<span>Loonquawl, <i>Partyman</i> [Alexis Mateo].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/bbe7a7f8-f5e1-4711-ace3-d4e93ef08003",
            "display": "<span><i>The Bourne Ultimatum</i>, dir. Jesus Quintana, Vogon Constructor Fleet, Kunzemouth, 1968-04-02.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/61b9771b-c984-41ad-b0ae-313efc71858c",
            "display": "<span>Josefina Stanton, <i>The Heart Is a Lonely Hunter</i>, Eel Pie Publishing.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/7b536b02-88aa-4159-8550-75b6d3f41869",
            "display": "<span><i>In a Dry Season</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5c6aac00-0dd4-42bb-83fa-7b467edda65a",
            "display": "<span>Alone on a Wide, Wide Sea.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/b915d579-ec2c-46e4-bdb5-56203f9c5d5c",
            "display": "<span><i>A Catskill Eagle</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/eece6ab2-16cc-4c9c-9082-b8af8ce08088",
      "date": "1957-04-04T00:00:00.000-05:00",
      "label": "04 April 1957 - <i>Officer Meow Meow Fuzzyface</i>",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "Norway"
      ],
      "origins": null,
      "mentions": {
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/b81b91db-3f00-46d7-8602-577e528c4c45",
            "display": "<span>Karl Hungus, <i>The Albino</i>, Elvis Biodiesel migas street poutine squid scenester sartorial asymmetrical.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/68c047ef-3f11-41cf-ad02-d1625460456f",
            "display": "<span>Rev. Queenie Corkery, Nectar in a Sieve, DAW Books.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/1db87079-887b-4532-914c-b378016f143f",
            "display": "<span>Sheryll Bradtke, Of Human Bondage, Target Books.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/7597c285-bcc7-4250-ab2a-6b7de3c02263",
            "display": "<span>Genghis Khan, <i>As I Lay Dying</i>, Translated into Eroticon VI by Hotblack Desiato's bodyguard.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f11e0a65-463c-4c69-8c08-a5206e94b138",
            "display": "<span><i>Fame Is the Spur</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/89ef5b39-5d11-447b-9bed-5ce1ff22f1b0",
            "display": "<span>Great Work of Time.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/6bea8aed-3862-4cba-81bc-00f3c967cbc8",
      "date": "1957-09-24T00:00:00.000-04:00",
      "label": "24 September 1957 - <i>Lyra Erso</i>",
      "recipients": [
        "Lyra Erso"
      ],
      "destinations": [
        "Kakrafoon Kappa"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/52d2d9e4-4c29-47ee-831e-94e599332b32",
            "display": "<span>Viltvodle VI, Kennedy Davenport.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/0141eb82-85a7-49d6-be2c-eab81d2a0112",
            "display": "<span>Rupert, Morgan McMichaels.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/830cc80a-67a7-4c61-89ea-0087af83c786",
            "display": "<span><i>Majikthise</i> (1900-1970). Flannel fingerstache phlogiston listicle.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/9fbff772-6a80-4aac-befe-497bacff0be6",
            "display": "<span>Bunny Lebowski (1922-1984). Mustache roof literally polaroid.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/668912c6-83d5-42e8-9e82-9091e329a4f9",
            "display": "<span><i>Majikthise</i> (1919-1997). Cliche keffiyeh lo-fi helvetica raw denim retro flannel.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/052681b3-e354-4dc3-a8fd-40e27340c531",
            "display": "<span><i>Stavro Mueller Beta</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/bc3ea0d6-c6b3-455d-9237-2b6bcbcdaa3c",
            "display": "<span>Apollo (1961-01-06).</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/693dd27e-fc26-4333-95c2-15435cdf63f8",
      "date": "1957-10-05T00:00:00.000-04:00",
      "label": "05 October 1957 - <i>Oglethorpe</i>",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Zarss"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/be2b3fb5-f734-4428-8c8e-bc4740478a24",
            "display": "<span>butcher, <i>City Lights</i>, Lubowitzport, 13 December 1932.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c1f90265-92c7-4ab4-a6e8-fab2e95d6efb",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1906-1992). Chicharrones <i>hammock gentrify venmo 3 wolf</i> moon.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/66a6a8e6-4bd1-4837-bfb9-d1af5e6c550c",
            "display": "<span><i>Revolio 'Gearhead' Clockberg, Jr.</i> (1911-1973). Distillery diy aesthetic lo-fi meh chicharrones whatever goth.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/2eab724c-d66f-4540-9aee-e1f0393f3a6e",
            "display": "<span>Oglethorpe (1901-1976). Crucifix <i>8-bit microdosing waistcoat muggle magic knausgaard park</i> locavore.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/57b55bed-be97-43b8-a198-55e28a90dba5",
            "display": "<span>Chet McKenzie, <i>Unweaving the Rainbow</i>, Penguin Books.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/bb21ccdc-f697-4564-95fb-25d6fe1875be",
            "display": "<span>Max Quordlepleen, Tamborine, Chartreuse <i>typewriter tacos shoreditch pinterest jean</i> shorts.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/0cf79167-fd56-42cb-9347-f2ae0f3fc219",
      "date": "1957-10-23T00:00:00.000-04:00",
      "label": "23 October 1957 - <i>Officer Meow Meow Fuzzyface</i>",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Barnard's Star</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/05f51054-96d3-4615-8d9a-23e3b831ee8f",
            "display": "<span>tacos, <i>The Departed</i>, Port Graig, 31 May 1970.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/dcadb681-7ec4-4c6e-b5d6-542e012b6119",
            "display": "<span>8-bit, Whiplash, Kirlinport, 27 September 1941.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/15a0b5e1-8ec1-4717-83cc-75e322e5eec5",
            "display": "<span><i>Spirited Away</i>, dir. Jesus Quintana, RW6, Lake Florine, 1940-06-21.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/6fd15903-c49d-4d45-93e0-6369f4d0f170",
            "display": "<span>Star Wars: Episode V - The Empire Strikes Back, dir. Jesus Quintana, Bistromath, East Ivychester, 1932-07-06.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/af7c0fd9-8fce-4f40-88dc-25b832f16c9e",
            "display": "<span><i>Apollo</i> (1968-11-03).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/f6de6094-5f6d-4440-96c2-05d201638b33",
            "display": "<span><i>Atlantis</i> (1935-10-22).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/336bb8b0-a50a-4069-aaf7-0c405e467b11",
            "display": "<span>Brandt, The Albino, Frankie and Benjy Wayfarers portland ennui bespoke knausgaard vinegar franzen blue bottle.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/e904bedd-88d1-4bf0-9fc5-8a9c7b7cd3c2",
      "date": "1958-01-17T00:00:00.000-05:00",
      "label": "17 January 1958 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Bournemouth</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/ac8c7598-848a-40ff-bdd2-5a30dd2036c9",
            "display": "<span><i>Han Wavel</i>, Jujubee.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/115960ca-33c2-49fa-8289-dae5b6f5200f",
            "display": "<span><i>Milliways</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/3803292b-0169-47cc-b2ad-f766e353d5c9",
            "display": "<span><i>Milliways</i>.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/f25a3233-40b8-456e-8deb-561ab63bd749",
            "display": "<span>Challenger (1950-12-08).</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/f2739136-be16-4656-8429-a7dc98df3ddf",
            "display": "<span><i>Absalom, Absalom!</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/5ce3242c-75a9-40c6-afc0-1b3dd292d5ae",
            "display": "<span>Sleep the Brave.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/91c97b36-de3e-46a2-94f5-68d29deafced",
            "display": "<span><i>I Know Why the Caged Bird Sings</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/bb4c1084-47bf-496a-b51c-be04518552ba",
      "date": "1958-05-01T00:00:00.000-04:00",
      "label": "01 May 1958 - <i>Oglethorpe</i>",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "Horsehead Nebula"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/432558d5-b804-4951-aadf-b0d72222b0b4",
            "display": "<span>Allosimanius Syneca, Ariel Versace.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/b8064e1d-dff0-46d0-b3d7-53587a929fbb",
            "display": "<span>Poghril, Jiggly Caliente.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/c6db239b-5aaa-4ff2-aa75-b919f58580cb",
            "display": "<span><i>Han Dold City</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/09522bef-b324-4ee9-ac35-9c2d989efb83",
            "display": "<span>Café Lou.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/d7ccdf74-f817-492a-a91f-ebcd866d7705",
            "display": "<span><i>Boston</i>.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/ee00f240-49ab-4727-878d-8f1d0ecafc31",
            "display": "<span>Jesus Quintana, <i>Oglethorpe</i>, Slartibartfast Biodiesel plaid you probably haven't heard of them vice.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/1d435858-95df-430b-ada7-d554cb9597f2",
            "display": "<span>Vernetta Kautzer, <i>The Stars' Tennis Balls</i>, Marshall Cavendish.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/6c682c2f-f21e-4ded-af50-c3571e3ee431",
            "display": "<span>Shayne Goyette, An Evil Cradling, André Deutsch.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/dfa8df8b-9771-4cbc-a19c-316027422b48",
            "display": "<span>Raymundo Donnelly, <i>Many Waters</i>, Mainstream Publishing.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7484f42e-f705-409a-90e7-fbd0caee5a2c",
      "date": "1958-06-18T00:00:00.000-04:00",
      "label": "18 June 1958 - William T. Riker",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/eadecf85-c833-445c-9985-094ad9e14cd7",
            "display": "<span>mlkshk, The Best Years of Our Lives, Port Latoshaton, 15 September 1968.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/6a0efa68-bbc2-444e-ab7e-35344a441ea8",
            "display": "<span><i>Frogstar World A</i>, Thorgy Thor.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/f0637fdc-69b3-49d8-8634-7db472feaa46",
            "display": "<span>Allosimanius Syneca, Darienne Lake.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/37c786ad-f305-43d9-9729-b75ef7762d69",
            "display": "<span><i>The Albino</i> (1904-1982). Semiotics franzen knausgaard banh mi biodiesel.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/928d426f-198a-4fc6-b184-041cbe8e7297",
            "display": "<span>Officer Meow Meow Fuzzyface (1917-1980). Narwhal pinterest vegan godard.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/001d9d3d-1fd0-4d7d-9e00-aa653216969d",
            "display": "<span>Agda, After Many a Summer Dies the Swan, Translated into Bethselamin by Trin Tragula.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/20762dd0-ff56-44f0-bad7-c5c5dd281f10",
      "date": "1959-01-12T00:00:00.000-05:00",
      "label": "12 January 1959 - <i>Majikthise</i>",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/486dd495-27d3-459f-a4f8-20335381e08d",
            "display": "<span>irony, <i>The Bourne Ultimatum</i>, Jerroldville, 27 August 1937.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/8677f9f8-de90-4fa1-bb16-5d5e7bff2f7d",
            "display": "<span>mumblecore, The Lord of the Rings: The Two Towers, New Raymondport, 20 August 1944.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/5dc8b095-4963-4ab0-9ff7-456541026a98",
            "display": "<span>celiac, <i>Star Wars</i>, Port Azzieborough, 24 November 1965.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/e4e7a87c-b164-4e3f-884f-743817c91cea",
            "display": "<span>Lintilla, <i>Money Don't Matter 2 Night</i> [Brook Lynn Hytes].</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/d826ca63-7405-4e24-9a7e-cb5adac70673",
            "display": "<span>Ford Prefect, The Daffodil Sky, Translated into Poghril by Barry Manilow.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d4ee1503-c528-4265-bf79-eb9bbc096e82",
            "display": "<span><i>Vile Bodies</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/8e4a67fb-03a5-4c26-94ee-8804deaad988",
      "date": "1959-02-14T00:00:00.000-05:00",
      "label": "14 February 1959 - Officer Meow Meow Fuzzyface",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "Total Perspective Vortex"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/f4428708-cee8-4b9f-b62f-175de12d93f3",
            "display": "<span>viral, <i>The Lion King</i>, Port Coleview, 09 May 1937.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/6cb858df-71fd-4477-93ec-7373ace921b5",
            "display": "<span>hella, <i>Life Is Beautiful</i>, Denishafort, 01 October 1969.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/16ee3557-21de-40a0-9b6d-82587562cfb3",
            "display": "<span>Barry Manilow, I Love U, but I Don't Trust U Anymore [Dida Ritz].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/379969b2-a3bc-4d94-a621-3cdb3fb00ac0",
            "display": "<span>Questular Rontok, My Name Is Prince [Scarlet Envy].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/96477e70-0944-4ffa-8d70-43f626ad01b1",
            "display": "<span>Deep Thought, <i>Pop Life</i> [Latrice Royale].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/521ad273-6d8e-4ede-b65b-768d841df288",
            "display": "<span>Revolio 'Gearhead' Clockberg, Jr. (1917-1982). Diy lumbersexual microdosing cold-pressed mlkshk distillery.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f356815f-b26b-4587-817a-60343b31a412",
            "display": "<span>Effrafax of Wug, Delirious, Yr <i>kale chips semiotics</i> chambray.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a9809c65-ff24-4a34-a826-e24b0c714b69",
            "display": "<span>Yooden Vranx, <i>I Wish U Heaven</i>, Pour-over organic fashion axe shoreditch diy hammock yolo gastropub.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/b78850e6-2a9b-4854-a170-3e251702760e",
      "date": "1959-03-15T00:00:00.000-05:00",
      "label": "15 March 1959 - <i>Officer Meow Meow Fuzzyface</i>",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Ziggie's Den of Iniquity</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/1e198084-cbd6-42ab-8ec6-d911ae728952",
            "display": "<span><i>Broop Kidron 13</i>, Mimi Imfurst.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/09c42376-c36a-4ec7-bdc9-ceebe35e39ff",
            "display": "<span>Earth, Aquaria.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/ba0dfe23-9877-4701-b5a9-2c99af024013",
            "display": "<span>Kria, Miss Fame.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/6176735c-afda-418b-81ac-cc504ec5a5b5",
            "display": "<span>Revolio 'Gearhead' Clockberg, Jr. (1902-1986). Iphone vinegar typewriter leggings fashion axe.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/338f22dc-f2df-423f-b80f-d3a4f56e1490",
            "display": "<span>Revolio 'Gearhead' Clockberg, Jr. (1902-1985). Put a bird on it brooklyn church-key poutine shabby chic polaroid pabst.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/953cb6f6-68a8-41ef-9c62-94a638f6da33",
            "display": "<span><i>Bunny Lebowski</i> (1907-1982). Portland gastropub bitters yolo cliche +1 cleanse brunch.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/d4590c1a-3f6d-4bf1-911f-94bff9fad3d0",
            "display": "<span>Endeavour (1933-02-26).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/d3d28841-c291-4712-bc5e-7f25f4fcd990",
            "display": "<span>Mercury (1943-07-01).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/ed19369f-3d53-4927-97a2-eb3a870a58c2",
            "display": "<span>The Dude, Elizabeth Hoover, Mella Trust fund fanny pack plaid loko keffiyeh.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/cd0d5b95-46c8-47ca-bd2b-ecdf22301861",
            "display": "<span>Karl Hungus, Officer Meow Meow Fuzzyface, Pasta Fasta Vice mixtape food truck park.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/defce804-f7cd-4a9a-9c61-c22e9b357361",
      "date": "1960-09-22T00:00:00.000-04:00",
      "label": "22 September 1960 - <i>Revolio 'Gearhead' Clockberg, Jr.</i>",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "Oglaroon"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/fa5adc3c-fddf-460a-a0f0-d559c45d1b8e",
            "display": "<span>NowWhat, A'keria Chanel Davenport.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/2f660088-7d93-4081-855f-66f3abfdc90a",
            "display": "<span>The Albino (1916-1990). Listicle 8-bit salvia swag butcher tofu schlitz cold-pressed loko.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/f1738411-467a-4fc7-b98e-87eb5b6e7085",
            "display": "<span><i>Steppenwolf</i> (1910-1994). Park shoreditch biodiesel cray vegan organic.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/13999247-19c3-4426-8d13-288f6bbed293",
            "display": "<span>Bunny Lebowski (1906-1992). Banjo <i>gentrify plaid kale</i> chips.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/32bc4c19-3f20-4d8c-ad75-053118b722e3",
            "display": "<span>Challenger (1954-03-29).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/5b81bdc9-a13f-48ac-8378-9726fae3c279",
            "display": "<span><i>Enterprise</i> (1922-07-24).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/528def93-cb21-4a8b-91b4-90a017c34f5a",
            "display": "<span>Meghann Grimes, Fair Stood the Wind for France, UCL Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/e42c216c-ab65-4c12-962b-dfa03f0b3918",
            "display": "<span>Janel Davis, <i>Of Human Bondage</i>, Addison-Wesley.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/951e6e8a-3c46-4705-8eeb-48bf64441efd",
      "date": "1960-12-05T00:00:00.000-05:00",
      "label": "05 December 1960 - <i>Officer Meow Meow Fuzzyface</i>",
      "recipients": [
        "Officer Meow Meow Fuzzyface"
      ],
      "destinations": [
        "<i>Xaxis</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/a5a4d452-9eb3-49f8-8a03-5670b74901de",
            "display": "<span>Viltvodle VI, Alyssa Edwards.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/c8683c60-6858-4b54-938a-2990555897e8",
            "display": "<span>Discovery (1959-11-12).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/6b008dce-2f53-4074-b3e0-3b8496f7c6af",
            "display": "<span><i>Discovery</i> (1943-11-04).</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/7a7342b4-34d7-48b6-87ef-a9505fecda99",
            "display": "<span>Jesus Quintana, Scott Malkinson, Garkbit Meh art party biodiesel tattooed poutine.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/55e3aa20-d936-4244-9611-82716d6bfd7a",
            "display": "<span>Karl Hungus, Officer Meow Meow Fuzzyface, Slartibartfast Godard craft beer cray narwhal vegan.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e9b2b1fb-d2a4-42c7-ab5c-61250a5839c1",
            "display": "<span>A Time to Kill.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/2408e11d-e329-4153-aea0-c31e8fd329c5",
            "display": "<span>The Little Foxes.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/45a9b03d-fb82-4f68-9dbe-e8306b5924e7",
            "display": "<span><i>Vanity Fair</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/5c2e1168-c826-46ae-90d3-51adf9a83c90",
      "date": "1961-01-30T00:00:00.000-05:00",
      "label": "30 January 1961 - Revolio 'Gearhead' Clockberg, Jr.",
      "recipients": [
        "Revolio 'Gearhead' Clockberg, Jr."
      ],
      "destinations": [
        "<i>Horse and Groom</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5ee3e184-ab89-4a7f-8b92-89c887f78792",
            "display": "<span>Humma Kavula, <i>Uptown</i> [Darienne Lake].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/0c080883-9a60-4eaf-9208-6f6d1d44053b",
            "display": "<span>Questular Rontok, Breakfast Can Wait [Milk].</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/b4d2fb99-b8af-4e86-9a36-994621017107",
            "display": "<span><i>Oglethorpe</i> (1916-1975). Sustainable asymmetrical celiac tilde next level fingerstache.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/8efb2620-e67e-4204-a196-180946b6d456",
            "display": "<span>Zaphod Beeblebrox, <i>Stranger in a Strange Land</i>, Translated into Vogsphere by Pasta Fasta.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/954f93d8-cdd2-4d01-bc5f-d59b2e979742",
            "display": "<span>Hillman Hunter, <i>To Your Scattered Bodies Go</i>, Translated into Nano by Prostetnic Vogon Kwaltz.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/777d0e50-de2c-400b-ae22-de69390d91ed",
            "display": "<span>Elvis, <i>The Skull Beneath the Skin</i>, Translated into Krikkit by Max Quordlepleen.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/6fc53614-e10b-4992-b812-0d66653b6ad9",
            "display": "<span>Rob McKenna, Cloreen Baconskin, Shabby chic goth gluten-free +1.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/34b254ae-4d4c-457b-bf78-a7e73bc68bc9",
      "date": "1961-02-07T00:00:00.000-05:00",
      "label": "07 February 1961 - <i>Bunny Lebowski</i>",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "<i>Han Dold City</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/8fb7b985-adf3-44f8-a573-14f40f34c31f",
            "display": "<span>Agrajag, <i>Bambi</i> [Mercedes Iman Diamond].</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/86fd6dbf-7145-40a7-b695-8e7d20181a2e",
            "display": "<span>Donnie Darko, dir. The Dude, Bistromath, Daremouth, 1942-10-13.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/327918da-54a1-45b2-8108-6b416ac39767",
            "display": "<span><i>Citizen Kane</i>, dir. Donny, Heart of Gold, East Khalilahbury, 1939-12-03.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/6f65f565-9c8d-449b-9bbd-6527880998de",
            "display": "<span>Karl Hungus, Bunny Lebowski, Pasta Fasta Knausgaard waistcoat migas pbr&b.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/2e8d2516-79cd-401c-9fbd-b393cc322b91",
            "display": "<span>Colin the Security Robot, <i>Mother Night</i>, Translated into Jaglan Beta by Mr. Prosser.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0b51c67d-9bc8-4ced-9c87-c87097d54384",
            "display": "<span>The Allitnils, The Monkey's Raincoat, Translated into Viltvodle VI by Hillman Hunter.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/f79e394d-61c1-4a78-a37a-9e2248af4b55",
      "date": "1961-05-11T00:00:00.000-04:00",
      "label": "11 May 1961 - <i>Scott Malkinson</i>",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "<i>The Domain of The King</i>"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/ec7f5db0-a6dc-4c9c-9eb7-586604bf2906",
            "display": "<span>kombucha, Amadeus, Taishahaven, 26 April 1934.</span>"
          },
          {
            "type": "attendance",
            "id": "http://example.org/entities/9c021e6c-f61f-4f24-987c-f8da5eddae07",
            "display": "<span>cliche, Prisoners, Gayleburgh, 27 August 1949.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/c0dc4de9-33de-4dc5-9354-02c5fd99bc4b",
            "display": "<span><i>William T. Riker</i> (1915-1993). Park irony helvetica blog.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1650b170-c0a5-45fe-a9e0-b04cfebefea1",
            "display": "<span><i>Officer Meow Meow Fuzzyface</i> (1921-1996). Farm-to-table retro pork belly austin meggings kale chips hoodie.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/20b8b904-ef27-4e6f-a047-e0156b3292f2",
            "display": "<span>Scott Malkinson (1923-1987). Chartreuse <i>tacos keytar meggings</i> goth.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/c214e7b7-593b-4445-bc15-a752fc514a32",
            "display": "<span>Zaphod Beeblebrox, <i>An Evil Cradling</i>, Translated into Frogstar World A by Roosta.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/819afddb-b0b9-4348-acca-d1ce0aa37f91",
            "display": "<span>Phouchg, <i>Down to a Sunless Sea</i>, Translated into Flargathon by Agda.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/0fef054e-745b-4094-8d8b-a4d227b49ccb",
            "display": "<span>Pizpot Gargravarr, <i>Some Buried Caesar</i>, Translated into Kria by Phouchg.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/d2e5eee1-55d7-4642-8f01-c821b59ded7d",
            "display": "<span><i>To Say Nothing of the Dog</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/7f2978f8-718a-4580-94f7-01f49730266e",
      "date": "1962-04-10T00:00:00.000-05:00",
      "label": "10 April 1962 - Bunny Lebowski",
      "recipients": [
        "Bunny Lebowski"
      ],
      "destinations": [
        "Croydon"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/a7ad8196-1551-495e-8f0f-bda65bf0774b",
            "display": "<span>tattooed, <i>Raging Bull</i>, McClureburgh, 25 November 1965.</span>"
          }
        ],
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/542932ee-4a88-4735-b970-4f2576cd56fa",
            "display": "<span>Ford Prefect, Let's Work [Blair St. Clair].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/28440dc0-20e9-4e32-864d-7777bc2e6d20",
            "display": "<span>Hotblack Desiato's bodyguard, Computer Blue [Kennedy Davenport].</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/f2ed3238-a55b-4b94-90b1-897a66ebdd68",
            "display": "<span>Jackie Treehorn, <i>Scott Malkinson</i>, Paula Nancy Millstone Jennings Poutine vice muggle magic plaid kogi kinfolk asymmetrical.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/2853fab4-4699-44bb-80eb-bd9fcd8196c5",
            "display": "<span>Jackie Treehorn, <i>Revolio 'Gearhead' Clockberg, Jr.</i>, Fenchurch Sartorial ethical single-origin coffee fashion axe organic muggle magic vinegar cleanse mixtape.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/fb0d206c-9e66-429a-9b5d-d2b4da5090d3",
            "display": "<span>Msgr. Wilhelmina Rolfson, <i>For a Breath I Tarry</i>, Random House.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ac73a68e-363c-461b-bffa-1fbad83856b1",
            "display": "<span>Juan Wisoky, <i>Have His Carcase</i>, Boydell & Brewer.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d5cd23e5-1981-4bd2-a360-b10b4e9a04b5",
            "display": "<span>Merle Hane, <i>The Wings of the Dove</i>, Kensington Books.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/51da567b-ba49-4644-9cd4-94cb1203e596",
      "date": "1962-06-25T00:00:00.000-04:00",
      "label": "25 June 1962 - Steppenwolf",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "Asbleg"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/2929e42d-f03c-46d7-8d13-7d615a6bb52d",
            "display": "<span>Deep Thought, <i>Head</i> [Chad Michaels].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d656dd4d-5eb3-4f33-bcad-54e0e02f52d4",
            "display": "<span>Colin the Security Robot, It's Gonna Be A Beautiful Night [Vanessa Vanjie Mateo].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/d30f210d-6809-4615-b570-cd6b9891dcac",
            "display": "<span>Hillman Hunter, Paisley Park [Blair St. Clair].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/779ba332-6cba-45a7-997f-70a79a152afe",
            "display": "<span><i>Croydon</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/c096a8bb-88cc-40c7-a035-949c02fc9620",
            "display": "<span>Islington.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/13248ba8-71b1-478b-88b7-c306f1f5eb78",
            "display": "<span><i>Highgate Cemetery</i>.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/91be8d7b-0bcd-4f1b-9b0f-8c686dc43a51",
            "display": "<span>Prak, Darling Nikki, Yolo cardigan jean shorts muggle magic trust fund bespoke.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/8a887664-06b7-4cd3-a511-0910203f98ea",
            "display": "<span>Phouchg, <i>Jam Of The Year</i>, Gastropub <i>truffaut kinfolk tote bag photo booth heirloom raw</i> denim.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/af3e2f67-0b98-44d1-91de-613a018cb34f",
            "display": "<span>Dan Streetmentioner, <i>Dead On It</i>, Listicle thundercats cold-pressed food truck letterpress.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/e412b3ba-d61a-45b0-88f5-40fe9610427f",
            "display": "<span>Pale Kings and Princes.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/11bab238-d95e-46b4-b981-1972f3b6a799",
            "display": "<span>The Daffodil Sky.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/1fba1c91-b798-4c27-b89a-0c880b2df75b",
            "display": "<span><i>This Lime Tree Bower</i>.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ced62d09-8db4-4733-8ea7-dc77ecc84d5e",
      "date": "1962-07-28T00:00:00.000-04:00",
      "label": "28 July 1962 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "Guildford"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/fe371bfd-987f-4b37-98a0-635ca762f191",
            "display": "<span>Eccentrica Gallumbits, <i>Dead On It</i> [Sasha Velour].</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/e35e5ed6-dae9-473b-967e-6d76d5646fc6",
            "display": "<span>Nano, Phi Phi O'Hara.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/c31b7d4d-a39f-4ecd-9008-e2e17ab8c60f",
            "display": "<span><i>Flargathon</i>, Robbie Turner.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/610310e0-cd2a-4400-ba28-06aff1b42c63",
            "display": "<span><i>Kakrafoon Kappa</i>, Bob The Drag Queen.</span>"
          }
        ],
        "people": [
          {
            "type": "person",
            "id": "http://example.org/entities/27684747-e5ff-4767-a218-64292b22a6fe",
            "display": "<span>Revolio 'Gearhead' Clockberg, Jr. (1914-1993). Pickled celiac fashion axe leggings gastropub.</span>"
          },
          {
            "type": "person",
            "id": "http://example.org/entities/1fbbb9d2-2ae2-4ae1-a156-ab153cc6f65a",
            "display": "<span><i>Bunny Lebowski</i> (1929-1975). Artisan <i>disrupt keffiyeh blog venmo organic</i> vinyl.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/0ddfe36b-289c-4ac9-a545-e08fb3d10519",
            "display": "<span>Grunthos the Flatulent, I Feel For You, Park <i>offal lomo meggings roof bushwick brunch</i> chartreuse.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/1b15f205-60ff-4eb5-89f1-5fd79095688f",
      "date": "1962-08-11T00:00:00.000-04:00",
      "label": "11 August 1962 - <i>William T. Riker</i>",
      "recipients": [
        "William T. Riker"
      ],
      "destinations": [
        "<i>Western Spiral Arm</i>"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/5522c2bc-e11e-4084-aa8a-288e797bc834",
            "display": "<span>Agda, Scandalous! [Laganja Estranja].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/f0306cf1-fafa-4d40-ba3a-3be563f4cfb2",
            "display": "<span>Arthur Dent, Cream [Mercedes Iman Diamond].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/e4b3f9b6-6e9e-4a11-bad2-97dd48eaf58d",
            "display": "<span>Oolon Colluphid, Funk n' Roll [Mimi Imfurst].</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/52984a13-7abb-4358-98c3-1fea1dc728e6",
            "display": "<span>Donny, William T. Riker, JinJenz Church-key offal literally blue bottle lumbersexual yuccie scenester ethical.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/df54cec1-d5bc-4894-9528-2ad1c344397c",
            "display": "<span>Maude Lebowski, Scott Malkinson, Deep Thought Yolo lumbersexual yr before they sold out food truck deep v wayfarers.</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/6b9b5310-1457-4fa7-905a-16282211f491",
            "display": "<span>Crystal Gleichner, <i>The Heart Is a Lonely Hunter</i>, HarperCollins.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/e1d7bafe-fc00-4759-ad7a-37750057c48e",
            "display": "<span>Hotblack Desiato's bodyguard, <i>The Waste Land</i>, Translated into Kria by Marvin.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/8c176eaf-9653-431c-89b8-3844992cf96e",
            "display": "<span>Zarniwoop, Look to Windward, Translated into Xaxis by Hotblack Desiato's bodyguard.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/f96e8731-4f0b-407a-aba8-f9ef6fa662f2",
            "display": "<span>Deep Thought, <i>The Other Side of Silence</i>, Translated into Arkintoofle Minor by Hotblack Desiato's bodyguard.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/62082ea6-fca3-4791-b81d-efb0947d6868",
      "date": "1962-08-22T00:00:00.000-04:00",
      "label": "22 August 1962 - <i>Steppenwolf</i>",
      "recipients": [
        "Steppenwolf"
      ],
      "destinations": [
        "Kakrafoon Kappa"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/9d5994fd-87ac-41cb-907a-fc295e95b322",
            "display": "<span>Han Wavel, Pearl.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/af295dba-0fea-437c-a99d-35e0a2420523",
            "display": "<span><i>Santraginus V</i>, Gia Gunn.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/273fa1f7-74c7-4946-ad9e-64d44ba85915",
            "display": "<span>Arkintoofle Minor, Chad Michaels.</span>"
          }
        ],
        "productions": [
          {
            "type": "production",
            "id": "http://example.org/entities/cf405e17-caaf-4232-8c0e-d38c97c11563",
            "display": "<span>The Bridge on the River Kwai, dir. Jesus Quintana, Tanngrisnir, Cummerataburgh, 1938-05-29.</span>"
          },
          {
            "type": "production",
            "id": "http://example.org/entities/39fb9ecb-8c6a-414e-94de-37112ae72fb6",
            "display": "<span>Million Dollar Baby, dir. Brandt, Billion Year Bunker, Port Odeliaville, 1967-12-09.</span>"
          }
        ],
        "publications": [
          {
            "type": "publication",
            "id": "http://example.org/entities/a92d43ef-4835-447a-9468-91792e135fad",
            "display": "<span>Walter Sobchak, <i>Scott Malkinson</i>, Arthur Philip Deodat Leggings sriracha vice taxidermy meh wes anderson 90's.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/df110d88-277a-4ca2-9b60-aa86b84519ad",
            "display": "<span>The Big Lebowski, <i>Oglethorpe</i>, Colin the Security Robot Pabst wolf letterpress messenger bag hella drinking.</span>"
          },
          {
            "type": "publication",
            "id": "http://example.org/entities/ae948012-17f0-4f87-b8b0-ea5b3acb9273",
            "display": "<span>Jesus Quintana, Mario, Hotblack Desiato's bodyguard Pinterest umami lumbersexual 3 wolf moon kitsch mumblecore cardigan.</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1928ac1d-036a-45f4-b211-4fccae236a15",
            "display": "<span>Fenchurch, If I Forget Thee Jerusalem, Translated into Earth by Marvin.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/83994bc5-187e-4657-9020-8a0774d7364b",
            "display": "<span>Elvis, Paths of Glory, Translated into Lamuella by Gag Halfrunt.</span>"
          },
          {
            "type": "translating",
            "id": "http://example.org/entities/faa568bb-064b-4994-81cc-f99de3aef8f6",
            "display": "<span>Oolon Colluphid, <i>A Catskill Eagle</i>, Translated into Xaxis by Arthur Philip Deodat.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/ca32f984-87c7-4e8b-905c-9bf0bd4f1510",
      "date": "1962-10-16T00:00:00.000-04:00",
      "label": "16 October 1962 - Oglethorpe",
      "recipients": [
        "Oglethorpe"
      ],
      "destinations": [
        "<i>Stavro Mueller Beta</i>"
      ],
      "origins": null,
      "mentions": {
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/0538bd25-e0a4-4b1d-823c-64ef9542fe2b",
            "display": "<span><i>Han Wavel</i>, Yara Sofia.</span>"
          },
          {
            "type": "organization",
            "id": "http://example.org/entities/db3bdc4f-82bf-4752-9e47-c148b8651594",
            "display": "<span><i>Happi-Werld III</i>, Yara Sofia.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/137eac96-dda2-481b-a993-5d79a7bd85cb",
            "display": "<span>Oglaroon.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/c4e533d3-7ed9-42dc-b982-c461f7ac04b7",
            "display": "<span>Challenger (1957-08-05).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/a16fad5b-2663-402d-af8e-5a34c4b1f021",
            "display": "<span><i>Endeavour</i> (1928-03-19).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/1cea6f7f-4c53-496e-a2a2-116e9a97aa93",
            "display": "<span>Garkbit, <i>No Longer at Ease</i>, Translated into Krikkit by Phouchg.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/2419b8ee-5032-45f8-815e-234fc851b012",
      "date": "1962-12-13T00:00:00.000-05:00",
      "label": "13 December 1962 - <i>Elizabeth Hoover</i>",
      "recipients": [
        "Elizabeth Hoover"
      ],
      "destinations": [
        "Bistro Illegal"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/6e19a582-fb11-40ef-a6d2-6b8d35a29895",
            "display": "<span>chia, The Good, the Bad and the Ugly, Petrachester, 01 September 1963.</span>"
          }
        ],
        "organizations": [
          {
            "type": "organization",
            "id": "http://example.org/entities/f73090f6-4bdc-464f-9935-39c380b176cd",
            "display": "<span>Oglaroon, Alyssa Edwards.</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/f79b9c3a-18fe-40af-985f-d50f99f3728b",
            "display": "<span><i>Bistro Illegal</i>.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/493b3e02-26f9-4efa-b722-9ae7c4d13c7b",
            "display": "<span>Frogstar system.</span>"
          },
          {
            "type": "place",
            "id": "http://example.org/entities/1e4e7384-cf45-49a8-8d62-14e9296f1c17",
            "display": "<span><i>Rickmansworth</i>.</span>"
          }
        ],
        "work_of_arts": [
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/a2bf0c95-1b63-437a-8705-d19672835f00",
            "display": "<span>Majikthise, <i>The Beautiful Ones</i>, Art party heirloom vinegar health selfies yolo locavore artisan skateboard.</span>"
          },
          {
            "type": "work_of_art",
            "id": "http://example.org/entities/f3dd0bb2-42f3-4b90-87df-c7beb7b589b6",
            "display": "<span>Zarquon, <i>1000 X's & O's</i>, Chicharrones intelligentsia mumblecore tacos gastropub quinoa tilde brooklyn diy.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/121d94b3-ffbb-452b-a1b1-2d41309a92c2",
      "date": "1962-12-23T00:00:00.000-05:00",
      "label": "23 December 1962 - Scott Malkinson",
      "recipients": [
        "Scott Malkinson"
      ],
      "destinations": [
        "Rickmansworth"
      ],
      "origins": null,
      "mentions": {
        "music": [
          {
            "type": "music",
            "id": "http://example.org/entities/39ae7dbd-f25e-4b8f-81f2-15f3d1329a21",
            "display": "<span>Lunkwill and Fook, And God Created Woman [Brook Lynn Hytes].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/2e416f2e-f620-405e-8e99-064ed817706a",
            "display": "<span>Frankie and Benjy, Cream [Adore Delano].</span>"
          },
          {
            "type": "music",
            "id": "http://example.org/entities/7200ca57-011b-4b5b-9400-548efcca2183",
            "display": "<span>Prostetnic Vogon Kwaltz, Anotherloverholenyohead [Jinkx Monsoon].</span>"
          }
        ],
        "places": [
          {
            "type": "place",
            "id": "http://example.org/entities/611feb28-f92f-4b8c-8faa-32b03170a9fd",
            "display": "<span>North West Ripple.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/748ba33e-d7fd-4b3f-b443-95af32bcf63c",
            "display": "<span>Columbia (1955-01-18).</span>"
          },
          {
            "type": "public_event",
            "id": "http://example.org/entities/cb48adda-7bf6-40bb-ab23-4f40fdca1cd9",
            "display": "<span><i>Columbia</i> (1970-12-11).</span>"
          }
        ],
        "readings": [
          {
            "type": "reading",
            "id": "http://example.org/entities/69a5c4f3-af71-4e7e-badf-fa02a8654cab",
            "display": "<span>Dewayne O'Conner, Jacob Have I Loved, Felony & Mayhem Press.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/ab3bd8d3-c253-486b-a1b4-ad73582c3b05",
            "display": "<span>Elvia Hintz, Time To Murder And Create, Reed Publishing.</span>"
          },
          {
            "type": "reading",
            "id": "http://example.org/entities/d45d68c4-e3a5-4119-a941-1293cca7b70f",
            "display": "<span>Tuan Gerhold LLD, <i>The Moving Toyshop</i>, Allen Ltd.</span>"
          }
        ]
      }
    },
    {
      "id": "http://example.org/letters/3cce377d-83a9-4c57-93ab-b7dcecd0c09c",
      "date": "1964-01-23T00:00:00.000-05:00",
      "label": "23 January 1964 - <i>Majikthise</i>",
      "recipients": [
        "Majikthise"
      ],
      "destinations": [
        "Frogstar World B"
      ],
      "origins": null,
      "mentions": {
        "attendances": [
          {
            "type": "attendance",
            "id": "http://example.org/entities/e931421a-e809-4e3a-8ea5-ebe6cab34f31",
            "display": "<span>lomo, Lawrence of Arabia, North Pearline, 22 January 1943.</span>"
          }
        ],
        "public_events": [
          {
            "type": "public_event",
            "id": "http://example.org/entities/13292122-a9fe-4700-86a9-6f3fd404c1f7",
            "display": "<span><i>Gemini</i> (1935-12-16).</span>"
          }
        ],
        "translatings": [
          {
            "type": "translating",
            "id": "http://example.org/entities/5750b7e3-2842-4fe0-9fa6-9065c2cb1740",
            "display": "<span>Rob McKenna, <i>The Way of All Flesh</i>, Translated into Burphon XII by Paula Nancy Millstone Jennings.</span>"
          }
        ],
        "writings": [
          {
            "type": "writing",
            "id": "http://example.org/entities/75f36359-a96e-459b-a238-9edc0742a437",
            "display": "<span><i>A Passage to India</i>.</span>"
          },
          {
            "type": "writing",
            "id": "http://example.org/entities/55e4c458-09bc-4bb5-bbf1-79893882969f",
            "display": "<span><i>The Green Bay Tree</i>.</span>"
          }
        ]
      }
    }
  ],
  "aggs": {
    "date": {
      "meta": {
      },
      "doc_count": 30,
      "buckets": [
        {
          "key_as_string": "1957-01-01T00:00:00.000Z",
          "key": -410227200000,
          "doc_count": 5
        },
        {
          "key_as_string": "1958-01-01T00:00:00.000Z",
          "key": -378691200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1959-01-01T00:00:00.000Z",
          "key": -347155200000,
          "doc_count": 3
        },
        {
          "key_as_string": "1960-01-01T00:00:00.000Z",
          "key": -315619200000,
          "doc_count": 2
        },
        {
          "key_as_string": "1961-01-01T00:00:00.000Z",
          "key": -283996800000,
          "doc_count": 3
        },
        {
          "key_as_string": "1962-01-01T00:00:00.000Z",
          "key": -252460800000,
          "doc_count": 8
        },
        {
          "key_as_string": "1963-01-01T00:00:00.000Z",
          "key": -220924800000,
          "doc_count": 0
        },
        {
          "key_as_string": "1964-01-01T00:00:00.000Z",
          "key": -189388800000,
          "doc_count": 5
        },
        {
          "key_as_string": "1965-01-01T00:00:00.000Z",
          "key": -157766400000,
          "doc_count": 1
        }
      ]
    },
    "repositories": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "Northern Quigley Institute",
          "doc_count": 15
        },
        {
          "key": "West Zemlak College",
          "doc_count": 15
        },
        {
          "key": "South Welch",
          "doc_count": 11
        },
        {
          "key": "Eastern Raynor",
          "doc_count": 9
        }
      ]
    },
    "language": {
      "meta": {
      },
      "doc_count": 30,
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "english",
          "doc_count": 9
        },
        {
          "key": "italian",
          "doc_count": 8
        },
        {
          "key": "german",
          "doc_count": 7
        },
        {
          "key": "french",
          "doc_count": 6
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 2,
    "total_count": 30,
    "links": {
      "self": "http://example.org/letters?page=1",
      "last": "http://example.org/letters?page=2",
      "next": "http://example.org/letters?page=2"
    }
  }
}</pre>
