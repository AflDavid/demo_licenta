import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Contacte'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center( // Center the Column containing ContactCards
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Contacts
              ContactCard(
                phoneNumber: '+40 359 405 603',
                description: 'Teologie',
              ),
              ContactCard(
                phoneNumber: '+40 259.426.692',
                description: 'Management',
              ),
              ContactCard(
                phoneNumber: '+40 741 123 914',
                description: 'Administrație campus',
                contactName: 'Dorel Tiutiu',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Image.asset(
          'images/UEOlung.png', // Adjust the path to your image
          width: 200, // Adjust the width as needed
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String phoneNumber;
  final String description;
  final String? contactName;

  const ContactCard({
    required this.phoneNumber,
    required this.description,
    this.contactName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (contactName != null) ...[
            Text(
              contactName!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 6),
          ],
          Text(
            'Telefon: $phoneNumber',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Descriere: $description',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
