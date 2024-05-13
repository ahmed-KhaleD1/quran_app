import 'package:quran_app/features/moshaf/data/models/sorah/sorah.dart';

abstract class QuranRepo {
  Future<List<SorahModel>?> featchQuran();
}
