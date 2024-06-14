import 'package:dio/dio.dart';

abstract class Coreservice{
  Dio dio=Dio();
  late Response response;
}