## Pdfium Android bindings

### This is a fork of [barteksc/PdfiumAndroid](https://github.com/barteksc/PdfiumAndroid). It is used with my fork of [barteksc/AndroidPdfViewer](https://github.com/barteksc/AndroidPdfViewer). This is an up to date version of the library, since the original library is abandonware.

### Import

```
repositories {
    maven { url "https://andob.io/repository/open_source" }
}
```

```
dependencies {
	implementation 'ro.andob.pdfium-android:pdfium-android:1.1.3'
}
```

### Upgrading Pdfium

1. Build [pdfium](https://pdfium.googlesource.com/pdfium/) from source or download prebuilt images. For this example, I use binaries downloaded from [bblanchon/pdfium-binaries](https://github.com/bblanchon/pdfium-binaries). Download all 4 archives and extract them (Android arm, arm64, x86, x64).
2. From the extracted arm64 archive, copy ``libpdfium.so`` binary into ``src/main/cpp/lib/arm64-v8a``.
3. From the extracted arm archive, copy ``libpdfium.so`` binary into ``src/main/cpp/lib/armeabi-v7a``.
4. From the extracted x86 archive, copy ``libpdfium.so`` binary into ``src/main/cpp/lib/x86``.
5. From the extracted x64 archive, copy ``libpdfium.so`` binary into ``src/main/cpp/lib/x86_64``.
3. Delete everything from ``src/main/include`` except ``utils`` directory.
4. Copy everything from the arm64 archive, ``include`` directory into ``src/main/include``
5. Build and fix build errors.

### Licensed under Apache License
