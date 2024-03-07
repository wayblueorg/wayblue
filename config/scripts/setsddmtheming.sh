#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sed -i 's/color: "black"/color: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblPassword/id: lblPassword\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblName/id: lblName\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblSession/id: lblSession\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblLayout/id: lblLayout\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: errorMessage/id: errorMessage\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
