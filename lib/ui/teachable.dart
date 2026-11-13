import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class Teachable extends StatefulWidget {
  const Teachable({super.key, required this.path, this.results});

  final String path;
  final ValueChanged<String>? results;

  @override
  State<Teachable> createState() => _TeachableState();
}

class _TeachableState extends State<Teachable> {
  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialFile: widget.path,
      initialSettings: InAppWebViewSettings(
        mediaPlaybackRequiresUserGesture: false,
        useHybridComposition: true,
        allowsInlineMediaPlayback: true,
      ),
      onWebViewCreated: (controller) {
        controller.addJavaScriptHandler(
          handlerName: 'updater',
          callback: (args) {
            if (args.isEmpty || args.first is! List) {
              return;
            }

            final predictions = args.first as List;
            final results = <String, double>{};
            for (final prediction in predictions) {
              if (prediction is Map &&
                  prediction['className'] is String &&
                  prediction['probability'] is num) {
                results[prediction['className'] as String] =
                    (prediction['probability'] as num).toDouble();
              }
            }
            widget.results?.call(jsonEncode(results));
          },
        );
      },
      onPermissionRequest: (controller, request) async {
        return PermissionResponse(
          resources: request.resources,
          action: PermissionResponseAction.GRANT,
        );
      },
    );
  }
}
