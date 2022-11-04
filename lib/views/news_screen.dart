import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/news_controller.dart';
import '../widget/news_container.dart';
import '../widget/rounded_container.dart';

class NewsScreen extends StatefulWidget {
  String? country1, country2;

  NewsScreen({Key? key, this.country1, this.country2}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search News"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: "Search Country",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          widget.country1 = newValue;
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const RoundedContainer(
                      icon: Icons.search,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.grey,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: "Search Country",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const RoundedContainer(
                    icon: Icons.search,
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              Obx(() => newsController.isLoading.value
                  ? const CircularProgressIndicator()
                  : NewsContainer(
                      child: ListView.builder(itemBuilder: (context, index) {
                        return Column(
                          children: [Image.network("")],
                        );
                      }),
                    )),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
              const SizedBox(height: 20),
              const NewsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
