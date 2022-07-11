# Entities API



## GET /entities?search=:search_terms - Keyword Search

### GET /entities

Returns a paginated list of entities from key word search.

### Parameters

| Name | Description | Required | Default |
|------|-------------|----------|---------|
| page | Current page of entities | false | 1
| per_page | Number of entities on a single response. | false | 25
| search | Text to search. | false | *
| type | Limit responses by single type. Options are attendance, music, organization, person, place, production, public_event, publication, reading, translating, work_of_art, writing. | false | null
| label | Clean label (no HTML) of entity | false | null

### Request

#### Headers

<pre>Version: HTTP/1.0
Accept: application/json
Content-Type: application/json
Host: example.org
Cookie: </pre>

#### Route

<pre>GET /entities?search=humblebrag</pre>

#### Query Parameters

<pre>search: humblebrag</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&amp;search=humblebrag&gt;; rel=&#39;self&#39;
X-Total-Count: 20
Content-Type: application/json; charset=utf-8
ETag: W/&quot;c87b1248be9fbce02dc8dff72fff9fe1&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: ca316a98-04e0-4a1b-9508-f2a908bfab52
X-Runtime: 11.226992
Vary: Origin
Content-Length: 15113</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "/entities/7a9724f2-db01-48fb-8a75-85c35ab68c78",
      "label": "<i>Han Dold City</i>",
      "type": "place",
      "short_display": "<span><i>Han Dold City</i>.</span>",
      "description": "Distillery locavore humblebrag gentrify.",
      "clean_label": "Han Dold City",
      "clean_description": "Distillery locavore humblebrag gentrify.",
      "alternate_spellings": [
        "Raven"
      ],
      "links": [
        "http://volkman.net/denny"
      ]
    },
    {
      "id": "/entities/724ab797-33a0-4d1d-bf0e-f77e14039d75",
      "label": "Horse and Groom",
      "type": "place",
      "short_display": "<span>Horse and Groom.</span>",
      "description": "Humblebrag echo wolf actually occupy.",
      "clean_label": "Horse and Groom",
      "clean_description": "Humblebrag echo wolf actually occupy.",
      "alternate_spellings": [
        "Katya"
      ],
      "links": [
        "http://stamm.name/silas.dach"
      ]
    },
    {
      "id": "/entities/520691a1-cde8-40b0-bea7-3a3aa0481a53",
      "label": "A Many-Splendoured Thing",
      "type": "reading",
      "short_display": "<span>Waldo Lesch, A Many-Splendoured Thing, Berg Publishers.</span>",
      "description": "Hella <i>marfa retro locavore humblebrag</i> dreamcatcher.",
      "clean_label": "A Many-Splendoured Thing",
      "clean_description": "Hella marfa retro locavore humblebrag dreamcatcher.",
      "authors": [
        "Waldo Lesch"
      ],
      "comment": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "publication": "Berg Publishers",
      "publication_format": "williamsburg"
    },
    {
      "id": "/entities/628177d3-342c-4bef-b861-a20e34ad17d4",
      "label": "<i>Brandt</i>",
      "type": "person",
      "short_display": "<span><i>Brandt</i> (1903-1996). Kickstarter <i>humblebrag selvage tousled food</i> truck.</span>",
      "description": "Kickstarter <i>humblebrag selvage tousled food</i> truck.",
      "clean_label": "Brandt",
      "clean_description": "Kickstarter humblebrag selvage tousled food truck.",
      "alternate_spellings": [
        "Katya"
      ],
      "finding_aids": [
        "http://prohaska.com/arlinda.koepp"
      ],
      "first_name": "Juliet",
      "last_name": "Emmerich",
      "life_dates": "(1903-1996)",
      "links": [
        "http://king.info/junior"
      ],
      "profile": "I'm the dude, so that's what you call me. That or, uh His Dudeness, or uh Duder, or El Duderino, if you're not into the whole brevity thing."
    },
    {
      "id": "/entities/a0c465bf-6937-4ca9-8734-c0dbd0b52b7c",
      "label": "<i>Ah, Wilderness!</i>",
      "type": "writing",
      "short_display": "<span><i>Ah, Wilderness!</i>.</span>",
      "description": "Phlogiston banh mi yuccie humblebrag pitchfork.",
      "clean_label": "Ah, Wilderness!",
      "clean_description": "Phlogiston banh mi yuccie humblebrag pitchfork.",
      "date": "1955-04-05",
      "notes": "I think you ought to know I'm feeling very depressed.",
      "porposal": null,
      "beckett_digital_manuscript_project": "http://vonrueden-rutherford.io/markus"
    },
    {
      "id": "/entities/8c859eac-63fc-4ef9-8437-9f35be23fa39",
      "label": "<i>Tiger! Tiger!</i>",
      "type": "translating",
      "short_display": "<span>Mr. Prosser, <i>Tiger! Tiger!</i>, Translated into Han Wavel by Hactar.</span>",
      "description": "Chartreuse portland hammock diy brunch tilde humblebrag.",
      "clean_label": "Tiger! Tiger!",
      "clean_description": "Chartreuse portland hammock diy brunch tilde humblebrag.",
      "author": "Mr. Prosser",
      "comments": "I think you ought to know I'm feeling very depressed.",
      "translated_into": "Han Wavel",
      "translated_title": "Heart of Gold",
      "translator": "Hactar"
    },
    {
      "id": "/entities/bdc22d22-fb04-488f-ad5e-70d9b2d78857",
      "label": "<i>Mario</i>",
      "type": "person",
      "short_display": "<span><i>Mario</i> (1916-1983). Ethical brunch humblebrag +1 sustainable muggle magic.</span>",
      "description": "Ethical brunch humblebrag +1 sustainable muggle magic.",
      "clean_label": "Mario",
      "clean_description": "Ethical brunch humblebrag +1 sustainable muggle magic.",
      "alternate_spellings": [
        "Kameron Michaels"
      ],
      "finding_aids": [
        "http://olson-wolf.org/collin"
      ],
      "first_name": "Teodoro",
      "last_name": "Halvorson",
      "life_dates": "(1916-1983)",
      "links": [
        "http://nader.biz/tu.olson"
      ],
      "profile": "I'm perfectly calm, Dude."
    },
    {
      "id": "/entities/fcff8560-4897-4108-8fbe-bb401b2368fb",
      "label": "<i>Arthur Dent's house</i>",
      "type": "place",
      "short_display": "<span><i>Arthur Dent's house</i>.</span>",
      "description": "Gastropub <i>hoodie offal squid bicycle rights</i> humblebrag.",
      "clean_label": "Arthur Dent's house",
      "clean_description": "Gastropub hoodie offal squid bicycle rights humblebrag.",
      "alternate_spellings": [
        "Laganja Estranja"
      ],
      "links": [
        "http://schowalter.com/gerry_bosco"
      ]
    },
    {
      "id": "/entities/85b05c89-a71a-4328-9673-d03c2a15e9b8",
      "label": "<i>Another Lonely Christmas</i>",
      "type": "music",
      "short_display": "<span>Zarquon, <i>Another Lonely Christmas</i> [BenDeLaCreme].</span>",
      "description": "Vegan vinyl migas yuccie truffaut carry humblebrag tumblr.",
      "clean_label": "Another Lonely Christmas",
      "clean_description": "Vegan vinyl migas yuccie truffaut carry humblebrag tumblr.",
      "alternate_spellings": [
        "BenDeLaCreme"
      ],
      "composer": "Zarquon",
      "links": [

      ],
      "notes": "Dorothy was a waitress on the promenade, she worked the night shift, dishwater blonde, tall and fine, she got a lot of tips.",
      "performed_by": [

      ]
    },
    {
      "id": "/entities/8ccbc805-0bdd-4f84-accb-70523c8e47ec",
      "label": "Denmark",
      "type": "place",
      "short_display": "<span>Denmark.</span>",
      "description": "Humblebrag <i>sriracha iphone truffaut stumptown aesthetic retro</i> occupy.",
      "clean_label": "Denmark",
      "clean_description": "Humblebrag sriracha iphone truffaut stumptown aesthetic retro occupy.",
      "alternate_spellings": [
        "Trinity K Bonet"
      ],
      "links": [
        "http://leuschke.biz/jayson_swaniawski"
      ]
    },
    {
      "id": "/entities/dc568e0c-f5fb-4ed3-8652-060f068f67a6",
      "label": "<i>The Godfather: Part II</i>",
      "type": "attendance",
      "short_display": "<span>knausgaard, <i>The Godfather: Part II</i>, Port Sammychester, 02 November 1932.</span>",
      "description": "Scenester kickstarter humblebrag yuccie taxidermy shoreditch +1 ramps.",
      "clean_label": "The Godfather: Part II",
      "clean_description": "Scenester kickstarter humblebrag yuccie taxidermy shoreditch +1 ramps.",
      "alternate_spellings": [
        "Bianca Del Rio"
      ],
      "attended_with": [
        "Donny",
        "Random Dent"
      ],
      "director": "Gail Andrews",
      "event_type": "knausgaard",
      "performed_by": [
        "Prostetnic Vogon Kwaltz"
      ],
      "place_date": "Port Sammychester, 02 November 1932"
    },
    {
      "id": "/entities/e151a397-a9b0-48f5-adb5-93d1536bda5c",
      "label": "<i>Scary Terry</i>",
      "type": "publication",
      "short_display": "<span>Donny, <i>Scary Terry</i>, Garkbit Five dollar toast microdosing williamsburg butcher synth vegan.</span>",
      "description": "Fanny pack humblebrag park occupy organic vinyl franzen.",
      "clean_label": "Scary Terry",
      "clean_description": "Fanny pack humblebrag park occupy organic vinyl franzen.",
      "author": "Donny",
      "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "publication_information": "Five dollar toast microdosing williamsburg butcher synth vegan.",
      "translator": "Garkbit"
    },
    {
      "id": "/entities/009bcb51-9919-4858-a877-8b24c579c4f7",
      "label": "Some Like It Hot",
      "type": "production",
      "short_display": "<span>Some Like It Hot, dir. Jackie Treehorn, Billion Year Bunker, South Hobert, 1968-01-05.</span>",
      "description": "Semiotics selfies synth bicycle rights church-key humblebrag retro.",
      "clean_label": "Some Like It Hot",
      "clean_description": "Semiotics selfies synth bicycle rights church-key humblebrag retro.",
      "alternate_spellings": [
        "Ivy Winters"
      ],
      "cast": [
        "Slartibartfast",
        "The Dude"
      ],
      "city": "South Hobert",
      "date": "1968-01-05",
      "director": "Jackie Treehorn",
      "links": [
        "http://hettinger-wyman.biz/aurea"
      ],
      "notes": "Retro drinking 3 wolf moon echo.",
      "personnel": [
        "Fenchurch"
      ],
      "proposal": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "response": "Calmer than you are.",
      "reason": null,
      "staging_beckett": "http://feest.com/stacee",
      "theater": "Billion Year Bunker"
    },
    {
      "id": "/entities/a6d85a06-ddc2-4575-ad77-eb66abe8c75e",
      "label": "<i>Money Don't Matter 2 Night</i>",
      "type": "work_of_art",
      "short_display": "<span>Pizpot Gargravarr, <i>Money Don't Matter 2 Night</i>, Chicharrones <i>hella synth humblebrag knausgaard single-origin coffee</i> yuccie.</span>",
      "description": "Chicharrones <i>hella synth humblebrag knausgaard single-origin coffee</i> yuccie.",
      "clean_label": "Money Don't Matter 2 Night",
      "clean_description": "Chicharrones hella synth humblebrag knausgaard single-origin coffee yuccie.",
      "alternate_spellings": [
        "Jessica Wild"
      ],
      "artist": "Pizpot Gargravarr",
      "artist_alternate_spellings": [
        "Mercedes Iman Diamond"
      ],
      "notes": "I won't enjoy it.",
      "owner_location_accession_number_current": 54,
      "owner_location_accession_number_contemporaneous": 117
    },
    {
      "id": "/entities/de4eef56-258a-41a5-9e0a-667fc37c316c",
      "label": "<i>Screwdriver</i>",
      "type": "work_of_art",
      "short_display": "<span>Hotblack Desiato, <i>Screwdriver</i>, Chicharrones church-key humblebrag cronut park art party ramps.</span>",
      "description": "Chicharrones church-key humblebrag cronut park art party ramps.",
      "clean_label": "Screwdriver",
      "clean_description": "Chicharrones church-key humblebrag cronut park art party ramps.",
      "alternate_spellings": [
        "Miss Fame"
      ],
      "artist": "Hotblack Desiato",
      "artist_alternate_spellings": [
        "Jessica Wild"
      ],
      "notes": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "owner_location_accession_number_current": 594,
      "owner_location_accession_number_contemporaneous": 579
    },
    {
      "id": "/entities/0cab006c-b0a1-404e-acfa-2bdd8fb24f93",
      "label": "<i>Kiss</i>",
      "type": "work_of_art",
      "short_display": "<span>Effrafax of Wug, <i>Kiss</i>, Migas <i>sustainable street lo-fi mixtape venmo yuccie flannel</i> humblebrag.</span>",
      "description": "Migas <i>sustainable street lo-fi mixtape venmo yuccie flannel</i> humblebrag.",
      "clean_label": "Kiss",
      "clean_description": "Migas sustainable street lo-fi mixtape venmo yuccie flannel humblebrag.",
      "alternate_spellings": [
        "Mayhem Miller"
      ],
      "artist": "Effrafax of Wug",
      "artist_alternate_spellings": [
        "Shuga Cain"
      ],
      "notes": "And then of course I've got this terrible pain in all the diodes down my left side.",
      "owner_location_accession_number_current": 290,
      "owner_location_accession_number_contemporaneous": 757
    },
    {
      "id": "/entities/8343d85a-7232-485b-8ebd-c2ee4423ef18",
      "label": "<i>The Yellow Meads of Asphodel</i>",
      "type": "translating",
      "short_display": "<span>Roosta, <i>The Yellow Meads of Asphodel</i>, Translated into Rupert by Mella.</span>",
      "description": "Street <i>knausgaard hoodie post-ironic ugh offal humblebrag church-key</i> beard.",
      "clean_label": "The Yellow Meads of Asphodel",
      "clean_description": "Street knausgaard hoodie post-ironic ugh offal humblebrag church-key beard.",
      "author": "Roosta",
      "comments": "There's only one life-form as intelligent as me within thirty parsecs of here and that's me.",
      "translated_into": "Rupert",
      "translated_title": "Starship Titanic",
      "translator": "Mella"
    },
    {
      "id": "/entities/096c4026-7773-4601-ae87-317f2b7f7195",
      "label": "<i>Amadeus</i>",
      "type": "production",
      "short_display": "<span><i>Amadeus</i>, dir. Jesus Quintana, Krikkit One, Christinmouth, 1965-08-26.</span>",
      "description": "Pickled <i>trust fund migas blue bottle plaid humblebrag art party irony</i> iphone.",
      "clean_label": "Amadeus",
      "clean_description": "Pickled trust fund migas blue bottle plaid humblebrag art party irony iphone.",
      "alternate_spellings": [
        "Kenya Michaels"
      ],
      "cast": [
        "Marvin",
        "The Big Lebowski"
      ],
      "city": "Christinmouth",
      "date": "1965-08-26",
      "director": "Jesus Quintana",
      "links": [
        "http://shanahan.info/andera"
      ],
      "notes": "Etsy biodiesel vegan bespoke viral brooklyn sustainable bitters selfies.",
      "personnel": [
        "Wonko the Sane"
      ],
      "proposal": "I won't enjoy it.",
      "response": "Obviously, you're not a golfer",
      "reason": null,
      "staging_beckett": "http://kirlin.co/jeni.spinka",
      "theater": "Krikkit One"
    },
    {
      "id": "/entities/4c0d10e9-6c9f-4c5d-8314-6b80bc27bedb",
      "label": "Bethselamin",
      "type": "organization",
      "short_display": "<span>Bethselamin, Violet Chachki.</span>",
      "description": "Chillwave <i>meditation retro fashion axe cold-pressed shabby chic beard jean shorts</i> humblebrag.",
      "clean_label": "Bethselamin",
      "clean_description": "Chillwave meditation retro fashion axe cold-pressed shabby chic beard jean shorts humblebrag.",
      "alternate_spellings": [
        "Violet Chachki"
      ],
      "profile": "Mr. Treehorn treats objects like women, man."
    },
    {
      "id": "/entities/c1a9ba4d-72bd-442b-8430-1113e026dc2e",
      "label": "The Princess Bride",
      "type": "production",
      "short_display": "<span>The Princess Bride, dir. Bunny Lebowski, Heart of Gold, Lake Mosheburgh, 1933-06-25.</span>",
      "description": "Pork <i>belly humblebrag gluten-free sustainable tote bag you probably haven't heard of them</i> pabst.",
      "clean_label": "The Princess Bride",
      "clean_description": "Pork belly humblebrag gluten-free sustainable tote bag you probably haven't heard of them pabst.",
      "alternate_spellings": [
        "Eureka"
      ],
      "cast": [
        "Zarniwoop",
        "Brandt"
      ],
      "city": "Lake Mosheburgh",
      "date": "1933-06-25",
      "director": "Bunny Lebowski",
      "links": [
        "http://kuvalis-olson.biz/damaris.fadel"
      ],
      "notes": "Xoxo selvage microdosing chillwave kickstarter hoodie vhs cray authentic.",
      "personnel": [
        "Prostetnic Vogon Kwaltz"
      ],
      "proposal": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "response": "V.I. Lenin. Vladimir! Ilyich! Ulyanov!",
      "reason": null,
      "staging_beckett": "http://grady.net/cory.senger",
      "theater": "Heart of Gold"
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 4
        },
        {
          "key": "production",
          "doc_count": 3
        },
        {
          "key": "work_of_art",
          "doc_count": 3
        },
        {
          "key": "person",
          "doc_count": 2
        },
        {
          "key": "translating",
          "doc_count": 2
        },
        {
          "key": "attendance",
          "doc_count": 1
        },
        {
          "key": "music",
          "doc_count": 1
        },
        {
          "key": "organization",
          "doc_count": 1
        },
        {
          "key": "publication",
          "doc_count": 1
        },
        {
          "key": "reading",
          "doc_count": 1
        },
        {
          "key": "writing",
          "doc_count": 1
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 1,
    "total_count": 20,
    "links": {
      "self": "http://example.org/entities?page=1&search=humblebrag"
    }
  }
}</pre>
