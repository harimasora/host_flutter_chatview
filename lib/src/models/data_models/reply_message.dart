/*
 * Copyright (c) 2022 Simform Solutions
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
import 'package:chatview/chatview.dart';

class ReplyMessage<Content extends MessageContent> extends UserMessage<Content> {
  ReplyMessage({
    required super.id,
    required super.idGroup,
    required super.sentBy,
    required super.sentAt,
    super.reactions = const {},
    super.isStarred = false,
    super.readBy = const {},
    required super.content,
  }) : super(replyOfMsg: null);

  @Deprecated('ReplyMessage cannot have replyTo')
  @override
  ReplyMessage? get replyOfMsg => null;

  factory ReplyMessage.fromJson(Map<String, dynamic> map) {
    final message = UserMessage<Content>.fromJson(map);
    return ReplyMessage<Content>(
      id: message.id,
      idGroup: message.idGroup,
      sentBy: message.sentBy,
      sentAt: message.sentAt,
      reactions: message.reactions,
      isStarred: message.isStarred,
      readBy: message.readBy,
      content: message.content,
    );
  }
}
