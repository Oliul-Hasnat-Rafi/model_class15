import 'package:flutter/material.dart';
import 'package:model_class15/Widget/jobwidget.dart';
import 'package:model_class15/model/jobModel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final jobs = Job.jobsList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Model'),),
    body: Container(
      child: GridView.count(crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: 
         List.generate(jobs.length, (index) => jobwidget(jobs: jobs[index],) )
      
      ),
    )
    );
  }
}
