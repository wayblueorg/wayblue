# FAQ

#### SDDM or GDM won't start, why?

There's a known issue preventing user and group creation during image build. As such, you will have to copy the sddm or gdm line from /usr/etc/passwd /usr/etc/group to their equivalent files in /etc. Do NOT copy the entire file or you will overwrite your local user and lock yourself out of your machine.

#### Why do the GDM images have gnome-shell in them?

`rpm-ostree` pulls in all of GNOME when installing GDM. There is currently no way around this. 
