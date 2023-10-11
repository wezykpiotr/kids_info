part of 'theme_cubit.dart';

@immutable
class ThemeState extends Equatable {
  const ThemeState({required this.theme});
  final ThemeData theme;
  
  @override
  List<Object?> get props => [theme, theme];
}
