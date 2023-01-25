git clone -b stable https://github.com/flutter/flutter.git
./flutter/bin/flutter precache

./flutter/bin/flutter doctor
./flutter/bin/flutter clean

./flutter/bin/flutter build web --dart-define=BACKEND_URL=$BACKEND_URL --web-renderer canvaskit --release --verbose
