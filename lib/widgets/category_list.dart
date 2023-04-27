import 'package:donut_delivery/data.dart';
import 'package:donut_delivery/presentation/welcome_screen/bloc/donuts_bloc.dart';
import 'package:donut_delivery/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(61), bottomLeft: Radius.circular(61))),
      child: Padding(
          padding: const EdgeInsets.only(top: 21),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 21),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.read<DonutsBloc>().add(DonutsChange(index: index));
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: CategoryItem(
                    backgroundColor: _selectedIndex == index
                        ? Colors.white
                        : Theme.of(context).colorScheme.secondary,
                    imgPath: categoryIconList[index],
                    title: name[index]),
              );
            },
            itemCount: 4,
          )),
    ).animate().slideX(begin: 1, curve: Curves.ease, duration: 600.ms);
  }
}
