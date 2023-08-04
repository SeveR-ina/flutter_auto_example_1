import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@RoutePage()
class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<OnboardingPage> createState() => _StartinPageState();
}

class _StartingPageState extends BaseState<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
        //
        );
  }
}

class _SkipButton extends StatelessWidget {
  const _SkipButton();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      //
      child: Padding(
        //
        child: TextButton(
          key: const Key('skip_button'),
          style: TextButton.styleFrom(
              //
              ),
          //
        ),
      ),
    );
  }
}
