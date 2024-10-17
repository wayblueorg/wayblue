<h5 align="center">Notice: These images are considered beta.</h5>

<p align="center">
  <a href="https://github.com/wayblueorg/wayblue">
    <img src="https://github.com/wayblueorg/wayblue/assets/129108030/38139f2c-e91e-40dd-88b1-951c1021c51c" href="[https://github.com/wayblueorg/wayblue](https://github.com/wayblueorg/wayblue)" width=180 />
  </a>
</p>

<h1 align="center">wayblue</h1>


[![wayblue](https://github.com/wayblueorg/wayblue/actions/workflows/build.yml/badge.svg)](https://github.com/wayblueorg/wayblue/actions/workflows/build.yml)
[![Discord](https://img.shields.io/discord/1202304549294190602?style=flat&logo=discord&logoColor=white&label=Discord&labelColor=%235F6AE9&color=%2333CB56)
](https://discord.gg/86fM55XfEq)

This repo takes the [BlueBuild](https://blue-build.org/) template and builds out minimally-opinionated [Fedora Atomic](https://fedoraproject.org/atomic-desktops/) operating system images for the following wayland compositors:

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
- Build in a minimally opinionated config for each compositor and tools that work out of the box

## Why

The Fedora Atomic ecosystem provides excellent base images and tooling for immutable image building. Aside from sway however, there aren't images available for wayland compositors. This repo aims to provide those images and provide them with sane defaults.

For more info on BlueBuild, check out the [BlueBuild homepage](https://blue-build.org/).


## Customization

If you want to add your own customizations on top of wayblue, you are advised strongly against forking. Instead, create a repo for your own image by using the [BlueBuild template](https://github.com/blue-build/template), then change your `base-image` to a wayblue image. This will allow you to apply your customizations to wayblue in a concise and maintainable way, without the need to constantly sync with upstream. 


## Installation

### Available Images
> [!NOTE] 
> *`nvidia-open` images are recommended for systems with Nvidia GPUs Turing or newer.*
> 
> *`nvidia` images are recommended for systems with Nvidia GPUs Pascal or older.*

#### SDDM images (recommended)

| Name                     | WM       | Nvidia Support           |
|--------------------------|----------|--------------------------|
| `wayfire`                | Wayfire  | No                       |
| `wayfire-nvidia`        | Wayfire  | Yes, closed drivers      |
| `wayfire-nvidia-open`   | Wayfire  | Yes, open drivers        |
| `sway`                   | Sway     | No                       |
| `sway-nvidia`           | Sway     | Yes, closed drivers      |
| `sway-nvidia-open`      | Sway     | Yes, open drivers        |
| `hyprland`              | Hyprland | No                       |
| `hyprland-nvidia`       | Hyprland | Yes, closed drivers      |
| `hyprland-nvidia-open`  | Hyprland | Yes, open drivers        |
| `river`                  | River    | No                       |
| `river-nvidia`          | River    | Yes, closed drivers      |
| `river-nvidia-open`     | River    | Yes, open drivers        |


#### GDM images (not recommended) <sup>[why?](https://github.com/wayblueorg/wayblue/blob/live/FAQ.md#why-do-the-gdm-images-have-gnome-shell-in-them)</sup>
| Name                           | WM       | Nvidia Support           |
|--------------------------------|----------|--------------------------|
| `wayfire-gdm`                 | Wayfire  | No                       |
| `wayfire-nvidia-gdm`          | Wayfire  | Yes, closed drivers      |
| `wayfire-nvidia-open-gdm`     | Wayfire  | Yes, open drivers        |
| `sway-gdm`                    | Sway     | No                       |
| `sway-nvidia-gdm`             | Sway     | Yes, closed drivers      |
| `sway-nvidia-open-gdm`        | Sway     | Yes, open drivers        |
| `hyprland-gdm`                | Hyprland | No                       |
| `hyprland-nvidia-gdm`         | Hyprland | Yes, closed drivers      |
| `hyprland-nvidia-open-gdm`    | Hyprland | Yes, open drivers        |
| `river-gdm`                   | River    | No                       |
| `river-nvidia-gdm`            | River    | Yes, closed drivers      |
| `river-nvidia-open-gdm`       | River    | Yes, open drivers        |

### Rebasing

To rebase an existing Silverblue/Kinoite/Sericea installation to the latest build: 
> [!IMPORTANT] 
> The **only** supported tag is `latest`.

> [!NOTE] 
> The two reboots described below are not optional. During installation, the initial boot into wayblue will provision the required sddm user. This is a one time step, all subsequent boots will succeed.

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

#### Nvidia
If you are using an nvidia image, run this after installation:

```
rpm-ostree kargs \
    --append-if-missing=rd.driver.blacklist=nouveau \
    --append-if-missing=modprobe.blacklist=nouveau \
    --append-if-missing=nvidia-drm.modeset=1 \
    --append-if-missing=nvidia-drm.fbdev=1
```

You may also need this (solves flickering and LUKS issues on some nvidia hardware):
```
rpm-ostree kargs \
    --append-if-missing=initcall_blacklist=simpledrm_platform_driver_init
```

#### Nvidia optimus laptop
If you are using an nvidia image on an optimus laptop, run this after installation:

```
ujust configure-nvidia-optimus
```

## Screenshots
![sway](https://github.com/wayblueorg/wayblue/assets/129108030/9dc4d4a2-843a-4598-9717-2be88e23498b)


![hyprland](https://github.com/wayblueorg/wayblue/assets/129108030/dc1422fd-efd5-4ec1-8a2d-e1a3887fe8b8)

## Contributing

Follow the [contributing documentation](CONTRIBUTING.md#contributing), and make sure to respect the [CoC](CODE_OF_CONDUCT.md).

### Development

For local Development [building locally](CONTRIBUTING.md#building-locally) is the recommended approach.
