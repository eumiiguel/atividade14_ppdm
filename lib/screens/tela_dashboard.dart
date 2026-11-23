import 'package:material_ui/material_ui.dart';
import '../widgets/bloco_estatistica.dart';
import '../widgets/card_projeto.dart';
import '../widgets/titulo_secao.dart';

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: LayoutBuilder(
            builder: (context, restricoes) {
              final colunas = restricoes.maxWidth >= 700 ? 4 : 2;
              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const TituloSecao(icone: Icons.insights, titulo: 'Métricas'),
                  const SizedBox(height: 12),
                  GridView.count(
                    crossAxisCount: colunas,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1.25,
                    children: const [
                      BlocoEstatistica(
                        icone: Icons.folder_copy,
                        valor: '12',
                        rotulo: 'Projetos',
                        selo: 'NOVO',
                      ),
                      BlocoEstatistica(
                        icone: Icons.commit,
                        valor: '248',
                        rotulo: 'Commits',
                      ),
                      BlocoEstatistica(
                        icone: Icons.widgets,
                        valor: '18',
                        rotulo: 'Widgets',
                      ),
                      BlocoEstatistica(
                        icone: Icons.language,
                        valor: '5',
                        rotulo: 'Linguagens',
                      ),
                      BlocoEstatistica(
                        icone: Icons.task_alt,
                        valor: '7',
                        rotulo: 'Entregas',
                      ),
                      BlocoEstatistica(
                        icone: Icons.emoji_events,
                        valor: '9.5',
                        rotulo: 'Nota média',
                        selo: 'TOP',
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const TituloSecao(
                    icone: Icons.rocket_launch,
                    titulo: 'Projetos',
                  ),
                  const SizedBox(height: 12),
                  const CardProjeto(
                    titulo: 'DevFolio App',
                    descricao:
                        'Carteira e portfólio do desenvolvedor mobile com crachá, habilidades e métricas.',
                    tecnologias: ['Flutter', 'Dart', 'Material 3'],
                    progresso: 0.9,
                    destaque: 'DESTAQUE',
                  ),
                  const SizedBox(height: 12),
                  const CardProjeto(
                    titulo: 'App de Tarefas',
                    descricao: 'Lista de tarefas com categorias e prazos.',
                    tecnologias: ['Flutter', 'SQLite'],
                    progresso: 0.65,
                  ),
                  const SizedBox(height: 12),
                  const CardProjeto(
                    titulo: 'Catálogo de Receitas',
                    descricao: 'Consumo de API REST com busca e favoritos.',
                    tecnologias: ['Dart', 'REST', 'Provider'],
                    progresso: 0.4,
                    destaque: 'EM ALTA',
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
