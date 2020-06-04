part of 'commercio_account_ui.dart';

class GenerateWalletFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingGenerateWallet,
    CommercioAccountGenerateWalletError> {
  GenerateWalletFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () =>
              const CommercioAccountGenerateNewWalletEvent(),
          errorCallback: errorCallback,
        );
}

class RestoreWalletFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingRestoreWallet,
    CommercioAccountRestoreWalletError> {
  RestoreWalletFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () =>
              const CommercioAccountRestoreWalletEvent(),
          errorCallback: errorCallback,
        );
}

class RequestFreeTokensFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingRequestFreeTokensWallet,
    CommercioAccountRequestFreeTokensError> {
  RequestFreeTokensFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () =>
              const CommercioAccountRequestFreeTokensEvent(),
          errorCallback: errorCallback,
        );
}

class CheckBalanceFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingCheckBalance,
    CommercioAccountCheckBalanceError> {
  CheckBalanceFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () => const CommercioAccountCheckBalanceEvent(),
          errorCallback: errorCallback,
        );
}

class SendTokensFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingSendTokens,
    CommercioAccountSendTokensError> {
  SendTokensFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    @required String recipientAddress,
    @required List<StdCoin> amount,
    List<StdCoin> feeAmount,
    String gas,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () => CommercioAccountSendTokensEvent(
              recipientAddress: recipientAddress,
              amount: amount,
              feeAmount: feeAmount,
              gas: gas),
          errorCallback: errorCallback,
        );
}

class GenerateQrFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingGenerateQr,
    CommercioAccountGenerateQrError> {
  GenerateQrFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () => const CommercioAccountGenerateQrEvent(),
          errorCallback: errorCallback,
        );
}

class GeneratePairwiseWalletFlatButton extends EventFlatButton<
    CommercioAccountBloc,
    CommercioAccountEvent,
    CommercioAccountState,
    CommercioAccountLoadingGeneratePairwiseWallet,
    CommercioAccountGeneratePairwiseWalletError> {
  GeneratePairwiseWalletFlatButton({
    Key key,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color color,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry padding,
    VisualDensity visualDensity,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus,
    MaterialTapTargetSize materialTapTargetSize,
    Widget Function() loadingChild,
    Widget Function() child,
    void Function(String errorMessage) errorCallback,
  }) : super(
          key: key,
          onHighlightChanged: onHighlightChanged,
          textTheme: textTheme,
          textColor: textColor,
          disabledTextColor: disabledTextColor,
          color: color,
          disabledColor: disabledColor,
          focusColor: focusColor,
          hoverColor: hoverColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          colorBrightness: colorBrightness,
          padding: padding,
          visualDensity: visualDensity,
          shape: shape,
          clipBehavior: clipBehavior,
          focusNode: focusNode,
          autofocus: autofocus,
          materialTapTargetSize: materialTapTargetSize,
          loadingChild: loadingChild,
          child: child,
          accountEventCallback: () =>
              const CommercioAccountGeneratePairwiseWalletEvent(),
          errorCallback: errorCallback,
        );
}
