# DevFolio App — Carteira & Portfólio do Desenvolvedor Mobile

Projeto da disciplina **Programação para Dispositivos Móveis (PPDM) — Turma t2dev-t3**.

Aplicativo Flutter (Material 3) com duas telas: **Perfil & Crachá** e **Dashboard de Projetos & Métricas**.

**Autor(es):** Miguel Almeida e Júlia Duarte Caetano

## Arquitetura

- `lib/main.dart`: Tema global Material 3 + `NavigationBar`
- `lib/screens/tela_perfil.dart`: Tela 01 — Perfil & Crachá da Dupla
- `lib/screens/tela_dashboard.dart`: Tela 02 — Dashboard de Projetos & Métricas

### Componentes em `lib/widgets/`

| Componente | Arquivo | Descrição técnica | Widgets principais |
|---|---|---|---|
| `TituloSecao` | `titulo_secao.dart` | Cabeçalho de seção com ícone e texto expansível. | `Row`, `Icon`, `Expanded`, `Text` |
| `ListaHabilidades` | `lista_habilidades.dart` | Lista responsiva de habilidades com quebra automática. | `Wrap`, `Chip` |
| `CrachaPerfil` | `cracha_perfil.dart` | Crachá com avatar circular, gradiente, borda e dados dos integrantes. | `Container`, `LinearGradient`, `CircleAvatar` |
| `BlocoEstatistica` | `bloco_estatistica.dart` | Card de métrica com elevação e selo sobreposto opcional. | `Card(elevation)`, `Stack`, `Positioned` |
| `CardProjeto` | `card_projeto.dart` | Card de projeto com tecnologias, progresso e destaque sobreposto. | `Card(elevation)`, `Stack`, `Positioned`, `Wrap` |

## Capturas de tela (porta 8080)

| Perfil & Crachá | Dashboard |
|---|---|
| ![Tela de Perfil](screenshots/01_perfil.png) | ![Tela de Dashboard](screenshots/02_dashboard.png) |
