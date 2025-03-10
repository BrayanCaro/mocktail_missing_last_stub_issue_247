import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  test("Home should invoke sleep lifecycle once", () {
    final animal = Animal();
    final home = Home(animal);

    when(() => animal.sleep()).thenAnswer((_) async => 'zzz');
    when(() => animal.wakeUp()).thenThrow(Exception());

    expect(() async => await home.awake(), throwsA(isA<Exception>()));

    logInvocations([animal]);

    verify(() => animal.sleep()).called(1);
    verify(() => animal.wakeUp()).called(1);

    verifyNoMoreInteractions(animal);
  });

  test("SleepyHome should throw when animal cannot wake up", () {
    final animal = Animal();
    final home = SleepyHome(animal);

    when(() => animal.wakeUp()).thenThrow(Exception('bad'));

    expect(() async => await home.wakeUp(), throwsA(isA<Exception>()));

    logInvocations([animal]);

    verify(() => animal.wakeUp()).called(1);

    verifyNoMoreInteractions(animal);
  });
}

class Home {
  final Animal animal;

  Home(this.animal);

  Future<void> awake() async {
    await animal.sleep();
    await animal.wakeUp();
  }
}

class SleepyHome {
  final Animal animal;

  SleepyHome(this.animal);

  Future<void> wakeUp() => animal.wakeUp();
}

class Animal extends Mock {
  Future<String> sleep();

  Future<String> wakeUp();
}
