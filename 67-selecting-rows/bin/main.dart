import 'dart:io';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';

main(List<String> arguments) async {

  var pool = new ConnectionPool(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '',
      db: 'school',
      max: 5
  );

  var results = await pool.query('Select * from teachers');

  print('Results ${await results.length} rows');

  pool.closeConnectionsNow();
  exit(0);
}
