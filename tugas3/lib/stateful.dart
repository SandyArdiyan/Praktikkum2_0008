import 'package:flutter/material.dart';

class CounterManager extends StatefulWidget {
  const CounterManager({super.key});

@override
  State<CounterManager> createState() => _CounterManagerState();
}

class _CounterManagerState extends State<CounterManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA), // Warna background abu-abu sangat terang
