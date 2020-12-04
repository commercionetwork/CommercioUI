import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
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
  const initialText = '';
  const childText = 'Child';
  const loadingText = 'Loading';

  testWidgets('Initial state', (WidgetTester tester) async {
    final blocMock = BlocMock();

    expect(blocMock, emitsInOrder([]));

    final commText = CommercioText<BlocMock, EventMock, StateMock,
        InitialStateMock, DataStateMock, LoadingStateMock, ErrorStateMock>(
      loading: (_) => loadingText,
      text: (_, data) => childText,
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(home: Scaffold(body: commText)),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    final textFinder = find.text(initialText);

    expect(textFinder, findsOneWidget);
  });

  testWidgets('Loading state', (WidgetTester tester) async {
    final blocMock = BlocMock();

    expect(blocMock, emitsInOrder([isA<LoadingStateMock>()]));

    final commText = CommercioText<BlocMock, EventMock, StateMock,
        InitialStateMock, DataStateMock, LoadingStateMock, ErrorStateMock>(
      loading: (_) => loadingText,
      text: (_, data) => childText,
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(home: Scaffold(body: commText)),
    );

    blocMock.add(LoadingEventMock());

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    await expectLater(find.text(loadingText), findsOneWidget);
  });

  testWidgets('Data state', (WidgetTester tester) async {
    final blocMock = BlocMock();

    expect(blocMock, emitsInOrder([isA<DataStateMock>()]));

    final commText = CommercioText<BlocMock, EventMock, StateMock,
        InitialStateMock, DataStateMock, LoadingStateMock, ErrorStateMock>(
      loading: (_) => loadingText,
      text: (_, data) => childText,
    );

    final root = BlocProvider.value(
      value: blocMock,
      child: MaterialApp(home: Scaffold(body: commText)),
    );

    blocMock.add(DataEventMock());

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    await expectLater(find.text(childText), findsOneWidget);
  });
}
