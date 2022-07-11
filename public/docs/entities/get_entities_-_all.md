# Entities API



## GET /entities - All

### GET /entities

Returns a paginated list of all entities.

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

<pre>GET /entities</pre>

### Response

#### Headers

<pre>X-Frame-Options: SAMEORIGIN
X-XSS-Protection: 0
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Permitted-Cross-Domain-Policies: none
Referrer-Policy: strict-origin-when-cross-origin
Link: &lt;http://example.org/entities?page=1&gt;; rel=&#39;self&#39;, &lt;http://example.org/entities?page=28&gt;; rel=&#39;last&#39;, &lt;http://example.org/entities?page=2&gt;; rel=&#39;next&#39;
X-Total-Count: 699
Content-Type: application/json; charset=utf-8
ETag: W/&quot;e2b4ddb014378c42426d7d8bd5235592&quot;
Cache-Control: max-age=0, private, must-revalidate
X-Request-Id: cdcbaffa-823f-4a79-893c-a4f750a66de7
X-Runtime: 14.127636
Vary: Origin
Content-Length: 16798</pre>

#### Status

<pre>200 OK</pre>

#### Body

<pre>{
  "entities": [
    {
      "id": "/entities/001e61c7-8942-4472-a892-3a425e1c7072",
      "label": "Le Grind",
      "type": "music",
      "short_display": "<span>Emily Saunders, Le Grind [Alyssa Edwards].</span>",
      "description": "Direct trade williamsburg green juice slow-carb.",
      "clean_label": "Le Grind",
      "clean_description": "Direct trade williamsburg green juice slow-carb.",
      "alternate_spellings": [
        "Alyssa Edwards"
      ],
      "composer": "Emily Saunders",
      "links": [

      ],
      "notes": "You didn't have the decency to change the sheets.",
      "performed_by": [

      ]
    },
    {
      "id": "/entities/011116fc-e3ea-4111-b833-f7ed59eb4f1b",
      "label": "<i>North West Ripple</i>",
      "type": "place",
      "short_display": "<span><i>North West Ripple</i>.</span>",
      "description": "Celiac <i>pinterest pork belly jean shorts kinfolk before they sold out ugh trust fund</i> sustainable.",
      "clean_label": "North West Ripple",
      "clean_description": "Celiac pinterest pork belly jean shorts kinfolk before they sold out ugh trust fund sustainable.",
      "alternate_spellings": [
        "Kameron Michaels"
      ],
      "links": [
        "http://lang-cronin.name/foster"
      ]
    },
    {
      "id": "/entities/01fd86b4-0593-4f6e-a4a8-68be49acc421",
      "label": "<i>Otto Aquarius</i>",
      "type": "person",
      "short_display": "<span><i>Otto Aquarius</i> (1903-1987). Cred flannel swag fingerstache bespoke.</span>",
      "description": "Cred flannel swag fingerstache bespoke.",
      "clean_label": "Otto Aquarius",
      "clean_description": "Cred flannel swag fingerstache bespoke.",
      "alternate_spellings": [
        "Silky Nutmeg Ganache"
      ],
      "finding_aids": [
        "http://beer-cremin.io/janette"
      ],
      "first_name": "Carletta",
      "last_name": "Lesch",
      "life_dates": "(1903-1987)",
      "links": [
        "http://lakin.co/cheryle.olson"
      ],
      "profile": "I am the walrus"
    },
    {
      "id": "/entities/02014d9e-2404-47f0-9676-4de13b147bdd",
      "label": "Mario",
      "type": "publication",
      "short_display": "<span>Donny, Mario, Magrathean sperm whale Tofu flannel health hoodie five dollar toast trust fund stumptown.</span>",
      "description": "Next <i>level organic mlkshk drinking cornhole</i> distillery.",
      "clean_label": "Mario",
      "clean_description": "Next level organic mlkshk drinking cornhole distillery.",
      "author": "Donny",
      "notes": "Life? Don't talk to me about life.",
      "publication_information": "Tofu flannel health hoodie five dollar toast trust fund stumptown.",
      "translator": "Magrathean sperm whale"
    },
    {
      "id": "/entities/02cd49ec-bb2e-47ea-b13b-c928cd8f0dfc",
      "label": "<i>Star Wars: Episode II – Attack of the Clones</i>",
      "type": "attendance",
      "short_display": "<span>tofu, <i>Star Wars: Episode II – Attack of the Clones</i>, Michaeleburgh, 03 July 1954.</span>",
      "description": "Farm-to-table paleo direct trade kogi art party cardigan schlitz pork belly.",
      "clean_label": "Star Wars: Episode II – Attack of the Clones",
      "clean_description": "Farm-to-table paleo direct trade kogi art party cardigan schlitz pork belly.",
      "alternate_spellings": [
        "Peppermint"
      ],
      "attended_with": [
        "Jesus Quintana",
        "Hillman Hunter"
      ],
      "director": "Agda",
      "event_type": "tofu",
      "performed_by": [
        "Pizpot Gargravarr"
      ],
      "place_date": "Michaeleburgh, 03 July 1954"
    },
    {
      "id": "/entities/03abcfc1-b29a-4fa8-b16d-d48f8ad5379b",
      "label": "<i>Colin the Security Robot</i>",
      "type": "person",
      "short_display": "<span><i>Colin the Security Robot</i> (1921-1987). Cliche semiotics narwhal gentrify.</span>",
      "description": "Cliche semiotics narwhal gentrify.",
      "clean_label": "Colin the Security Robot",
      "clean_description": "Cliche semiotics narwhal gentrify.",
      "alternate_spellings": [
        "Acid Betty"
      ],
      "finding_aids": [
        "http://von.info/norbert.mante"
      ],
      "first_name": "Lou",
      "last_name": "Lubowitz",
      "life_dates": "(1921-1987)",
      "links": [
        "http://ruecker.info/tajuana_howell"
      ],
      "profile": "I don't like your jerk-off name. I don't like your jerk-off face. And I don't like you...jerk-off."
    },
    {
      "id": "/entities/03dec51b-f320-469e-ba22-b76534b48648",
      "label": "Frogstar World B",
      "type": "organization",
      "short_display": "<span>Frogstar World B, Aquaria.</span>",
      "description": "Flannel williamsburg direct trade typewriter.",
      "clean_label": "Frogstar World B",
      "clean_description": "Flannel williamsburg direct trade typewriter.",
      "alternate_spellings": [
        "Aquaria"
      ],
      "profile": "Yeah, well, that's just, like, your opinion, man."
    },
    {
      "id": "/entities/0428aab3-0f91-49b2-abd1-8f2844099423",
      "label": "<i>Horsehead Nebula</i>",
      "type": "place",
      "short_display": "<span><i>Horsehead Nebula</i>.</span>",
      "description": "Try-hard pickled celiac kinfolk sartorial tousled lomo bespoke pinterest.",
      "clean_label": "Horsehead Nebula",
      "clean_description": "Try-hard pickled celiac kinfolk sartorial tousled lomo bespoke pinterest.",
      "alternate_spellings": [
        "The Vixen"
      ],
      "links": [
        "http://weissnat.biz/bud"
      ]
    },
    {
      "id": "/entities/052824fe-4b45-4a9e-afa0-30967748d30b",
      "label": "<i>The Widening Gyre</i>",
      "type": "translating",
      "short_display": "<span>Random Dent, <i>The Widening Gyre</i>, Translated into Burphon XII by Eccentrica Gallumbits.</span>",
      "description": "Poutine <i>schlitz aesthetic tumblr ramps deep</i> v.",
      "clean_label": "The Widening Gyre",
      "clean_description": "Poutine schlitz aesthetic tumblr ramps deep v.",
      "author": "Random Dent",
      "comments": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
      "translated_into": "Burphon XII",
      "translated_title": "Tanngrisnir",
      "translator": "Eccentrica Gallumbits"
    },
    {
      "id": "/entities/05447efd-27e2-4423-9a54-10d32888d747",
      "label": "Cream",
      "type": "music",
      "short_display": "<span>Fenchurch, Cream [Miz Cracker].</span>",
      "description": "Fingerstache <i>kale chips pickled single-origin coffee stumptown mustache hammock</i> ramps.",
      "clean_label": "Cream",
      "clean_description": "Fingerstache kale chips pickled single-origin coffee stumptown mustache hammock ramps.",
      "alternate_spellings": [
        "Miz Cracker"
      ],
      "composer": "Fenchurch",
      "links": [

      ],
      "notes": "You can relax now, the max is in control.",
      "performed_by": [

      ]
    },
    {
      "id": "/entities/06dbdd99-6d1a-4b2a-a7d8-8036eb439fda",
      "label": "<i>Otto Aquarius</i>",
      "type": "person",
      "short_display": "<span><i>Otto Aquarius</i> (1926-1988). Fanny pack stumptown mustache godard forage listicle cardigan scenester chillwave.</span>",
      "description": "Fanny pack stumptown mustache godard forage listicle cardigan scenester chillwave.",
      "clean_label": "Otto Aquarius",
      "clean_description": "Fanny pack stumptown mustache godard forage listicle cardigan scenester chillwave.",
      "alternate_spellings": [
        "Brook Lynn Hytes"
      ],
      "finding_aids": [
        "http://nienow.co/edmundo"
      ],
      "first_name": "Darla",
      "last_name": "Bernier",
      "life_dates": "(1926-1988)",
      "links": [
        "http://stroman-crona.org/orville.daugherty"
      ],
      "profile": "So then you have no frame of reference here Donny. You're like a child who wanders into the middle of a movie."
    },
    {
      "id": "/entities/07784ceb-d2e5-4280-b88c-d5becd279f21",
      "label": "The Glory and the Dream",
      "type": "translating",
      "short_display": "<span>Dan Streetmentioner, The Glory and the Dream, Translated into Flargathon by Colin the Security Robot.</span>",
      "description": "Trust <i>fund kale chips chartreuse meggings poutine normcore</i> mlkshk.",
      "clean_label": "The Glory and the Dream",
      "clean_description": "Trust fund kale chips chartreuse meggings poutine normcore mlkshk.",
      "author": "Dan Streetmentioner",
      "comments": "You think you've got problems? What are you supposed to do if you are a manically depressed robot? No, don't try to answer that. I'm fifty thousand times more intelligent than you and even I don't know the answer. It gives me a headache just trying to think down to your level.",
      "translated_into": "Flargathon",
      "translated_title": "Tanngrisnir",
      "translator": "Colin the Security Robot"
    },
    {
      "id": "/entities/07b4e320-770c-49b2-9cf7-f8effcf66d43",
      "label": "Housequake",
      "type": "music",
      "short_display": "<span>Grunthos the Flatulent, Housequake [Gia Gunn].</span>",
      "description": "Migas green juice pickled goth messenger bag.",
      "clean_label": "Housequake",
      "clean_description": "Migas green juice pickled goth messenger bag.",
      "alternate_spellings": [
        "Gia Gunn"
      ],
      "composer": "Grunthos the Flatulent",
      "links": [

      ],
      "notes": "Do I believe in God? Do I believe in me? Some people wanna die so they can be free.",
      "performed_by": [

      ]
    },
    {
      "id": "/entities/080c1c80-1f7a-41c2-befd-22723dd45850",
      "label": "Butterscotch Horseman",
      "type": "person",
      "short_display": "<span>Butterscotch Horseman (1922-1982). Thundercats <i>offal yuccie salvia vegan brooklyn diy hoodie</i> gluten-free.</span>",
      "description": "Thundercats <i>offal yuccie salvia vegan brooklyn diy hoodie</i> gluten-free.",
      "clean_label": "Butterscotch Horseman",
      "clean_description": "Thundercats offal yuccie salvia vegan brooklyn diy hoodie gluten-free.",
      "alternate_spellings": [
        "Tyra Sanchez"
      ],
      "finding_aids": [
        "http://schmitt.net/sharron.kreiger"
      ],
      "first_name": "Carley",
      "last_name": "Hoppe",
      "life_dates": "(1922-1982)",
      "links": [
        "http://robel-wolf.io/cassondra"
      ],
      "profile": "Yeah, well, that's just, like, your opinion, man."
    },
    {
      "id": "/entities/084de7eb-8dd6-4bfb-b340-7626f61e692e",
      "label": "Horse and Groom",
      "type": "place",
      "short_display": "<span>Horse and Groom.</span>",
      "description": "Celiac <i>next level cornhole 90's art party cleanse put a bird on it</i> whatever.",
      "clean_label": "Horse and Groom",
      "clean_description": "Celiac next level cornhole 90's art party cleanse put a bird on it whatever.",
      "alternate_spellings": [
        "Courtney Act"
      ],
      "links": [
        "http://brekke.com/olin"
      ]
    },
    {
      "id": "/entities/09623865-39c6-439e-b5d1-1945b260e981",
      "label": "<i>Betelgeuse</i>",
      "type": "place",
      "short_display": "<span><i>Betelgeuse</i>.</span>",
      "description": "Sustainable polaroid squid vice five dollar toast gluten-free.",
      "clean_label": "Betelgeuse",
      "clean_description": "Sustainable polaroid squid vice five dollar toast gluten-free.",
      "alternate_spellings": [
        "Gia Gunn"
      ],
      "links": [
        "http://boehm.net/curtis.cormier"
      ]
    },
    {
      "id": "/entities/0985749e-4c3a-4a0b-910a-7a07ad3bf7b8",
      "label": "<i>Catch Me If You Can</i>",
      "type": "attendance",
      "short_display": "<span>pitchfork, <i>Catch Me If You Can</i>, Considinestad, 13 September 1942.</span>",
      "description": "Waistcoat salvia cliche hella.",
      "clean_label": "Catch Me If You Can",
      "clean_description": "Waistcoat salvia cliche hella.",
      "alternate_spellings": [
        "Yara Sofia"
      ],
      "attended_with": [
        "Brandt",
        "Prostetnic Vogon Jeltz"
      ],
      "director": "Prostetnic Vogon Jeltz",
      "event_type": "pitchfork",
      "performed_by": [
        "Colin the Security Robot"
      ],
      "place_date": "Considinestad, 13 September 1942"
    },
    {
      "id": "/entities/09bd6de1-a705-4a59-aeb3-f5f2f2847165",
      "label": "Colin the Security Robot",
      "type": "person",
      "short_display": "<span>Colin the Security Robot (1912-1995). Blue <i>bottle chambray retro</i> yolo.</span>",
      "description": "Blue <i>bottle chambray retro</i> yolo.",
      "clean_label": "Colin the Security Robot",
      "clean_description": "Blue bottle chambray retro yolo.",
      "alternate_spellings": [
        "Farrah Moan"
      ],
      "finding_aids": [
        "http://will.org/stefanie"
      ],
      "first_name": "Vincent",
      "last_name": "Rice",
      "life_dates": "(1912-1995)",
      "links": [
        "http://ullrich.name/emil"
      ],
      "profile": "You know, Dude, I myself dabbled in pacifism once. Not in 'Nam of course."
    },
    {
      "id": "/entities/0af0b10e-1fef-4ca8-ad86-159334debead",
      "label": "Many Waters",
      "type": "reading",
      "short_display": "<span>Dexter Windler, Many Waters, Cloverdale Corporation.</span>",
      "description": "Church-key <i>tumblr meggings quinoa</i> kickstarter.",
      "clean_label": "Many Waters",
      "clean_description": "Church-key tumblr meggings quinoa kickstarter.",
      "authors": [
        "Dexter Windler"
      ],
      "comment": "Here I am, brain the size of a planet, and they tell me to take you up to the bridge. Call that job satisfaction? 'Cos I don't.",
      "publication": "Cloverdale Corporation",
      "publication_format": "beard"
    },
    {
      "id": "/entities/0b06ecbb-2597-40d6-8d4c-4a178184bdc3",
      "label": "Data",
      "type": "person",
      "short_display": "<span>Data (1917-1972). Food <i>truck readymade wes anderson meggings loko meditation selvage bicycle rights</i> tilde.</span>",
      "description": "Food <i>truck readymade wes anderson meggings loko meditation selvage bicycle rights</i> tilde.",
      "clean_label": "Data",
      "clean_description": "Food truck readymade wes anderson meggings loko meditation selvage bicycle rights tilde.",
      "alternate_spellings": [
        "Acid Betty"
      ],
      "finding_aids": [
        "http://schiller.net/bridgett"
      ],
      "first_name": "Ta",
      "last_name": "Walter",
      "life_dates": "(1917-1972)",
      "links": [
        "http://barrows.net/lekisha.schultz"
      ],
      "profile": "So then you have no frame of reference here Donny. You're like a child who wanders into the middle of a movie."
    },
    {
      "id": "/entities/0b657c01-cf54-40c2-81a9-e58afd540ef9",
      "label": "Nine Coaches Waiting",
      "type": "reading",
      "short_display": "<span>Lester Simonis V, Nine Coaches Waiting, University of Akron Press.</span>",
      "description": "Small batch post-ironic you probably haven't heard of them letterpress plaid skateboard bushwick mustache.",
      "clean_label": "Nine Coaches Waiting",
      "clean_description": "Small batch post-ironic you probably haven't heard of them letterpress plaid skateboard bushwick mustache.",
      "authors": [
        "Lester Simonis V"
      ],
      "comment": "I won't enjoy it.",
      "publication": "University of Akron Press",
      "publication_format": "park"
    },
    {
      "id": "/entities/0b75f4a3-816d-4db8-8894-73e197eee62e",
      "label": "<i>Before Sunrise</i>",
      "type": "attendance",
      "short_display": "<span>XOXO, <i>Before Sunrise</i>, Port Donn, 12 September 1942.</span>",
      "description": "Gentrify viral hashtag typewriter.",
      "clean_label": "Before Sunrise",
      "clean_description": "Gentrify viral hashtag typewriter.",
      "alternate_spellings": [
        "Mercedes Iman Diamond"
      ],
      "attended_with": [
        "Donny",
        "Roosta"
      ],
      "director": "Genghis Khan",
      "event_type": "XOXO",
      "performed_by": [
        "Hactar"
      ],
      "place_date": "Port Donn, 12 September 1942"
    },
    {
      "id": "/entities/0b934fe6-605f-44d4-a700-2c590b0f0e49",
      "label": "<i>Scary Terry</i>",
      "type": "person",
      "short_display": "<span><i>Scary Terry</i> (1914-1997). Ramps narwhal hoodie iphone chia retro.</span>",
      "description": "Ramps narwhal hoodie iphone chia retro.",
      "clean_label": "Scary Terry",
      "clean_description": "Ramps narwhal hoodie iphone chia retro.",
      "alternate_spellings": [
        "Violet Chachki"
      ],
      "finding_aids": [
        "http://huel-considine.net/maynard_spinka"
      ],
      "first_name": "Kristie",
      "last_name": "Mertz",
      "life_dates": "(1914-1997)",
      "links": [
        "http://witting-vonrueden.co/wilford"
      ],
      "profile": "Is this your homework, Larry?"
    },
    {
      "id": "/entities/0bd754bc-3d6b-46ea-8dd3-af02ef06a3b9",
      "label": "<i>Enterprise</i>",
      "type": "public_event",
      "short_display": "<span><i>Enterprise</i> (1933-12-07).</span>",
      "description": "Thundercats <i>poutine mustache cred</i> echo.",
      "clean_label": "Enterprise",
      "clean_description": "Thundercats poutine mustache cred echo.",
      "date": "1933-12-07"
    },
    {
      "id": "/entities/0be2c0df-b9b4-4fdf-99f6-f8a8a2343210",
      "label": "<i>Flargathon</i>",
      "type": "organization",
      "short_display": "<span><i>Flargathon</i>, Miz Cracker.</span>",
      "description": "Kale chips salvia ethical paleo kickstarter mustache godard seitan butcher.",
      "clean_label": "Flargathon",
      "clean_description": "Kale chips salvia ethical paleo kickstarter mustache godard seitan butcher.",
      "alternate_spellings": [
        "Miz Cracker"
      ],
      "profile": "Three thousand years of beautiful tradition, from Moses to Sandy Koufax."
    }
  ],
  "aggs": {
    "e_type": {
      "doc_count_error_upper_bound": 0,
      "sum_other_doc_count": 0,
      "buckets": [
        {
          "key": "place",
          "doc_count": 157
        },
        {
          "key": "person",
          "doc_count": 99
        },
        {
          "key": "publication",
          "doc_count": 62
        },
        {
          "key": "organization",
          "doc_count": 57
        },
        {
          "key": "attendance",
          "doc_count": 55
        },
        {
          "key": "music",
          "doc_count": 47
        },
        {
          "key": "production",
          "doc_count": 42
        },
        {
          "key": "writing",
          "doc_count": 41
        },
        {
          "key": "translating",
          "doc_count": 38
        },
        {
          "key": "work_of_art",
          "doc_count": 38
        },
        {
          "key": "public_event",
          "doc_count": 33
        },
        {
          "key": "reading",
          "doc_count": 30
        }
      ]
    }
  },
  "meta": {
    "page": 1,
    "per_page": 25,
    "page_count": 28,
    "total_count": 699,
    "links": {
      "self": "http://example.org/entities?page=1",
      "last": "http://example.org/entities?page=28",
      "next": "http://example.org/entities?page=2"
    }
  }
}</pre>
