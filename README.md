# learn_flutter_app

这是一个学习App

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

##  intl_translation 命令

intl_translation生成语言包。第十八课详细介绍
生成基本模板->复制模板，修改名称比如 i18n里面的intl_*.arb
flutter pub run intl_translation:extract_to_arb --output-dir=lib/i18n/ lib/chapter18/LangDemo2.dart

flutter pub run intl_translation:generate_from_arb --generated-file-prefix=lang_ --output-dir=lib/i18n --no-use-deferred-loading lib/chapter18/LangDemo2.dart lib/i18n/intl_*.arb