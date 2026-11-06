import QtQuick
import Quickshell.Hyprland
import qs.Ui
import qs.Commons
import qs.Commons as Commons

BarWidget {
  id: root
  moduleName: "active_monitor"

  implicitWidth: label.implicitWidth
  implicitHeight: root.barSize

  readonly property string icon: ""
  readonly property int spacing: 4

  Row {
    id: label
    anchors.centerIn: parent
    spacing: root.spacing

    Loader {
      active: (Hyprland.focusedMonitor.name === Screen.name)
      sourceComponent: Component {
        Text {
          text: root.icon
          color: root.bar.barForeground
          font.family: root.bar ? root.bar.fontFamily : Style.font.family
          font.pixelSize: Style.font.body
        }
      }
    }

    Text {
      text: Screen.name
      color: root.bar.barForeground
      font.family: root.bar ? root.bar.fontFamily : Style.font.family
      font.pixelSize: Style.font.body
    }
  }
}
