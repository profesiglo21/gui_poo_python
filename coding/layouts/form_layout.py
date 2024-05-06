# f_layout.py

"""Form layout example."""

import sys

from PyQt6.QtWidgets import (
    QApplication,
    QFormLayout,
    QPushButton,
    QLineEdit,
    QWidget,
)

app = QApplication([])
window = QWidget()
window.setWindowTitle("QFormLayout")

layout = QFormLayout()
layout.addRow("Name:", QLineEdit())
layout.addRow("Age:", QLineEdit())
layout.addRow("Job:", QLineEdit())
layout.addRow("Hobbies:", QLineEdit())
layout.addWidget(QPushButton("Top"))
layout.addWidget(QPushButton("Center"))
layout.addWidget(QPushButton("Bottom"))
window.setLayout(layout)

window.show()
sys.exit(app.exec())
