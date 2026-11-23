import 'package:material_ui/material_ui.dart';

class BlocoEstatistica extends StatelessWidget {
  const BlocoEstatistica({
    super.key,
    required this.icone,
    required this.valor,
    required this.rotulo,
    this.selo,
  });

  final IconData icone;
  final String valor;
  final String rotulo;
  final String? selo;

  @override
  Widget build(BuildContext context) {
    final esquema = Theme.of(context).colorScheme;
    final textos = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, selo == null ? 12 : 28, 12, 12),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icone, size: 30, color: esquema.primary),
                      const SizedBox(height: 6),
                      Text(
                        valor,
                        style: textos.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(rotulo, style: textos.bodyMedium),
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (selo != null)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: esquema.tertiary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  selo!,
                  style: TextStyle(
                    color: esquema.onTertiary,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
