import QtQuick
import Quickshell.Hyprland
import qs.Ui

BarWidget {
  id: root
  moduleName: "active_monitor"

  implicitWidth: text.implicitWidth
  implicitHeight: text.implicitHeight

  WidgetButton {
    id: text
    anchors.fill: parent
    bar: root.bar
    text: Hyprland.focusedMonitor.name == Screen.name ? " " + Screen.name : "  " + Screen.name
  }
}
