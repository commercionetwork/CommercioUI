import 'package:bloc/bloc.dart';
import 'package:commercio_ui/commercio_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class StateMock extends Mock {}

class DataStateMock extends StateMock {}

class ErrorStateMock extends StateMock {
  ErrorStateMock(this.error);

  final String error;

  @override
  String toString() => '$error';
}

class InitialStateMock extends StateMock {}

class LoadingStateMock extends StateMock {}

class EventMock extends Mock {}

class DataEventMock extends EventMock {}

class ErrorEventMock extends EventMock {}

class LoadingEventMock extends EventMock {}

class BlocMock extends Bloc<EventMock, StateMock> {
  BlocMock() : super(InitialStateMock());

  @override
  Stream<StateMock> mapEventToState(EventMock event) async* {
    if (event is LoadingEventMock) {
      yield LoadingStateMock();
    }

    if (event is ErrorEventMock) {
      yield ErrorStateMock('error');
    }

    if (event is DataEventMock) {
      yield DataStateMock();
    }
  }
}

void main() {
  const childText = 'Child';
  const loadingText = 'Loading';

  testWidgets('Submit loading event', (WidgetTester tester) async {
    final blocMock = BlocMock();
    final List<Type> states = [];
    blocMock.listen((state) {
      states.add(state.runtimeType);
    });

    final commFlatButton = CommercioFlatButton<BlocMock, EventMock, StateMock,
        LoadingStateMock, ErrorStateMock>(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => LoadingEventMock(),
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    final childFinder = find.text(childText);
    final buttonFinder = find.byWidget(commFlatButton);

    expect(childFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    expect(states, [InitialStateMock, LoadingStateMock]);
  });

  testWidgets('Submit data event', (WidgetTester tester) async {
    final blocMock = BlocMock();
    final List<Type> states = [];
    blocMock.listen((state) {
      states.add(state.runtimeType);
    });

    final commFlatButton = CommercioFlatButton<BlocMock, EventMock, StateMock,
        LoadingStateMock, ErrorStateMock>(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => DataEventMock(),
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    final childFinder = find.text(childText);
    final buttonFinder = find.byWidget(commFlatButton);

    expect(childFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    expect(states, [InitialStateMock, DataStateMock]);
  });

  testWidgets('Submit error event', (WidgetTester tester) async {
    final blocMock = BlocMock();
    final List<Type> states = [];
    blocMock.listen((state) {
      states.add(state.runtimeType);
    });

    final commFlatButton = CommercioFlatButton<BlocMock, EventMock, StateMock,
        LoadingStateMock, ErrorStateMock>(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => ErrorEventMock(),
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    final childFinder = find.text(childText);
    final buttonFinder = find.byWidget(commFlatButton);

    expect(childFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('error'));

    expect(states, [InitialStateMock, ErrorStateMock]);
  });

  testWidgets('Submit custom error event', (WidgetTester tester) async {
    final blocMock = BlocMock();
    final List<Type> states = [];
    blocMock.listen((state) {
      states.add(state.runtimeType);
    });

    final commFlatButton = CommercioFlatButton<BlocMock, EventMock, StateMock,
        LoadingStateMock, ErrorStateMock>(
      loading: (_) => const Text(loadingText),
      child: (_) => const Text(childText),
      event: () => ErrorEventMock(),
      error: (context, err) => Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(err),
        ),
      ),
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    final childFinder = find.text(childText);
    final buttonFinder = find.byWidget(commFlatButton);

    expect(childFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);

    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('error'));

    expect(states, [InitialStateMock, ErrorStateMock]);
  });
}
