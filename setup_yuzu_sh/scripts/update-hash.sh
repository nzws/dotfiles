INSTALLER="$(curl -fsLS https://chezmoi.io/get)"
INSTALLER_HASH="$(echo $INSTALLER | sha256sum | cut -d' ' -f1)"
SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo "$INSTALLER" > .chezmoi-installer
sed -i s/VERIFY_HASH=\"[^\"]*\"/VERIFY_HASH=\"$INSTALLER_HASH\"/ "$SCRIPT_DIR/../setup_linux_and_darwin.sh"

echo "Hash updated, you must check the installer script in .chezmoi-installer"
