import 'package:flutter/material.dart';

class ReguliPage extends StatelessWidget {
  const ReguliPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Reguli Campus'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                RuleText(text: '1. Accesul băieților pe palierul și în camerele fetelor, respectiv accesul fetelor pe palierul și în camerele băieților este INTERZIS.'),
                RuleText(text: '2. Accesul sau păstrarea campusului după ora 22:30, fără aprobarea pedagogului, este INTERZISĂ.'),
                RuleText(text: '3. Se INTERZICE rămânerea pe coridoare după ora 22:30.'),
                RuleText(text: '4. Se INTERZICE păstrarea luminii aprinse în camere după ora 22:30, respectiv 23:00 în zilele de vineri, sâmbătă și duminică. Studenților li se cere să se afle în camerele lor cu lumina stinsă în tot apartamentul, fie în una din sălile de studiu M1, M3, M7 până la ora 1. În cazul nerespectării se aplică penalizări.'),
                RuleText(text: '5. Se INTERZICE accesul în campus cu țigări, băuturi alcoolice, muzică și literatură care sunt străine de spiritul conduitei creștine.'),
                RuleText(text: '6. Se INTERZICE folosirea obiectelor de inventar în alte scopuri decât cele pentru care au fost destinate.'),
                RuleText(text: '7. Se INTERZICE comercializarea de bunuri în incinta campusului.'),
                RuleText(text: '8. Se INTERZICE folosirea de încălzitoare electrice sau a altor aparate de gătit în camere (cu excepția fierbătoarelor de ceai).'),
                RuleText(text: '9. Se INTERZICE aducerea de televizoare în spațiul de locuit.'),
                RuleText(text: '10. Se INTERZICE păstrarea alimentelor alterabile în camere și consumarea hranei în alte locuri decât cele prevăzute.'),
                RuleText(text: '11. Se INTERZICE intervenția asupra camerei fără știrea administratorului (ornări, mutări, afișări, demontări, bătut de cuie, etc.).'),
                RuleText(text: '12. Se INTERZICE aruncarea în vasul toaletei a unor lucruri sau obiecte care pot cauza blocaje în scurgerea apei.'),
                RuleText(text: '13. Se INTERZICE studiul la instrumente muzicale și jocuri sportive între orele 22:00 - 07:00. Excepție fac studenții de la Muzică care pot studia la instrumente muzicale în sălile de curs din corpul C până la ora 01:00.'),
                RuleText(text: '14. Se INTERZICE organizarea de petreceri neautorizate de conducerea Universității.'),
                RuleText(text: '15. Se INTERZICE plecarea pe mai multe zile din cămin fără înregistrarea prealabilă a studentului. Orice întârziere a studentului va fi anunțată.'),
                RuleText(text: '16. Se INTERZICE accesul vizitatorilor fără acordul administrației.'),
                RuleText(text: '17. Se INTERZICE accesul în incita campusului cu animale de companie.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RuleText extends StatelessWidget {
  final String text;

  const RuleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
