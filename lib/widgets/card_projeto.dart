import 'package:material_ui/material_ui.dart';

class CardProjeto extends StatelessWidget {
  const CardProjeto({
    super.key,
    required this.titulo,
    required this.descricao,
    required this.tecnologias,
    required this.progresso,
    this.destaque,
  });

  final String titulo;
  final String descricao;
  final List<String> tecnologias;
  final double progresso;
  final String? destaque;

  @override
  Widget build(BuildContext context) {
    final esquema = Theme.of(context).colorScheme;
    final textos = Theme.of(context).textTheme;
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: destaque == null ? 0 : 100),
                  child: Text(
                    titulo,
                    style: textos.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(descricao, style: textos.bodyMedium),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (final tecnologia in tecnologias)
                      Chip(
                        label: Text(tecnologia),
                        visualDensity: VisualDensity.compact,
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        value: progresso,
                        minHeight: 8,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text('${(progresso * 100).round()}%'),
                  ],
                ),
              ],
            ),
          ),
          if (destaque != null)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: esquema.tertiary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, size: 14, color: esquema.onTertiary),
                    const SizedBox(width: 4),
                    Text(
                      destaque!,
                      style: TextStyle(
                        color: esquema.onTertiary,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
