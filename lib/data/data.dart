library data;

export 'secret_storage.dart';
export 'secret_storage_stub.dart'
    if (dart.library.html) 'secret_storage_web.dart'
    if (dart.library.io) 'secret_storage_io.dart';
