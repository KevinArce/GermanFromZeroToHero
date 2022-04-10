class LessonInfo {
  final int position;
  final String name;
  final String intro;
  final String iconImage;
  final String description;
  final String sectionLesson;
  final String content;
  final String contentB;
  final String listen;
  final String grammar;
  final String grammartwo;
  final String subject;
  final String verb;
  final String complement;
  final String subjectB;
  final String verbB;
  final String complementB;
  final String subjectC;
  final String verbC;
  final String complementC;
  final String subjectD;
  final String verbD;
  final String complementD;
  final String subjectE;
  final String verbE;
  final String complementE;
  final String example;
  final String translation;
  final String exampleB;
  final String translationB;
  final String exampleC;
  final String translationC;
  final String exampleD;
  final String translationD;
  final String exampleE;
  final String translationE;
  final List<String> images;
  final String question;
  final String questionB;
  final String questionC;
  final String questionD;
  final String choice;
  final String choiceB;
  final String choiceC;
  final String choiceD;
  final String choiceE;
  final String choiceF;
  final String choiceG;
  final String choiceH;
  final String correctAnswer;
  final String correctAnswerB;
  final String correctAnswerC;
  final String correctAnswerD;
  final List<String> questions;
  final List<dynamic> choices;

  LessonInfo(
    this.position, {
    this.name,
    this.intro,
    this.iconImage,
    this.description,
    this.sectionLesson,
    this.content,
    this.contentB,
    this.listen,
    this.grammar,
    this.grammartwo,
    this.subject,
    this.verb,
    this.complement,
    this.subjectB,
    this.verbB,
    this.complementB,
    this.subjectC,
    this.verbC,
    this.complementC,
    this.subjectD,
    this.verbD,
    this.complementD,
    this.subjectE,
    this.verbE,
    this.complementE,
    this.example,
    this.translation,
    this.exampleB,
    this.translationB,
    this.exampleC,
    this.translationC,
    this.exampleD,
    this.translationD,
    this.exampleE,
    this.translationE,
    this.images,
    this.question,
    this.questionB,
    this.questionC,
    this.questionD,
    this.choice,
    this.choiceB,
    this.choiceC,
    this.choiceD,
    this.choiceE,
    this.choiceF,
    this.choiceG,
    this.choiceH,
    this.correctAnswer,
    this.correctAnswerB,
    this.correctAnswerC,
    this.correctAnswerD,
    this.questions,
    this.choices,
  });
}

