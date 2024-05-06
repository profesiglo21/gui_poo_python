# signals_slots.py

"""Signals and slots example."""

import sys
from functools import partial

from PyQt6.QtWidgets import (
    QApplication,
    QLabel,
    QPushButton,
    QVBoxLayout,
    QWidget
)

def helloWorld():
  if msgLabel.text():
    msgLabel.setText("")
  else:
    msgLabel.setText("Hello, World!")


def greet(message):
  if msgLabel.text():
    msgLabel.setText("")
  else:
    msgLabel.setText(f"Hello, {message}")

if __name__ == "__main__":
  app = QApplication([])
  window = QWidget()
  window.setWindowTitle("Signals and slots")
  layout = QVBoxLayout()

  button1 = QPushButton("Hello")
  button1.clicked.connect(helloWorld)

  button2 = QPushButton("Greet")
  button2.clicked.connect(partial(greet, "¡Mundo!"))

  layout.addWidget(button1)
  layout.addWidget(button2)
  msgLabel = QLabel("")
  layout.addWidget(msgLabel)
  window.setLayout(layout)
  window.show()
  sys.exit(app.exec())