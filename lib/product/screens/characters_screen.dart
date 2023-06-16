import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../feature/enums/service_enums.dart';
import '../../feature/extensions/service_path_extension.dart';
import '../../feature/injection.dart';
import '../../feature/network/network_manager.dart';

import '../../feature/model/character_model.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CharactersScreen> {
  final Dio _dio = Injection.getIt.get<NetworkManager>().dio;
  List<CharacterModel> _characters = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Characters')),
      body: _characterListView(),
      floatingActionButton: _fetchDataButton(),
    );
  }

  FloatingActionButton _fetchDataButton() {
    return FloatingActionButton(
      onPressed: () async {
        await getItems();
        setState(() {});
      },
      tooltip: 'Fetch',
      child: const Icon(Icons.get_app),
    );
  }

  ListView _characterListView() {
    return ListView.builder(
      itemCount: _characters.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: ListTile(
            title: Text(_characters[index].name ?? ''),
            subtitle: Text(_characters[index].status ?? ''),
            leading: CircleAvatar(child: Image.network(_characters[index].image ?? '')),
          ),
        );
      },
    );
  }

  Future<void> getItems() async {
    final response = await _dio.get(ServicePath.CHARACTER.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        final BaseCharacterModel model = BaseCharacterModel.fromJson(data);
        _characters = model.results ?? [];
      }
    }
  }
}