List<LessonInfo> lessons = [
  LessonInfo(
    1,
    name: "Let's Go! 😎",
    intro: "Take a tour",
    iconImage: 'assets/images/A.png',
    description:
        "Hallo Leute! (Hi guys) In this section you'll learn how to introduce yourself along with some helpful vocab 😉",
    sectionLesson:
        "Hallo, Ich bin Kevin (Hi, I am Kevin) und (and) Ich komme aus (I'm from) Berlin ."
        "\n"
        "\nIch habe (I have) eine kleine (a small) Wohnung (apartment) aber (but) es hat (it has) alles was (all that) Ich brauche (I need)."
        "\n"
        "\nUnd Sie? (And you?) Woher kommen Sie? (Where are you from?)",
    content: "Sprechen Sie (Do you speak) Deutsch (german)?."
        "\n"
        "\nJa (Yes), Ich spreche (I speak) ein bisschen (a bit of) Deutsch (german)."
        "\n",
    listen:
        'Hallo, Ich bin Kevin und Ich komme aus Berlin. Ich habe eine kleine Wohnung aber es hat alles was ich brauche. Und Sie? Woher kommen Sie?',
    grammar: 'Sprechen Sie Deutsch?', //Audio, Listening
    grammartwo: 'Ja, Ich spreche ein bisschen Deutsch!', //Audio, Listening
    contentB:
        "When we're talking for first time to someone, we should use ''Sie'' instead of ''Du'' because is the polite way of doing it"
        "\n"
        "A helpful tip is that whenever you use the polite way, you just need to know the infinitive form of the verb. As an example: "
        "The verb ''Sprechen'' does not need any change when talking politely, Sprechen Sie Deutsch? (Do you speak english?)"
        "\n"
        "As a trick, the way you make sentences in form of questions you just change the word order (At least for now)."
        "\n"
        "''Visiting the Sun On Car''"
        "\n"
        "''V-S-O or C'', meaning Subject Verb and Object or Complement."
        "\n So next time you're struggling with the word order, try to remember your last trip to the Sun in your Tesla!"
        "\n 🌞🚗😎",
    subject: "Ich ",
    verb: "spreche ",
    complement: "ein bisschen Deutsch",
    subjectB: "Du ",
    verbB: "sprichst  ",
    complementB: "Englisch",
    subjectC: "Er / Sie ",
    verbC: "spricht ",
    complementC: "Französisch",
    subjectD: "Wir / Sie ",
    verbD: "sprechen  ",
    complementD: "viele Sprachen",
    subjectE: "Ihr ",
    verbE: "spricht ",
    complementE: "Spanisch",
    example: " Sprechen Sie Deutsch?",
    translation: "Do you speak German?",
    exampleB: " Sprichst du Englisch?",
    translationB: "Do you speak English?",
    exampleC: " Wie geht es Ihnen?",
    translationC: "How are you doing? (formal)",
    exampleD: " Es geht mir gut, danke",
    translationD: "I am fine, thank you",
    exampleE: " Ich liebe Deutschland",
    translationE: "I love Germany",
    images: [
      'https://cdn.pixabay.com/photo/2017/07/02/00/43/bundestag-2463236_960_720.jpg',
      'https://cdn.pixabay.com/photo/2018/11/29/21/19/hamburg-3846525_960_720.jpg',
      'https://cdn.pixabay.com/photo/2013/10/28/18/51/brandenburger-tor-201939_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/12/12/11/37/bastei-bridge-3014467_960_720.jpg'
    ],
    question: "This is a masculine article",
    choice: "Die",
    choiceB: "Das",
    correctAnswer: "Der",
    questionB: "What is the article of the word ''cat'' in german",
    choiceC: "Der",
    choiceD: "Die",
    correctAnswerB: "Die",
    questionC: "Ich habe ___ Hund",
    choiceE: "Einen",
    choiceF: "Eins",
    correctAnswerC: "Einen",
    questionD: "Wir haben eine (small) Katze",
    choiceG: "Klein",
    choiceH: "Kleine",
    correctAnswerD: "Kleine",
    questions: [
      "This animal is a carnivorous reptile.",
      "_________ like to chase mice and birds.",
      "Give a _________ a bone and he will find his way home",
      "A nocturnal animal with some really big eyes",
    ],
    choices: [
      ["Cat", "Sheep", "Alligator", "Cow"],
      ["Cat", "Snail", "Slug", "Horse"],
      ["Mouse", "Dog", "Elephant", "Donkey"],
      ["Spider", "Snake", "Hawk", "Owl"]
    ],
  ),
  LessonInfo(
    2,
    name: '  Food   🥨  ',
    intro: "Driiinks!",
    iconImage: 'assets/images/B.png',
    description: "Ich habe hunger 🥺 ",
    sectionLesson:
        "Möchten Sie (Do you want to) etwas essen (something to eat)?"
        "\n"
        "Möchten Sie (Do you want to) etwas trinken (something to drink)?"
        "\n"
        "Möchten Sie (Do you want to) zu Abend (in the evening) essen (eat)?",
    content: "Möchten Sie (Do you want to) mit (with) mir (me) kommen (to come?"
        "\n"
        "Ja gerne! (Yes gladly), Ich möchte (I would like) mit (with) dir (you) kommen (to come)"
        "\n"
        "Pay attention to the sentence structure!"
        "\n"
        "Möchten (It has to change the ending, depending of the Subject) + Subject + Action"
        "\n"
        "Later we'll see ''Würde'' which has a similar meaning (Would you like).",
    listen:
        'Möchten Sie etwas Essen?... Möchten Sie etwas trinken?... Möchten Sie zu Abend essen?',
    grammar: 'Möchten Sie mit mir kommen?', //Audio, Listening
    grammartwo: 'Ja gerne!, Ich möchte mit dir kommen', //Audio, Listening
    contentB:
        "The verb ''Essen'' means 'to eat' but it also means 'meal' and it can be used in a variarity of sentences in our dialy life. "
        "\n"
        "As a example you can say ''Er (He) muss (must) das Essen (the meal) machen (make/prepare)''."
        "\n"
        "Normaly you'll habe three meals in the day and this are: "
        "\n"
        "- das Frühstück 🥞🍳🥛 (the Breakfast)"
        "\n"
        "- das Mittagessen 🍔🍟🥤(the Lunch)"
        "\n"
        "- das Abendessen 🍝🧃 (the Dinner)"
        "\n"
        "You can say ''Ich habe Hunger'' and your mom will know that you're hungry 😆.",
    subject: "Ich ",
    verb: "esse ",
    complement: "einen Apfel",
    subjectB: "Du ",
    verbB: "isst ",
    complementB: "ein Hamburger",
    subjectC: "Er / Sie ",
    verbC: "isst ",
    complementC: "ein Salat",
    subjectD: "Wir / Sie ",
    verbD: "essen ",
    complementD: "eine Banane",
    subjectE: "Ihr ",
    verbE: "habt ",
    complementE: "eine Frucht",
    example: " Was möchten Sie essen?",
    translation: "What do you want to eat?",
    exampleB: " Ich möchte Pizza essen",
    translationB: "I want to eat Pizza",
    exampleC: " Wann möchten Sie essen?",
    translationC: "When do you want to eat?",
    exampleD: " Ich möchte bei 02.00 essen",
    translationD: "I want to eat at 2pm",
    exampleE: " Ich möchte Wasser trinken",
    translationE: "I want to drink water",
    images: [
      'https://cdn.pixabay.com/photo/2017/12/20/19/34/bratwurst-3030529_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/01/24/03/58/cheese-noodles-609776_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/09/24/20/36/beer-barrel-956322_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/07/17/13/50/sauerbraten-2512441_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/06/06/22/46/mediterranean-cuisine-2378758_960_720.jpg',
    ],
    question: "This is a masculine article",
    choice: "Die",
    choiceB: "Das",
    correctAnswer: "Der",
    questionB: "",
    choiceC: "Der",
    choiceD: "Dem",
    correctAnswerB: "",
    questionC: "",
    choiceE: "",
    choiceF: "",
    correctAnswerC: "",
    questionD: "",
    choiceG: "",
    choiceH: "",
    correctAnswerD: "",
    questions: [
      "This animal is a carnivorous reptile.",
      "_________ like to chase mice and birds.",
      "Give a _________ a bone and he will find his way home",
      "A nocturnal animal with some really big eyes",
    ],
    choices: [
      ["Cat", "Sheep", "Alligator", "Cow"],
      ["Cat", "Snail", "Slug", "Horse"],
      ["Mouse", "Dog", "Elephant", "Donkey"],
      ["Spider", "Snake", "Hawk", "Owl"]
    ],
  ),
  LessonInfo(
    3,
    name: 'Animals 🐶🐱',
    intro: "I love Puppies ❤",
    iconImage: 'assets/images/C.png',
    description: 'Ich liebe Tiere! 😊',
    sectionLesson: "Haben sie (Do you have) Haustiere (pets)?",
    content: "Haben Sie (Do you have) einen Hund (a dog)?"
        "\n"
        "Nein, aber (but) ich werde (I'm going to) einen Hund (a dog) bald (soon) haben (have)"
        "\n"
        "Super!. Mögen Sie (Do you like) Katzen (cats)?"
        "\n"
        "Ich mag (I like) Hunde (dogs) mehr als (more than) Katzen (cats)",
    listen: "Haben Sie einen Hund? ",
    grammar: 'Mögen Sie Katzen?', //Audio Listening
    grammartwo: 'Ich mag Hunde mehr als Katzen', //Audio Listening
    contentB: "The verb ''Haben'' means ''to have''. "
        "\n"
        "A helpuful trick is that whenever you're using A VERB, after of this you'll have to modified the article and the adjetive"
        "\n"
        "For example: "
        "\n"
        "- Ich habe einEN Hund 🐶 (I have a dog)"
        "\n"
        "- Ich habe einEN braunEN Hund 🐕 (I have a brown dog)"
        "\n"
        "It's really important that you remember the gender of the article (masculine, femenine or neuter)"
        "\n"
        "Because that determinate the ending of the particle. In the example the gender is masculine hence the ending is in -EN"
        "\n"
        "When is Femenine the ending DOES NOT CHANGE! 🥳"
        "\n"
        "Ich habe eine Katze 😸 (I have a cat)"
        "\n"
        "-Ich habe einE kleinE Katze 🐈 (I have a small cat)"
        "\n"
        "When is Neuter the ending DOES NOT CHANGE! 🥳"
        "\n"
        "Ich habe ein Haustier 🐶😸🐇 (I have a pet)"
        "\n"
        "Please check out the Grammar Section to get in deep with it 😎"
        "As you can see, it's easier than you were thinking! 😃",
    subject: "Ich ",
    verb: "habe ",
    complement: "einen Hund",
    subjectB: "Du ",
    verbB: "hast ",
    complementB: "eine Katze",
    subjectC: "Er / Sie ",
    verbC: "hat ",
    complementC: "ein Haustier ",
    subjectD: "Wir / Sie ",
    verbD: "haben ",
    complementD: "einen Vogel",
    subjectE: "Ihr ",
    verbE: "habt ",
    complementE: "ein Kaninchen",
    example: " Ich habe einen Hund und eine Katze",
    translation:
        "I have a dog (''der Hund'', masculine) and (und) a cat (''die Katze'', femenine)",
    exampleB: " Ich habe auch einEN Hund und einE Katze",
    translationB:
        "I also have a dog (''der Hund'', masculine) and (und) a cat (''die Katze'', femenine)",
    exampleC: " Er hat einE weißE Katze und Sie hat einEN schwarzEN Hund",
    translationC: "He has a white cat and she has a black dog",
    exampleD: " Wir haben einE tollE Zeit!",
    translationD: "We are having a great time! ",
    exampleE: " Ihr habt ein kleines Kaninchen",
    translationE: "You (plural) have a little rabbit",
    images: [
      'https://cdn.pixabay.com/photo/2018/08/12/16/59/ara-3601194_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/10/01/10/44/hedgehog-468228_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/12/13/00/13/rabbit-1903016_960_720.jpg'
    ],
    question: "This is a masculine article",
    choice: "Die",
    choiceB: "Das",
    correctAnswer: "Der",
    questionB: "",
    choiceC: "Der",
    choiceD: "Dem",
    correctAnswerB: "",
    questionC: "",
    choiceE: "",
    choiceF: "",
    correctAnswerC: "",
    questionD: "",
    choiceG: "",
    choiceH: "",
    correctAnswerD: "",
  ),
  LessonInfo(
    4,
    name: ' Places   🏟  ',
    intro: "Deutschland",
    iconImage: 'assets/images/D.png',
    description: 'Ich komme aus ... 🌌🪐🌏',
    sectionLesson: "Wo ist (Where is) der Bahnhof 🚄 (the train station)?"
        "\n"
        "Entschuldigung (Excuse me / Sorry),"
        "\n"
        "können Sie (could you) mir (to me) bitte (please) helfen (help)? 🥺",
    content: "Wo ist der Bahnhof?"
        "\n"
        "Der Bahnhof befindet sich am Ende der Straße",
    listen:
        'Wo ist der Bahnhof?... Entschuldigung, können Sie mir bitte helfen?',
    grammar: 'Wo ist der Bahnhof?',
    grammartwo: 'Der Bahnhof befindet sich am Ende der Straße',
    contentB:
        "When we talk about places and locations, we can use this adjetives",
    subject: "Ich ",
    verb: "komme",
    complement: " aus Kanada",
    subjectB: "Du ",
    verbB: "kommst ",
    complementB: "aus Deutschland",
    subjectC: "Er / Sie ",
    verbC: "kommt ",
    complementC: "aus USA ",
    subjectD:
        "Wir / Sie ", //I have to change this... Gotta be two fiels more, one for Sie, and the other for Wir
    verbD: "kommen ",
    complementD: "von der Erde",
    subjectE: "Ihr ",
    verbE: "kommt ",
    complementE: "Ihr kommt aus Mexiko",
    example: " Wo ist das Museum?",
    translation: "Where is the museum",
    exampleB: " Wo ist das beste Restaurant der Stadt?",
    translationB: " Where's the best restaurant in town?",
    exampleC: " Woher kommt er?",
    translationC: "Where does he comes from?",
    exampleD: " Er kommt aus Deutschland",
    translationD: "He comes from Germany",
    exampleE: " Wir essen Pizza im besten Restaurant",
    translationE: "We are eating pizza in the best restaurant",
    images: [
      'https://cdn.pixabay.com/photo/2015/12/05/19/49/cologne-1078671_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/11/06/23/51/frankfurt-1804481_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/04/19/21/47/hamburg-1340004_960_720.jpg',
      'https://cdn.pixabay.com/photo/2017/11/12/13/34/bastei-2942474_960_720.jpg'
    ],
    question: "QuestionPlaces One Places",
    choice: "Die",
    choiceB: "Das",
    correctAnswer: "Der",
    questionB: "",
    choiceC: "Der",
    choiceD: "Dem",
    correctAnswerB: "",
    questionC: "",
    choiceE: "",
    choiceF: "",
    correctAnswerC: "",
    questionD: "",
    choiceG: "",
    choiceH: "",
    correctAnswerD: "",
  ),
];
