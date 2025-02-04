import 'dart:convert';
import 'dart:io';

import 'package:devfolio/components/footer.dart';
import 'package:devfolio/components/nav_bar.dart';
import 'package:devfolio/models/data.dart';
import 'package:devfolio/sections/experiences.dart';
import 'package:jaspr/server.dart';

class Experience extends AsyncStatelessComponent {
  Future<Data> fetchData() async {
    final String fileResponse =
        File('${Directory.current.path}/web/data/data.json').readAsStringSync();
    final Map<String, dynamic> raw =
        jsonDecode(fileResponse) as Map<String, dynamic>;

    final data = Data.fromJson(raw);
    return data;
  }

  @override
  Stream<Component> build(BuildContext context) async* {
    final data = await fetchData();

    yield div(classes: 'experience-body', [
      NavBar(),
      ExperienceSection(
        experiences: data.experiences,
      ),
      Footer(),
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.experience-body')
        .box(
          width: 100.vw,
        )
        .background(
          color: Colors.black,
        ),
  ];
}
