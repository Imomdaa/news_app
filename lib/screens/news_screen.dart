import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/source_item.dart';
import 'package:news_app/shared/network/remote/api_manger.dart';

class NewsScreen extends StatefulWidget {
  static const String routeName = "news";

  NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int currentSource = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [Icon(Icons.search)],
        elevation: 0.0,
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            borderSide: BorderSide(color: Colors.white)),
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "News App",
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
      body: FutureBuilder(
        future: ApiManager.getSources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Please Try Again "));
          }

          var sources = snapshot.data?.sources ?? [];
          return Column(
            children: [
              Container(
                height: 40,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 6,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: sources.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          currentSource = index;
                          setState(() {

                          });
                        },
                        child: SourceItem(
                            sources[index].name ?? "",
                            sources.elementAt(currentSource) ==
                                sources[index]));
                  },
                ),
              ),

            ],
          );
        },
      ),
    );
  }
}
