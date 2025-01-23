import 'package:quizapp/model/quizModel.dart';

QuizModel loadQuestion(int questionIndex) {
  List<QuizModel> questionList = [
    QuizModel("Das flächenmäßig kleinste Bundesland heißt? ",
        "Bremen",
        ["Berlin", "Saarland", "Hamburg"]),
    QuizModel("Was bedeutet das lateinische “carpe diem”? ",
        "Nutze den Tag",
        [
          "Genieße den Tag",
          "Dein Tag wird toll werden",
          "Man sieht sich immer zweimal im Leben"
        ]),
    QuizModel("Was ist die “Goldene Himbeere”? ",
        "Ein Preis für die schlechteste Leistung innerhalb eines Filmjahres",
        [
          "Eine Nachspeise aus Russland",
          "Das teuerste Schmuckstück der Welt",
          "Das Symbol einer Sekte"
        ]),
    QuizModel("Welcher deutsche Herrscher trug den Beinamen “der Große”? ",
        "Friedrich II. von Preußen",
        [
          "Friedrich der I. von Preußen",
          "Friedrich der III. von Sachsen",
          "Friedrich der III. von Österreich"
        ]),
    QuizModel("Welcher Pilz ist einer der giftigsten der Welt? ",
        "Der Grüne Knollenblätterpilz",
        [
          "Der Fliegenpilz",
          "Der Gemeine Kartoffelbovist",
          "Der Satansröhrling"
        ]),
    QuizModel("Welche Gürtelfarbe existiert nicht im Kampfsport Karate? ",
        "Rot",
        ["Schwarz", "Weiß", "Braun"]),
    QuizModel("Einen Feinschmecker nennt man auch? ",
        "Gourmet",
        ["Gourmed", "Genießer", "Leckermäulchen"]),
    QuizModel("Welche Insel gehört nicht zu den balearischen Inseln? ",
        "Gran Canaria",
        ["Ibiza", "Formentera", "Cabrera"]),
    QuizModel(
        "Welcher Schauspieler hat nicht in einem James Bond-Film mitgespielt? ",
        "Leonardo DiCaprio",
        ["Timothy Dalton", "Daniel Craig", "Javier Bardem"]),
    QuizModel(
        "Mit welcher Tiergruppe sind die Dinosaurier am engsten verwandt? ",
        "Vögeln",
        ["Eidechsen", "Alligatoren", "Affen"]),
    QuizModel("Welches Metall leitet Wärme am besten? ",
        "Silber",
        ["Kupfer", "Gold", "Aluminium"]),
  ];
  return questionList[questionIndex];
}