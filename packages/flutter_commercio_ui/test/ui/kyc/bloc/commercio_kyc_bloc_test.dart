import 'package:commerciosdk/entities/membership/export.dart';
import 'package:flutter_commercio_ui/flutter_commercio_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final correctMembershipType = MembershipType.BRONZE;

  group('MembershipTypeChooser Bloc', () {
    test('Correct', () {
      final bloc = CommercioKycMembershipTypeChooserBloc();
      expect(
        bloc,
        emitsInOrder([
          CommercioKycChangedMembershipState(
            membershipType: MembershipType.BLACK,
          ),
        ]),
      );

      expect(bloc.membershipType, correctMembershipType);

      bloc.add(
        CommercioKycChangeMembershipTypeEvent(
          membershipType: MembershipType.BLACK,
        ),
      );
    });
  });
}
