import 'package:chopper_sandobox/src/features/beer/repository/beer_repository.dart';
import 'package:chopper_sandobox/src/features/wine/repository/wine_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beer = ref.watch(beerRepositoryProvider.notifier);
    final wine = ref.watch(wineRepositoryProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('top'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await beer.getAle();
                print(result);
              },
              child: Text('beer'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await wine.getRed();
                print(result);
              },
              child: Text('wine'),
            ),
          ],
        ),
      ),
    );
  }
}
