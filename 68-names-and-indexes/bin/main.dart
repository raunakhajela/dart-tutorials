import 'dart:io';
import 'dart:async';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';

main(List<String> arguments) async {

  var pool = new ConnectionPool(
      host: 'localhost',
      port: 3306,
      user: 'root',
      // password: '', //omit password if it is blank
      db: 'school',
      max: 5
  );

  var results = await pool.query('select Name, Topic from teachers');

  await results.forEach((row) {
    print('Name: ${row[0]}, Topic: ${row.Topic}'); //name or index


  });

  pool.closeConnectionsNow();
  exit(0);
}
