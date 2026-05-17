# 📱 To Do List with Flutter

Um aplicativo moderno e intuitivo de gerenciamento de tarefas desenvolvido com Flutter. Com uma interface elegante em tema escuro, progresso visual em tempo real e interações suaves, este app torna o gerenciamento de tarefas uma experiência agradável.

## ✨ Características

- **✅ Adicionar tarefas**: Crie novas tarefas através de um modal elegante
- **☑️ Marcar como concluído**: Marque tarefas como concluídas com uma animação satisfatória
- **🗑️ Deletar tarefas**: Remova tarefas com um clique
- **📊 Indicadores de progresso**: 
  - Percentual de conclusão em tempo real
  - Barra de progresso linear animada
  - Contador de tarefas concluídas
- **🎨 Design moderno**: Interface com tema escuro, gradientes e animações suaves
- **⚡ Animações fluidas**: Transições elegantes ao adicionar, completar ou deletar tarefas
- **📲 Feedback háptico**: Vibrações ao interagir com tarefas
- **💨 Interface responsiva**: Totalmente adaptável para diferentes tamanhos de tela

## 🎯 Funcionalidades Principais

### Adicionar Tarefa
- Toque no botão flutuante "Nova tarefa"
- Digite a descrição da tarefa
- Pressione Enter ou toque em "Adicionar tarefa"
- A tarefa aparece no topo da lista com animação

### Marcar Tarefa como Concluída
- Toque no círculo à esquerda da tarefa
- A tarefa recebe um check animado
- Tarefas concluídas são automaticamente movidas para o final da lista
- O progresso é atualizado em tempo real

### Deletar Tarefa
- Toque no ícone "X" à direita da tarefa
- A tarefa é removida da lista
- O progresso é recalculado automaticamente

### Acompanhar Progresso
- Visualize o percentual de conclusão em um círculo com progresso
- Acompanhe a barra de progresso linear
- Veja quantas tarefas foram concluídas: "X de Y concluídas"

## 🏗️ Estrutura do Projeto

```
lib/
├── main.dart                 # Configuração principal da aplicação
├── models/
│   └── task.dart            # Modelo de dados da tarefa
├── screens/
│   └── home_screen.dart     # Tela principal da aplicação
└── widgets/
    └── task_tile.dart       # Widget individual de tarefa
```

### Modelo de Dados

**Task**
```dart
class Task {
  String title;        // Título da tarefa
  bool isDone;         // Status de conclusão
}
```

## 🎨 Design & Tema

- **Paleta de Cores**:
  - Fundo primário: `#0D0D1A`
  - Superfície: `#1A1A2E`
  - Destaque (Verde Neon): `#00F5A0`
  - Secundário (Roxo): `#7B61FF`

- **Tipografia**: Material 3 com material.io design patterns
- **Animações**: Transições suaves de 250-500ms com curvas Bezier

## 🚀 Configuração e Execução

### Pré-requisitos

- Flutter SDK 3.11.4 ou superior
- Dart 3.11.4 ou superior
- Um dispositivo físico ou emulador Android/iOS/Web

### Instalação

1. Clone o repositório:
```bash
git clone <url-do-repositorio>
cd to_do_list_with_flutter
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Inicie a aplicação:
```bash
flutter run
```

### Compilar para Release

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web --release
```

## 📦 Dependências

- **flutter**: Framework base para desenvolvimento multiplataforma
- **cupertino_icons**: Ícones estilo iOS/Material
- **flutter_lints**: Análise de código estática

Veja `pubspec.yaml` para mais detalhes.

## 🔧 Funcionalidades Técnicas

### Estado & Gerenciamento

O aplicativo usa `StatefulWidget` para gerenciar o estado das tarefas:
- **addTask()**: Adiciona nova tarefa no topo da lista
- **toggleTask()**: Marca/desmarca tarefa e reorganiza a lista
- **deleteTask()**: Remove tarefa da lista
- **getters de progresso**: Calculam progresso em tempo real

### Animações

- **AnimatedContainer**: Transições de estado visual das tarefas
- **LinearProgressIndicator**: Barra de progresso animada
- **CircularProgressIndicator**: Indicador circular com percentual
- **AnimatedDefaultTextStyle**: Mudanças de estilo com transição
- **AnimatedSwitcher**: Transição ao adicionar/remover tarefas

### Interatividade

- **Feedback háptico**: 
  - `lightImpact()`: Ao marcar/desmarcar tarefa
  - `mediumImpact()`: Ao deletar tarefa
- **Bottom Sheet**: Modal para adicionar novas tarefas com controle de inset de teclado
- **Gestures**: GestureDetector para interações customizadas

## 💡 Dicas de Uso

- Pressione Enter ao digitar uma tarefa para adicioná-la rapidamente
- Tarefas concluídas são automaticamente movidas para o final
- O progresso é calculado em tempo real conforme você completa tarefas
- Use o indicador circular para motivação visual

## 🐛 Troubleshooting

**Problema**: Aplicação não inicia
- **Solução**: Execute `flutter clean` e depois `flutter pub get`

**Problema**: Animações lentas
- **Solução**: Desative modo debug: `flutter run --release`

**Problema**: Erro de dependências
- **Solução**: Execute `flutter pub upgrade`

## 📝 Notas

- Todas as tarefas são armazenadas apenas na memória (não persistem após fechar o app)
- Para adicionar persistência, considere integrar SQLite, Hive ou Firebase

## 🚧 Possíveis Melhorias Futuras

- [ ] Persistência local com SQLite ou Hive
- [ ] Sincronização com Firebase
- [ ] Categorias ou tags de tarefas
- [ ] Datas e lembretes
- [ ] Edição de tarefas existentes
- [ ] Dark/Light mode toggle
- [ ] Tema customizável
- [ ] Busca e filtro de tarefas

## 📄 Licença

Este projeto está disponível sob a licença MIT.

## 👤 Autor

Desenvolvido com ❤️

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se livre para abrir issues ou pull requests para melhorias e correções.

---

**Desenvolvido com Flutter** 🚀
