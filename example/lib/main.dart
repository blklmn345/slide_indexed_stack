import 'package:flutter/material.dart';
import 'package:slide_indexed_stack/slide_indexed_stack.dart';

void main(List<String> args) {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SlideIndexedStack(
          axis: Axis.horizontal,
          slideOffset: 0.5,
          index: _currentIndex,
          duration: const Duration(milliseconds: 300),
          children: [
            _buildPage(0),
            _buildPage(1),
            _buildPage(2),
            _buildPage(3),
            _buildPage(4)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: 0.toString(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: 1.toString(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: 2.toString(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: 3.toString(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              label: 4.toString(),
            ),
          ],
          onTap: (index) => setState(() {
            _currentIndex = index;
          }),
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
            'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.'),
      ),
    );
  }
}
