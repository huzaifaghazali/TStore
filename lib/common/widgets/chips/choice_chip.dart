import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox() : const Text(''),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? TColors.white : null),
      avatar: isColor  ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunctions.getColor(text)!) : null,
      labelPadding: isColor  ? const EdgeInsets.all(0) : null, // Make label in the center
      padding: isColor  ? const EdgeInsets.all(0) : null,
      shape: isColor ? const CircleBorder() : null,
      selectedColor: Colors.green,
      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,

    );
  }
}