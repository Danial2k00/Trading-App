import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class ChatPanel extends StatelessWidget {
  const ChatPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.18,
      minChildSize: 0.12,
      maxChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.surface800,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            border: Border(
              top: BorderSide(color: AppColors.divider700),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.divider700,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _MessageBubble(
                      isUser: true,
                      text:
                          'Analyze EURUSD 1H timeframe using SMC and price action.',
                    ),
                    _MessageBubble(
                      isUser: false,
                      text:
                          'Signal: BUY. Price is reacting to a bullish order block '
                          'with BOS and unfilled FVG. Risk remains; no profit guarantees.',
                    ),
                    const SizedBox(height: 12),
                    _ReasonList(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Ask the AI to analyze...',
                          suffixIcon: Icon(
                            Icons.mic_none,
                            color: AppColors.textMuted,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                      color: AppColors.neutralAi,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({
    required this.isUser,
    required this.text,
  });

  final bool isUser;
  final String text;

  @override
  Widget build(BuildContext context) {
    final alignment = isUser ? Alignment.centerRight : Alignment.centerLeft;
    final color =
        isUser ? AppColors.neutralAi.withOpacity(0.15) : AppColors.surface750;

    return Align(
      alignment: alignment,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.divider700),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}

class _ReasonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodySmall;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Reasons', style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 8),
        Text('• BOS confirmed on 1H', style: textStyle),
        Text('• Bullish order block held', style: textStyle),
        Text('• FVG retracement completed', style: textStyle),
        Text('• Liquidity sweep before reversal', style: textStyle),
      ],
    );
  }
}
