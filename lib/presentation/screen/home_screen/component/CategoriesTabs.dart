import 'package:deliveryapp_flutter/domain/entity/Category.dart';
import 'package:deliveryapp_flutter/presentation/screen/home_screen/component/CategoryTab.dart';
import 'package:flutter/cupertino.dart';

class CategoriesTabs extends StatelessWidget {
  final List<Category> categories;
  final int selectedCategoryId;
  final void Function(int) onCategorySelected;

  const CategoriesTabs({
    super.key,
    required this.categories,
    required this.selectedCategoryId,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(top: 48, bottom: 24, start: 24),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryTab(
              selectedCategoryId: selectedCategoryId,
              category: categories[index],
              onCategorySelected: onCategorySelected,
            );
          },
        ),
      ),
    );
  }
}
