import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Colégio Pipa',
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18),
            Text(
              "Nosso aplicativo oferece uma solução completa para instituições educacionais, facilitando a integração entre professores e alunos. Com uma interface intuitiva e recursos avançados, o aplicativo promove uma comunicação clara e eficaz dentro da comunidade escolar. A integração de calendários e lembretes ajuda a manter todos os envolvidos atualizados sobre datas importantes, eventos e prazos. Além disso, nosso aplicativo oferece recursos de avaliação e feedback, facilitando o processo de aprendizagem e desenvolvimento dos alunos. Com o nosso sistema escolar, pretendemos promover uma experiência educacional mais colaborativa, dinâmica e eficiente para alunos e educadores.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
