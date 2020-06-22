import 'package:commercio_ui/commercio_ui.dart';

class CommercioMintLoading extends CommercioMintState
    implements CommercioLoading {
  const CommercioMintLoading();

  @override
  List<Object> get props => [];
}

class CommercioMintOpenCdpLoading extends CommercioMintLoading {
  const CommercioMintOpenCdpLoading();
}

class CommercioMintCloseCdpLoading extends CommercioMintLoading {
  const CommercioMintCloseCdpLoading();
}
