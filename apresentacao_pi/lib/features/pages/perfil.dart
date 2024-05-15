import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

 @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('assets/profile-pic.png'),
            ),
            Text(
              'Douglas Hugo',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Text(
              "Estudante de Desenvolvimento de Software Multiplataforma pela FATEC Araras. Atualmente trabalho como Analista de Projetos, com experiências em metodologias ágeis, Administração e desenvolvimento de projetos na plataforma JIRA.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}