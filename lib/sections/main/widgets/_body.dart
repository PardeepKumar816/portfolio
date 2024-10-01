part of '../main_section.dart';

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  final List<Widget> views = const [
    Home(),
    About(),
    Tech(),
    Projects(),
    Contact()
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: views.length,
      itemBuilder: (context, index) => SizedBox(
        height: isMobile() && (index == 4 || index == 3) ? 1.sh * 0.7 : 1.sh,
        child: views[index],
      ),
    );
  }
}
