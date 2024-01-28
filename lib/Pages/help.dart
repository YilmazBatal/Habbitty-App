// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:habbitty/main.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: lightOrange,
        title: const Text("Help", style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
                      child: Text("Frequantly Asked Questions",
                      style: TextStyle(
                        fontSize: 24
                      ),
                    ),
                  ),
                  FAQItem("What is HABBITTY?", "Easy to use offline and free habit and task tracking app. With simple designed UI anyone can use this app. Even your grandpa!"),
                  FAQItem("How to add Habbitts?", "bla bla bla"),
                  FAQItem("Can I change my user name", "bla bla bla"),
                  FAQItem("Can I request my data to be deleted?", "bla bla bla"),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
                    child: Text("For more information visit habbitty.app or contact us",
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      onPressed: ()async{
                        // asenkronize bir şekilde uri classımızı çalışıyoruz
                        final Uri myWebsiteUrl = Uri.parse("https://github.com/YilmazBatal/Habbitty-App/blob/main/README.md");
                        // scheme ve yönlendirilecek yolu beliritiyoruz
                        try{
                          await launchUrl(myWebsiteUrl);
                        } catch (err) {
                          // ignore: avoid_print
                          print(err);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lightOrange,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.language),
                          Text("habbitty.app", textAlign: TextAlign.center,),
                          Text(""),
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      onPressed: () async {
                        final Uri myMailUrl = Uri(
                          scheme: 'mailto',
                          path: 'support@habbitty.com'
                        );

                        launchUrl(myMailUrl);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lightOrange,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.mail),
                          Text("support@habbitty.com", textAlign: TextAlign.center,),
                          Text(""),
                        ],
                      )
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      onPressed: () async {
                        // asenkronize bir şekilde uri classımızı çalışıyoruz
                        final Uri myTel = Uri(
                          // scheme ve yönlendirilecek yolu beliritiyoruz
                          scheme: 'tel',
                          path: '+90 532 123 45 67'
                        );

                        launchUrl(myTel);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lightOrange,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.phone),
                          Text("Call Us", textAlign: TextAlign.center,),
                          Text(""),
                        ],
                      )
                    ),
                  ), 
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ExpansionTile FAQItem(String myTitle, String myDescription) {
    return ExpansionTile(
      backgroundColor: Colors.white,
      iconColor: lightOrange,
      title: Text(
        myTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: Text(
            myDescription,
            style:  const TextStyle(fontSize: 15),
            // maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}