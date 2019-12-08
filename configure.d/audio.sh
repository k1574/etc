#!/bin/sh

arg="$@"

# Presets.
# Helm.
mkdir -p $HOME/.helm/patches/
rm -r $arg "$HOME/.helm/patches/User Patches"
ln -s $arg "$AUDIO/my/presets/helm" "$HOME/.helm/patches/User Patches"

# Amsynth.
mkdir -p $arg $HOME/.amsynth/
rm -r $arg $HOME/.amsynth/banks
ln -s $arg $AUDIO/my/presets/amsynth $HOME/.amsynth/banks

# Hydrogen.
rm -r $arg $HOME/.hydrogen
ln -s $arg $AUDIO/hydrogen/ $HOME/.hydrogen

# Zyn.
#sudo ln -s $arg $HOME/audio/my/presets/zynaddsubfx/* /usr/share/zynaddsubfx/banks/
