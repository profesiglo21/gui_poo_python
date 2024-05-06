# h_layout.py

"""Horizontal layout example."""

import sys

from PyQt6.QtWidgets import (
    QApplication,
    QHBoxLayout,
    QPushButton,
    QWidget,
)

app = QApplication([])
window = QWidget()
window.setWindowTitle("QHBoxLayout")

layout = QHBoxLayout()
layout.addWidget(QPushButton("Left"))
layout.addWidget(QPushButton("Center"))
layout.addWidget(QPushButton("Right"))
window.setLayout(layout)

# 4. Show your application's GUI
window.show()

# 5. Run your application's event loop
sys.exit(app.exec())