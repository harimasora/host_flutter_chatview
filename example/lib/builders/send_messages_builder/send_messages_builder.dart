import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';

import 'send_messages_widget/send_messages_widget.dart';

Widget sendMessageBuilder(
  SendMessageController sendMessageController,
) {
  return MySendMessageWidget(
    sendMessageController: sendMessageController,
  );
}
