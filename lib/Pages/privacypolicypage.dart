// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habbitty/main.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: lightOrange,
        title: const Text(
          "Privacy Policy",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  FAQItem(
                      "Privacy&Policy",
                      "This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You."
                          "We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy."),
                  FAQItem(
                    "Definitions",
                    "For the purposes of this Privacy Policy:"
                        "Account means a unique account created for You to access our Service or parts of our Service."
                        "Affiliate means an entity that controls, is controlled by or is under common control with a party, where 'control' means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority."
                        "Application refers to Habbitty, the software program provided by the Company."
                        "Company (referred to as either 'the Company', 'We', 'Us' or 'Our' in this Agreement) refers to Habbitty."
                        "Country refers to: International"
                        "Device means any device that can access the Service such as a computer, a cellphone or a digital tablet."
                        "Personal Data is any information that relates to an identified or identifiable individual."
                        "Service refers to the Application."
                        "Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used."
                        "Usage Data refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit)."
                        "You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.",
                  ),
                  FAQItem(
                    "Personal Data",
                    "While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to: Usage Data",
                  ),
                  FAQItem("Usage Data",
                      "Usage Data is collected automatically when using the Service.Usage Data may include information such as Your Device's Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device."),
                ],
              ),
            ),
          ),
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
            style: const TextStyle(fontSize: 15),
            // maxLines: 3,
            softWrap: true,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
