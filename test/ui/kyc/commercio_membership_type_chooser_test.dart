import 'package:commercio_ui/ui/kyc/export.dart';
import 'package:commerciosdk/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Choose a different membership', (
    WidgetTester tester,
  ) async {
    final bloc = CommercioKycMembershipTypeChooserBloc();

    expectLater(
      bloc,
      emitsInOrder([
        CommercioKycChangedMembershipState(
          membershipType: MembershipType.BLACK,
        ),
      ]),
    );

    final commFlatButton = CommercioMembershipTypeChooser(
      shrinkWrap: true,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    for (final membershipType in MembershipType.values) {
      expect(find.text(membershipType.value.toUpperCase()), findsOneWidget);
    }

    final blackWidget = find.text(MembershipType.BLACK.value.toUpperCase());
    await tester.tap(blackWidget);
  });

  testWidgets('Optional fields', (
    WidgetTester tester,
  ) async {
    final title = (MembershipType m) => Text(m.value);
    final radioActiveColor = (MembershipType) => Colors.blue;
    final radioToggleable = (MembershipType) => false;
    final radioIsThreeLine = (MembershipType) => false;
    final radioSecondary = (MembershipType) => Text('radioSecondary');
    final radioSelected = (MembershipType) => false;
    final radioControlAffinity =
        (MembershipType) => ListTileControlAffinity.platform;
    final radioAutofocus = (MembershipType) => false;

    final bloc = CommercioKycMembershipTypeChooserBloc();

    final commFlatButton = CommercioMembershipTypeChooser(
      shrinkWrap: true,
      title: title,
      radioActiveColor: radioActiveColor,
      radioToggleable: radioToggleable,
      radioIsThreeLine: radioIsThreeLine,
      radioSecondary: radioSecondary,
      radioSelected: radioSelected,
      radioControlAffinity: radioControlAffinity,
      radioAutofocus: radioAutofocus,
    );

    final root = BlocProvider.value(
      value: bloc,
      child: MaterialApp(
        home: Scaffold(
          body: commFlatButton,
        ),
      ),
    );

    await tester.pumpWidget(root);
    await tester.pumpAndSettle();

    for (final membershipType in MembershipType.values) {
      expect(find.text(membershipType.value), findsOneWidget);
    }

    expect(
      find.text('radioSecondary'),
      findsNWidgets(MembershipType.values.length),
    );
  });
}
