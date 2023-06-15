import 'package:flutter/material.dart';
import 'package:projetos_flutter/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: Container(),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Tasks(
                  'Estudar Flutter',
                  'assets/images/imagem1.png',
                  3),
            ),
            Tasks(
                'Andar de Bike',
                'assets/images/imagem2.png',
                2),
            Tasks(
                'Ler',
                'assets/images/imagem4.png',
                4),
            Tasks(
                'Meditar',
                'assets/images/imagem3.png',
                5),
            Tasks(
              'Jogar',
              'assets/images/imagem5.png',
              1,
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
