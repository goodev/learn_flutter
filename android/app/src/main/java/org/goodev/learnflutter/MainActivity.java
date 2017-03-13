package org.goodev.learnflutter;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;

// FlutterActivity 代码位于 https://github.com/flutter/engine/blob/master/shell/platform/android/io/flutter/app/FlutterActivity.java
// 里面使用了全屏的 FlutterView， 在 FlutterView  运行 Flutter app 代码。
public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}

