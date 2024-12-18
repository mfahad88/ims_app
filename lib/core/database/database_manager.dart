import 'package:mysql1/mysql1.dart';

class DatabaseManager{
  final _settings=ConnectionSettings(
    host: '10.2.0.136',
    port: 3306,
    user: 'root',
    password: '123',
    db: 'inventory_management_system',
  );
  Future<MySqlConnection?> createConnection() async {
   try{
     return await MySqlConnection.connect(_settings);

   }catch (e){
     print('Error: $e');
   }
  }


}