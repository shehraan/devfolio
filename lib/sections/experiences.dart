import 'package:devfolio/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

@client
class ExperienceSection extends StatelessComponent {
  final List<Map<String, String>> experiences;

  const ExperienceSection({
    super.key,
    required this.experiences,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'experience-section', [
      span(classes: 'title', id: 'experience', [
        text('Experience'),
      ]),
      div(classes: 'experience-section-body', [
        for (final exp in experiences)
          div(classes: 'experience-card', [
            span(classes: 'company', [
              text(exp['company'] ?? ''),
            ]),
            span(classes: 'role', [
              text(exp['role'] ?? ''),
            ]),
            span(classes: 'duration', [
              text(exp['duration'] ?? ''),
            ]),
            div(classes: 'divider', []),
            span(classes: 'description', [
              text(exp['description'] ?? ''),
            ]),
          ]),
      ])
    ]);
  }

  @css
  static final List<StyleRule> styles = [
    css('.experience-section')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          width: 100.percent,
        ),
    css('.title').text(
      fontFamily: FontFamily('Montserrat'),
      fontWeight: FontWeight.w100,
      fontSize: 40.px,
    ),
    css('.experience-section-body')
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.center,
          justifyContent: JustifyContent.start,
        )
        .box(
          margin: EdgeInsets.only(top: 50.px),
          width: 80.percent,
        ),
    css('.experience-card')
        .box(
          padding: EdgeInsets.all(20.px),
          margin: EdgeInsets.only(bottom: 20.px),
          radius: BorderRadius.all(Radius.circular(10.px)),
          border: Border.all(BorderSide(color: Colors.lightGrey, width: 1.px)),
        )
        .flexbox(
          direction: FlexDirection.column,
          alignItems: AlignItems.start,
          justifyContent: JustifyContent.start,
        ),
    css('.company').text(
      fontWeight: FontWeight.bold,
      fontSize: 18.px,
      color: themePrimaryColor,
    ),
    css('.role').text(
      fontSize: 16.px,
      color: Colors.lightGrey,
    ),
    css('.duration').text(
      fontSize: 14.px,
      fontStyle: FontStyle.italic,
      color: Colors.darkGray,
    ),
    css('.description').text(
      fontSize: 14.px,
      lineHeight: 1.5.em,
      color: Colors.lightGrey,
    ),
    css('.divider')
        .box(
          height: 1.px,
          width: 100.percent,
          margin: EdgeInsets.symmetric(vertical: 10.px),
        )
        .background(color: Colors.lightGrey),
  ];
}
