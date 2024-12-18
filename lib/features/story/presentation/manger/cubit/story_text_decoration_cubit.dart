import 'package:bloc/bloc.dart';

class StoryTextDecorationCubit extends Cubit<double> {
  StoryTextDecorationCubit() : super(30);

  double fontSize = 30;

  void updateFontWeight() {
    if (fontSize < 60) {
      fontSize += 4;
    } else {
      fontSize = 18;
    }
    emit(fontSize);
  }
}
