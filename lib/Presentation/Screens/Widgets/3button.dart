import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../business_logic/cubit/age_calculator_cubit.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.focusNode,
    required this.ageController,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController ageController;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      focusNode: focusNode,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.green, width: 1),
        minimumSize: const Size(175, 50),
      ),
      onPressed: () {
        BlocProvider.of<AgeCalculatorCubit>(context)
            .updateAgeVal(int.parse(ageController.text));
      },
      icon: const Icon(Icons.timelapse),
      label: const Text('Calcular'),
    );
  }
}
