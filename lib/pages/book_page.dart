import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class BookPage extends StatelessWidget {
  //const NotePage({super.key});

  String content =
      '  Love is a complex emotion that can take many forms, from romantic love to familial love and everything in between. In this book, we will explore the different facets of love and how it impacts our lives. We will delve into the science behind love, its evolutionary purpose, and how it affects our brains and bodies. Through personal anecdotes and expert insights, readers will gain a deeper understanding of this universal human experience. on the benefits of meditation. Meditation is a powerful tool for reducing stress, anxiety, and depression. It can also improve focus, creativity, and overall well-being. In this book, readers will learn different meditation techniques and how to incorporate them into their daily routine. The book will also explore the science behind meditation and its impact on the brain and body. With practical tips and insights, this book is perfect for anyone looking to start or deepen their meditation practice.  Happiness is a state of mind that everyone strives to achieve. In this book, we will explore the different ways in which happiness can be attained and maintained. From practicing gratitude to cultivating meaningful relationships, we will delve into the science behind happiness and provide practical tips for readers to apply in their daily lives. Through personal anecdotes and expert insights, this book aims to inspire readers to prioritize their own happiness and live a more fulfilling life. God is an omnipotent and omniscient being that is worshipped by many religions around the world. This book will explore the different beliefs and interpretations of God, as well as the role that God plays in people lives. From the creation story to the afterlife, this book will delve into the many facets of God and how different cultures view this divine entity. Additionally, it will examine how people have grappled with questions about God existence, purpose, and nature throughout history.  ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dementia Care Assistant'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          margin: EdgeInsets.all(5),
          child: ReadMoreText(
            content,
            trimLines: 3,
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimCollapsedText: "Show More",
            trimExpandedText: "Show Less",
            lessStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
            moreStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
            ),
            style: const TextStyle(
              fontSize: 16,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
