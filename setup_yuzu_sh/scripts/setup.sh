# Verify & Install script: https://github.com/nzws/setup.yuzu.sh

# Note: To update the hash, use `sh scripts/update-hash.sh`
VERIFY_HASH="28c37adfa7b8ba3e5a51d615da74ef3df72f8eb14920348e7800a2726ff18e4a"

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
