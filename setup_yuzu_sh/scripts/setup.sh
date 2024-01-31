# Verify & Install script: https://github.com/nzws/setup.yuzu.sh

# Note: To update the hash, use `sh scripts/update-hash.sh`
VERIFY_HASH="a6d378cea6dd1345e072ad6eacc96b34706a46b74c3eb5fa668081375806d83e"

PF="[setup.yuzu.sh]"
GH_USERNAME="nzws"

echo "$PF Welcome to installer, this script is created for @$GH_USERNAME."
echo "After 5s, install will start."
sleep 5

INSTALLER="$(curl -fsLS https://chezmoi.io/get)"
INSTALLER_HASH="$(echo $INSTALLER | sha256sum | cut -d' ' -f1)"

if [ "$VERIFY_HASH" != "$INSTALLER_HASH" ]; then
    echo "$PF Chezmoi installer hash does not match, Please update the hash in the script!"
    echo "Aborting"

    exit 1
fi

sh -c "$INSTALLER" -- init --apply "$GH_USERNAME"
