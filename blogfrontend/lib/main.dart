import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Mae\'s Blog',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var currentPage = 1;
  var min = 1;
  var max = 5;
  void getNext() {
    if (currentPage < max) {
      currentPage += 1;
      notifyListeners();
    }
  }
  void getLast() {
    if (currentPage > min) {
      currentPage -= 1;
      notifyListeners();
    }
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var currentPage = appState.currentPage;
  
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText('User: username'),
            //TitleCard(),
             TextButton(
                  onPressed: () {},
                  child: Container(
                    color: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: const Text(
                      'Make Account',
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                ),
              TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),

              TextButton(
                  onPressed: () {},
                  child: Container(
                    color: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: const Text(
                      'New Post',
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                  ),
                ),
              TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Edit Post',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Delete Post',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'View All Posts',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                appState.getLast();
              },
              child: Text('Test'),
            ),
           
            SelectableText('Status:'),
            SelectableText(currentPage.toString()),
          ],
        ),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  const TitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'my blog page!! coming soon',
         style: style,
        ),
      ),
    );
  }
}