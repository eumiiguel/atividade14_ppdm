import 'package:material_ui/material_ui.dart';

class ListaHabilidades extends StatelessWidget {
  const ListaHabilidades({super.key, required this.habilidades});

  final List<String> habilidades;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final habilidade in habilidades)
          Chip(
            avatar: const Icon(Icons.check_circle_outline, size: 18),
            label: Text(habilidade),
          ),
      ],
    );
  }
}
