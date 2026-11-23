import 'package:material_ui/material_ui.dart';

class CrachaPerfil extends StatelessWidget {
  const CrachaPerfil({
    super.key,
    required this.nome,
    required this.cargo,
    required this.turma,
    required this.integrantes,
    required this.email,
    required this.github,
  });

  final String nome;
  final String cargo;
  final String turma;
  final List<String> integrantes;
  final String email;
  final String github;

  String get _iniciais {
    final partes = nome
        .trim()
        .split(RegExp(r'\s+'))
        .where((p) => p.isNotEmpty)
        .toList();
    if (partes.isEmpty) return '?';
    if (partes.length == 1) return partes.first[0].toUpperCase();
    return (partes.first[0] + partes.last[0]).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final esquema = Theme.of(context).colorScheme;
    final textos = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [esquema.primary, esquema.tertiary],
        ),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white.withAlpha(190), width: 3),
        boxShadow: [
          BoxShadow(
            color: esquema.primary.withAlpha(100),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 52,
              backgroundColor: esquema.primaryContainer,
              child: Text(
                _iniciais,
                style: textos.displaySmall?.copyWith(
                  color: esquema.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            nome,
            textAlign: TextAlign.center,
            style: textos.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            cargo,
            textAlign: TextAlign.center,
            style: textos.titleMedium?.copyWith(
              color: Colors.white.withAlpha(220),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(45),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withAlpha(120)),
            ),
            child: Text(
              turma,
              textAlign: TextAlign.center,
              style: textos.labelLarge?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          Divider(color: Colors.white.withAlpha(90)),
          const SizedBox(height: 8),
          for (final integrante in integrantes)
            _LinhaInfo(icone: Icons.person, texto: integrante),
          _LinhaInfo(icone: Icons.email_outlined, texto: email),
          _LinhaInfo(icone: Icons.link, texto: github),
        ],
      ),
    );
  }
}

class _LinhaInfo extends StatelessWidget {
  const _LinhaInfo({required this.icone, required this.texto});

  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, size: 18, color: Colors.white),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              texto,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
