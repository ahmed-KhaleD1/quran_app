import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/features/sabhuh/persentation/view-model/cubit/sabhuh_cubit.dart';
import 'package:quran_app/features/sabhuh/persentation/widgets/custom_painter/curve_line_and_circle_painter.dart';

class SabhuhPainterWidget extends StatefulWidget {
  const SabhuhPainterWidget({super.key});

  @override
  State<SabhuhPainterWidget> createState() => _SabhuhPainterWidgetState();
}

class _SabhuhPainterWidgetState extends State<SabhuhPainterWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _curve;
  double tweenIncreaseValue = 0.125;
  @override
  void initState() {
    super.initState();

    createAnimationController();
  }

  void createAnimationController() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _animation = Tween<double>(
            begin: tweenIncreaseValue, end: 0.125 + tweenIncreaseValue)
        .animate(_curve);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return GestureDetector(
              onTap: () {
                BlocProvider.of<SabhuhCubit>(context).updateTotalTasbihCount();
                if (_controller.isCompleted) {
                  tweenIncreaseValue += 0.125;
                  _animation = Tween<double>(
                          begin: tweenIncreaseValue,
                          end: 0.12 + tweenIncreaseValue)
                      .animate(_curve);
                }
                _controller.reset();
                _controller.forward();

                setState(() {});
              },
              child: CustomPaint(
                painter: CurveLineAndCirclePainter(animation: _animation),
                child: Container(),
              ));
        });
  }
}
