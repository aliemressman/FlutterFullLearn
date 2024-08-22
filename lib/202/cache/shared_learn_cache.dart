import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';

class SharedLearnCache extends StatefulWidget {
  const SharedLearnCache({super.key});

  @override
  State<SharedLearnCache> createState() => _SharedLearnCacheState();
}

class _SharedLearnCacheState extends LoadingStatefull<SharedLearnCache> {
  int _currentValue = 0;
  late final SharedManager _manager;

  late final List<User> userItems;
  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _initialize();
  }

  Future<void> _initialize() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValue();
  }

  Future<void> getDefaultValue() async {
    _onChangeValue(_manager.geString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      appBar: AppBar(
          title: Center(
            child: Text(_currentValue.toString()),
          ),
          actions: [
            isLoading
                ? Center(
                    child: CircularProgressIndicator(backgroundColor: Theme.of(context).scaffoldBackgroundColor),
                  )
                : const SizedBox.shrink(),
          ]),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(users[index].name),
                    subtitle: Text(users[index].description),
                    trailing: Text(users[index].url,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(decoration: TextDecoration.underline)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  final List<User> users = UserItems().users;

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () async {
        _manager.saveString(SharedKeys.counter, _currentValue.toString());
      },
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
        child: const Icon(Icons.remove_outlined),
        onPressed: () async {
          _manager.removeString(SharedKeys.counter);
        });
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

class User {
  final String name;
  final String description;
  final String url;

  User(this.name, this.description, this.url);
}

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [User('vb', '10', 'vb10dev'), User('vb', '10', 'vb10dev'), User('vb', '10', 'vb10dev')];
  }
}
