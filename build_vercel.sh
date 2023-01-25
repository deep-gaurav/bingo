git clone --depth 1 --branch 3.3.10 https://github.com/flutter/flutter.git
./flutter/bin/flutter precache

./flutter/bin/flutter doctor
./flutter/bin/flutter clean
./flutter/bin/flutter pub get
./flutter/bin/flutter build web --dart-define=BACKEND_URL=$BACKEND_URL --web-renderer canvaskit --release --verbose
