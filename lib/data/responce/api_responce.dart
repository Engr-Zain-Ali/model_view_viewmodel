import 'package:model_view_viewmodel/data/responce/status.dart';

class ApiResponce<T>{
  Status?status;
  T? data;//DYNAMIC FUNCATION CREATE WHICH TAKE THE DATA
  String? message;//MESSAGE KER DEA
  ApiResponce(this.status,this.data,this.message);
  ApiResponce.loading():status=Status.LOADING;
  ApiResponce.completed():status=Status.COMPLETED;
  ApiResponce.error():status=Status.ERROR;
  @override
  String toString(){
    return "Status:$status\nMessage:$message \n Data:$data";

  }
}
