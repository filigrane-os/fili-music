// Filter field at the top of a list: the kit's FiliTextField (placeholder, a × that clears it, Esc too) in a bar, focused by
// the "focus-filter" action.
import QtQuick
import Fili.Baladeur
import Fili.UI

Rectangle {
    id: bar
    property string placeholder
    property alias text: field.text
    // Only one bar answers the "focus-filter" action
    property bool takesFocusAction: true
    height: 36
    color: FiliTheme.background
    Rectangle {
        anchors.bottom: parent.bottom
        width: parent.width
        height: FiliTheme.borderWidth
        color: FiliTheme.border
    }
    Connections {
        target: Store
        function onFocusFilter() {
            if (bar.takesFocusAction && bar.visible && bar.height > 0)
                field.focusField();
        }
    }
    FiliTextField {
        id: field
        anchors { left: parent.left; right: parent.right; leftMargin: FiliTheme.margin; rightMargin: FiliTheme.margin; verticalCenter: parent.verticalCenter }
        placeholder: bar.placeholder
        clearable: true
    }
}
