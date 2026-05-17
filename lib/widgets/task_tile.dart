import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function(bool?) onChanged;
  final VoidCallback onDelete;

  const TaskTile({
    super.key,
    required this.task,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: task.isDone
              ? const Color(0xFF1A1A2E).withOpacity(0.4)
              : const Color(0xFF1A1A2E),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
        color: task.isDone
              ? Colors.white.withOpacity(0.05)
              : const Color(0xFF00F5A0).withOpacity(0.15),
          width: 1,
        ),
    boxShadow: task.isDone
        ? []
        : [
            BoxShadow(
              color: const Color(
                    0xFF00F5A0,
                  ).withOpacity(0.06),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            // Custom Checkbox
            GestureDetector(
              onTap: () => onChanged(!task.isDone),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.elasticOut,
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: task.isDone
                      ? const Color(0xFF00F5A0)
                      : Colors.transparent,
                  border: Border.all(
                    color: task.isDone
                          ? const Color(0xFF00F5A0)
                          : Colors.white.withOpacity(0.3),
                    width: 2,
                  ),
                ),
                child: task.isDone
                    ? const Icon(
                        Icons.check,
                        size: 14,
                        color: Color(0xFF0D0D1A),
                      )
                    : null,
              ),
            ),
            const SizedBox(width: 14),
            // Task Title
            Expanded(
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2,
                color: task.isDone
                      ? Colors.white.withOpacity(0.3)
                      : Colors.white.withOpacity(0.9),
                  decoration: task.isDone
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                  decorationColor: Colors.white.withOpacity(0.3),
                ),
                child: Text(task.title),
              ),
            ),
            // Delete Button
            GestureDetector(
              onTap: onDelete,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.close_rounded,
                  size: 16,
                  color: Colors.white.withOpacity(0.3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
