import 'package:flutter/material.dart';
import 'package:model_class15/about.dart';
import 'package:model_class15/model/jobModel.dart';

class jobwidget extends StatefulWidget {
  Job? jobs;
  jobwidget({super.key, required this.jobs});

  @override
  State<jobwidget> createState() => _jobwidgetState();
}

class _jobwidgetState extends State<jobwidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => about(aboutcompany: widget.jobs),
            ));
      },
      child: Container(
        child: Card(
          shadowColor: Colors.black,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'img',
                child: Image.asset(
                  widget.jobs!.logoUrl,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Text(widget.jobs!.company, style: TextStyle(fontSize: 20, color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
