import 'package:deliveryapp_flutter/domain/entity/Category.dart';
import 'package:flutter/cupertino.dart';

class CategoryTab extends StatelessWidget {
  final Category category;
  final int selectedCategoryId;
  final void Function(int) onCategorySelected;

  const CategoryTab({
    super.key,
    required this.category,
    required this.selectedCategoryId,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = category.id == selectedCategoryId;

    return GestureDetector(
      onTap: () => onCategorySelected(category.id),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              category.name,
              style: TextStyle(
                color: isSelected
                    ? const Color(0xFF27214D)
                    : const Color(0xFF938DB5),
                fontSize: isSelected ? 24 : 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            AnimatedOpacity(
              opacity: isSelected ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              child: Container(
                height: 2,
                width: 22,
                decoration: const BoxDecoration(color: Color(0xFFFFA451)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
