// A small modal on the kit's FiliDialog: a title, optionally a list to choose from (existing playlists), a text field.
// open(title, text, choices, confirmLabel, fieldLabel); on accepted() read `value` (the trimmed text) and `choice` (-1 when
// nothing was chosen).
import QtQuick
import Fili.Baladeur
import Fili.UI

FiliDialog {
    id: dlg
    property string fieldLabel
    property var choices: []
    property int choice: -1
    readonly property string value: input.text.trim()

    // Same name as the kit's open(): this one takes the content of the prompt
    function open(titleText, initial, list, confirm, label) {
        title = titleText;
        choices = list || [];
        choice = -1;
        confirmLabel = confirm || Fili.tr("OK");
        fieldLabel = label || "";
        input.text = initial || "";
        visible = true;
        input.focusField();
    }
    // Nothing to do with an empty field and no choice
    confirmEnabled: choice >= 0 || value !== ""

    Repeater {
        model: dlg.choices
        Rectangle {
            id: ch
            required property var modelData
            width: dlg.cardWidth - 2 * FiliTheme.space5
            height: 26
            radius: FiliTheme.radiusControl
            color: dlg.choice === modelData.id ? FiliTheme.surfaceActive : chArea.containsMouse ? FiliTheme.surfaceHover : "transparent"
            Text {
                anchors { fill: parent; leftMargin: FiliTheme.space2; rightMargin: FiliTheme.space2 }
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                text: ch.modelData.label
                font.family: FiliTheme.font
                font.pixelSize: FiliTheme.sizeList
                color: FiliTheme.text
            }
            MouseArea { id: chArea; anchors.fill: parent; hoverEnabled: true; onClicked: dlg.choice = dlg.choice === ch.modelData.id ? -1 : ch.modelData.id }
        }
    }
    Text {
        visible: dlg.fieldLabel !== ""
        text: dlg.fieldLabel
        font.family: FiliTheme.font
        font.pixelSize: FiliTheme.sizeSmall
        color: FiliTheme.muted
    }
    FiliTextField {
        id: input
        width: parent.width
        onTextChanged: if (text !== "")
            dlg.choice = -1
        onAccepted: dlg.accept()
    }
}
