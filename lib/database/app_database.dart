import 'dart:async';
import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() async {
  // ATUALIZADO
  return openDatabase(
    join(
      await getDatabasesPath(),
      'bytebank01.db',
    ),
    onCreate: (db, version) {
      return db.execute(ContactDao.tableSql);
    },
    version: 1,
    //onDowngrade: onDatabaseDowngradeDelete, //limpeza do banco de dados.
  );
}





// future a gente acessa por meio do then 
