<h5 align="center">Notice: These images are all in an alpha state, use at your own risk.</h5>

<p align="center">
  <a href="https://github.com/wayblueorg/wayblue">
    <img src="https://github.com/wayblueorg/wayblue/assets/129108030/38139f2c-e91e-40dd-88b1-951c1021c51c" href="[https://github.com/secureblue/secureblue](https://github.com/wayblueorg/wayblue)" width=180 />
  </a>
</p>

<h1 align="center">wayblue</h1>


[![secureblue](https://github.com/wayblueorg/wayblue/actions/workflows/build.yml/badge.svg)](https://github.com/wayblueorg/wayblue/actions/workflows/build.yml)

This repo takes the [uBlue](https://universal-blue.org/) base starting point and builds out minimally-opinionated images for the following wayland compositors

- wayfire (with wf-shell)
- hyprland (with waybar)
- sway (with waybar)
- river (with waybar)

## What

Changes and decisions in the images:
- Set saner SDDM defaults
- Set saner wf-shell defaults
- Set saner waybar defaults
- Add a reasonable suite of tools that are needed to have a working desktop with a wayland compositor 
- Build in a minimally opinionated config for each compositor and tools that works out of the box

## Why

Fedora and uBlue provide excellent base images and tooling for immutable image building. Aside from sway however, there aren't images available for wayland compositors. This repo aims to provide those images and provide them with sane defaults.

For more info on uBlue and BlueBuild, check out the [uBlue homepage](https://universal-blue.org/) and the [BlueBuild homepage](https://blue-build.org/).


## Customization

If you want to add your own customizations on top of wayblue, you are advised strongly against forking. Instead, create a repo for your own image by using the [BlueBuild template](https://github.com/blue-build/template), then change your `base-image` to a wayblue image. This will allow you to apply your customizations to wayblue in a concise and maintainable way, without the need to constantly sync with upstream. 


## Installation

### Available Images

- wayfire
- wayfire-nvidia
- sway
- sway-nvidia
- hyprland
- hyprland-nvidia
- river
- river-nvidia

### Rebasing

To rebase an existing Silverblue/Kinoite installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/wayblueorg/$IMAGE_NAME:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/wayblueorg/$IMAGE_NAME:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```
  
### Post-install

After installation, [yafti](https://github.com/ublue-os/yafti) will open. Make sure to follow the steps listed carefully and read the directions closely.

#### Nvidia
If you are using an nvidia image, run this after installation:

```
rpm-ostree kargs \
    --append=rd.driver.blacklist=nouveau \
    --append=modprobe.blacklist=nouveau \
    --append=nvidia-drm.modeset=1
```

## Contributing

Follow the [contributing documentation](CONTRIBUTING.md#contributing), and make sure to respect the [CoC](CODE_OF_CONDUCT.md).

### Development

For local Development [building locally](CONTRIBUTING.md#building-locally) is the recommended approach.
