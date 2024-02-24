import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
void main(){
  runApp(ProviderScope(child: app()));
}
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: page(),
    );
  }
}
final counterprovider=StateProvider((ref) => 0);
class page extends ConsumerWidget{
  @ override
  Widget build(context,ref){
    final counter=ref.watch(counterprovider);
    return Scaffold(
      body: Center(
        child: Text("$counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>ref.read(counterprovider.notifier).state++,
      ),
    );
  }
}