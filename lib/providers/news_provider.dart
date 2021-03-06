import 'package:flutter/cupertino.dart';
import 'package:training_app/models/news.dart';
import 'package:training_app/services/news_service.dart';

class BeritaProvider extends ChangeNotifier {
  List<BeritaModel>? _listBerita;
  List<BeritaModel> get beritaModel => _listBerita!;

  set beritaModel(List<BeritaModel> listBerita) {
    _listBerita = listBerita;
    notifyListeners();
  }

  Future<List<BeritaModel>> getAllBerita() async {
    var data = await BeritaService().getAllBerita();
    _listBerita = data;
    return _listBerita!;
  }
}
