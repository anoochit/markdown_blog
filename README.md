# Markdown Web Site

Config your site in `lib/const.dart`.

Create a markdown file in `assets/contents` directory, use timestamp as filename eg; 202403140600.md

Generate site data using command

```bash
dart bin/gen.dart
```

Then build Fullter web

```bash
flutter build web
```

You can use GitHub Page, Globe, Firebase Hosting as a hosting for your web.

![](/screenshots/screenshot01.png)

![](/screenshots/screenshot02.png)
