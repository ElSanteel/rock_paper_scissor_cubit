import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/rock_paper_scissor_cubit.dart';
import '../screens/Session_6_Flutter_Task/Rock_Paper_Scissor_App/rock_paper_scissor_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => RockPaperScissorCubit())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RockPaperScissorScreen(),
      ),
    );
  }
}
