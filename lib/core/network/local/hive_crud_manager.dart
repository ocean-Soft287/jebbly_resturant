import 'package:hive/hive.dart';

class HiveCrudManager {
  String boxName;

  HiveCrudManager({required this.boxName});

  Future<Box> _openBox() async {
    return await Hive.openBox(boxName);
  }

  // Create: إضافة قائمة
  Future<void> saveList(String key, List<dynamic> list) async {
    final box = await _openBox();
    await box.put(key, list);
  }

  // Read: قراءة القائمة
  Future<List<dynamic>?> readList(String key) async {
    final box = await _openBox();
    return box.get(key) as List<dynamic>?;
  }

  // Update: تحديث القائمة
  Future<void> updateList(String key, List<dynamic> updatedList) async {
    final box = await _openBox();
    await box.put(key, updatedList);
  }

  // Delete: حذف القائمة
  Future<void> deleteList(String key) async {
    final box = await _openBox();
    await box.delete(key);
  }

  // Read All: قراءة كل البيانات (لتأكيد وجود القائمة)
  Future<Map<dynamic, dynamic>> readAll() async {
    final box = await _openBox();
    return box.toMap();
  }
}
