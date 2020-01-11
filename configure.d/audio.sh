#!/bin/sh

arg="$@"

# Presets.
# Helm.
mkdir -p "$HOME/.helm/patches/"
rm -f  "$HOME/.helm/patches/User Patches"
ln -s "$AUDIO/my/presets/helm" "$HOME/.helm/patches/User Patches"

# Amsynth.
mkdir -p  "$HOME/.amsynth/"
rm -f "$HOME/.amsynth/banks"
ln -s "$AUDIO/presets/synth/amsynth" "$HOME/.amsynth/banks"

# Hydrogen.
rm -f "$HOME/.hydrogen"
ln -s "$AUDIO/hydrogen/" "$HOME/.hydrogen"

# Zyn.
#sudo ln -s  "$HOME/audio/my/presets/zynaddsubfx/*" "/usr/share/zynaddsubfx/banks/"
