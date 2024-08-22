import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'as');
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = 'a';

    final user2 = PostModel2(1, 2, 'as', 'b');
    user2.title = 'b';

    final user3 = PostModel3(1, 2, 'as', 'b');
    // user3.title = 'a'; final olduğu için sadece consturctor içinde değer verilir.

    final user4 = PostModel4(userId: 1, id: 2, title: 'b', body: 's');
    // user4.id = 2;

    final user5 = PostModel5(userId: 1, id: 2, title: 'as', body: 'b');
    user5.userId; // getter ile kullanıcıdan değeri aldık.

    final user6 = PostModel6(userId: 0, id: 2, title: 'as', body: 'b');
    final user7 = PostModel7(); // değerde verebiliriz.

    final user8 = PostModel8(body: 'as');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user9 = PostModel8(title: 'Yeni deger');
          user9.updateBody('a'); // modelde fonksiyonun içinde check ettik.
        });
      }),
      appBar: AppBar(
        title: Text(user9.title ?? 'I have a title'),
      ),
    );
  }
}
