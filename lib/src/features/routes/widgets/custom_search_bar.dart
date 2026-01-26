import 'package:flutter/material.dart';
import '../utils/context_extensions.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.controller,
    this.onSubmitted,
    this.onChanged,
    this.onClear,
    this.hintText,
  });
  final TextEditingController? controller;
  final void Function(String value)? onSubmitted;
  final void Function(String value)? onChanged;
  ///not need to add controller.clear it done by default
  final VoidCallback? onClear;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      controller: controller,
      style: context.textTheme.bodyMedium,
      decoration: InputDecoration(
        suffixIcon: controller == null
            ? null
            : ValueListenableBuilder(
                valueListenable: controller!,
                builder: (context, value, child) {
                  if (value.text.isEmpty) {
                    return SizedBox();
                  }
                  return IconButton(
                    onPressed: (){
                      onClear?.call();
                      controller?.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: context.colorScheme.onSurface,
                    ),
                  );
                },
              ),
        hintText: hintText,
        prefixIcon: Icon(Icons.search),
        fillColor: context.colorScheme.surfaceContainer,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: .circular(16),
          borderSide: .none,
        ),
      ),
    );
  }
}
