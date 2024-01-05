import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:habbitty/model/quotes.dart';
import 'package:habbitty/services/api.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  var size, height, width;
  Quotes? data;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadDailyQuote();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 10),
            IconButton(
              icon: const Icon(
                Icons.refresh_outlined,
              ),
              iconSize: 30,
              onPressed: () {
                print("icon refresh");
                loadDailyQuote();
              },
            ),
            Card(
              margin: const EdgeInsets.only(top: 20),
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isLoading
                        ? CircularProgressIndicator()
                        : Text(
                            '${data?.content ?? ""}',
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                    const SizedBox(height: 22),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        data?.author ?? "",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getCurrentDate() {
    return DateTime.now().toString().split(' ')[0];
  }

  Future<void> loadDailyQuote() async {
    setState(() {
      isLoading = true;
    });

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String storedDate = prefs.getString('lastFetchedDate') ?? "";

    // Check if it's a new day
    if (storedDate != getCurrentDate()) {
      // Fetch a new quote from the API
      await fetchAndSaveDailyQuote();

      // Save the current date as the last fetched date
      prefs.setString('lastFetchedDate', getCurrentDate());
    } else {
      // Use the previously fetched quote for the day
      data = Quotes(
        content: prefs.getString('dailyQuoteContent') ?? "",
        author: prefs.getString('dailyQuoteAuthor') ?? "",
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  Future<void> fetchAndSaveDailyQuote() async {
    try {
      Quotes? dailyQuote = await Api.getQuotes();
      if (dailyQuote != null) {
        data = dailyQuote;

        // Save the daily quote details
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('dailyQuoteContent', data?.content ?? "");
        prefs.setString('dailyQuoteAuthor', data?.author ?? "");
      }
    } catch (e) {
      // Handle error
      print('Error: $e');
      // Optional:
    }
  }
}
