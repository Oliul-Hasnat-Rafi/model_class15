import 'package:flutter/material.dart';
import 'package:model_class15/model/jobModel.dart';

class about extends StatefulWidget {
  Job? aboutcompany;
  about({super.key, required this.aboutcompany});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.aboutcompany!.company.toLowerCase()),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'img',
              child: Image.asset(
                widget.aboutcompany!.logoUrl,
                height: 150,
                width: double.maxFinite,
                // fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.aboutcompany!.title,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.location_city,
                    color: Colors.blue,
                  ),
                  Text(
                    widget.aboutcompany!.title,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Icon(
                    Icons.av_timer,
                    color: Colors.blue,
                  ),
                  Text(
                    widget.aboutcompany!.time,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
                Divider(color: Colors.grey,),
            Expanded(
              child: ListView.builder(
                itemCount: widget.aboutcompany!.req.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                                          Icons.circle,
                                          color: Colors.blue.shade300,
                                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.aboutcompany!.req[index],
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
