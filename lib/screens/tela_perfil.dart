import 'package:material_ui/material_ui.dart';
import '../widgets/cracha_perfil.dart';
import '../widgets/lista_habilidades.dart';
import '../widgets/titulo_secao.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  static const List<String> _habilidades = [
    'Flutter',
    'Dart',
    'Material 3',
    'Git & GitHub',
    'Linux / SSH',
    'MySQL',
    'REST APIs',
    'Firebase',
    'UI/UX',
    'Clean Code',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: const [
              CrachaPerfil(
                nome: 'Miguel Almeida',
                cargo: 'Desenvolvedor Mobile Flutter',
                turma: 'PPDM • Turma t2dev-t3',
                integrantes: ['Miguel Almeida • Integrante 01'],
                email: 'miguel.almeida@aluno.senai.br',
                github: 'github.com/miguel-almeida',
              ),
              SizedBox(height: 16),
              CrachaPerfil(
                nome: 'Júlia Duarte Caetano',
                cargo: 'Desenvolvedora Mobile Flutter',
                turma: 'PPDM • Turma t2dev-t3',
                integrantes: ['Júlia Duarte Caetano • Integrante 02'],
                email: 'julia.d.caetano@aluno.senai.br',
                github: 'github.com/julia-duarte',
              ),
              SizedBox(height: 24),
              TituloSecao(icone: Icons.code, titulo: 'Habilidades da Dupla'),
              SizedBox(height: 12),
              ListaHabilidades(habilidades: _habilidades),
            ],
          ),
        ),
      ),
    );
  }
}
