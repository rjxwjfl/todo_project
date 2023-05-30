import 'package:todo_project/models/user/user_dtl_model.dart';
import 'package:todo_project/utils/date_formatter.dart';

class TodoModel {
  int todoId;
  UserDtlModel sender;
  UserDtlModel receiver;
  String title;
  String todoDesc;
  int priority;
  String? todoAtt;
  int todoState;
  DateTime startDate;
  DateTime endDate;
  DateTime? cmpltDate;
  DateTime createAt;
  DateTime updateAt;

  TodoModel({
    required this.todoId,
    required this.sender,
    required this.receiver,
    required this.title,
    required this.todoDesc,
    required this.priority,
    this.todoAtt,
    required this.todoState,
    required this.startDate,
    required this.endDate,
    this.cmpltDate,
    required this.createAt,
    required this.updateAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'todoId': todoId,
      'sender': sender,
      'receiver': receiver,
      'title': title,
      'todo_desc': todoDesc,
      'priority': priority,
      'todo_att': todoAtt,
      'todo_state': todoState,
      'start_date': sqlDateFormatter.format(startDate),
      'end_date': sqlDateFormatter.format(endDate),
      'cmplt_date': sqlDateFormatter.format(cmpltDate!),
      'create_at': sqlDateFormatter.format(createAt),
      'update_at': sqlDateFormatter.format(updateAt),
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      todoId: map['todoId'] as int,
      sender: map['sender'] as UserDtlModel,
      receiver: map['receiver'] as UserDtlModel,
      title: map['title'] as String,
      todoDesc: map['todo_desc'] as String,
      priority: map['priority'] as int,
      todoAtt: map['todo_att'] != null ? map['todo_att'] as String : null,
      todoState: map['todo_state'] as int,
      startDate: DateTime.parse(map['start_date']),
      endDate: DateTime.parse(map['end_date']),
      cmpltDate: map['cmplt_date'] != null ? DateTime.parse(map['cmplt_date']) : null,
      createAt: DateTime.parse(map['create_at']),
      updateAt: DateTime.parse(map['update_at']),
    );
  }

  static TodoModel sampleTodoModelOne = TodoModel(
      todoId: 1,
      sender: UserDtlModel.sampleModelOne,
      receiver: UserDtlModel.sampleModelTwo,
      title: "Todo Sample #2",
      todoDesc: "Description sample #2",
      priority: 3,
      todoState: 0,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      createAt: DateTime.now(),
      updateAt: DateTime.now(),
  );
  static TodoModel sampleTodoModelTwo = TodoModel(
      todoId: 2,
      sender: UserDtlModel.sampleModelOne,
      receiver: UserDtlModel.sampleModelTwo,
      title: "Todo Sample #2",
      todoDesc: "Description sample #2",
      priority: 1,
      todoState: 0,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      createAt: DateTime.now(),
      updateAt: DateTime.now(),
  );
  static TodoModel sampleTodoModelThree = TodoModel(
      todoId: 3,
      sender: UserDtlModel.sampleModelOne,
      receiver: UserDtlModel.sampleModelTwo,
      title: "Todo Sample #3",
      todoDesc: "Description sample #3",
      priority: 5,
      todoState: 0,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      createAt: DateTime.now(),
      updateAt: DateTime.now(),
  );

  static List<TodoModel> sampleTodoModelList = [
    sampleTodoModelOne, sampleTodoModelTwo, sampleTodoModelThree
  ];
}
