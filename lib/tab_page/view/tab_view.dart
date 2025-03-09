part of 'view.dart';

class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030303),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xff030303),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/images/Placeholder.png',
            height: 20,
            width: 20,
          ),
        ),
        title: Image.asset('assets/images/reslove_logo.png', width: 150),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/images/notification.png',
              height: 28,
              width: 30,
            ),
          ),
        ],
      ),
      body: HomePage(),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
