import 'package:donut_delivery/data.dart';
import 'package:donut_delivery/data/models/store_item.dart';
import 'package:donut_delivery/presentation/vendor_screen/vendor_screen.dart';
import 'package:donut_delivery/presentation/welcome_screen/bloc/donuts_bloc.dart';
import 'package:donut_delivery/widgets/store_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoresList extends StatefulWidget {
  const StoresList({super.key});

  @override
  State<StoresList> createState() => _StoresListState();
}

class _StoresListState extends State<StoresList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DonutsBloc, DonutsState>(
      builder: (context, state) {
        return Column(
            children: state.donuts.mapIndexed((i, item) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VendorScreen(),
                )),
            child: StoreItem(
              item: state.donuts[i],
            )
                .animate(
                  delay: (100 * i).ms + 600.ms,
                )
                .fadeIn(delay: 500.ms)
                .slideY(duration: 500.ms, curve: Curves.ease, begin: 0.5),
          );
        }).toList());
      },
    );
  }
}
