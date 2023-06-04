FROM archlinux

RUN pacman -Syu --noconfirm &&\
    pacman -S --noconfirm base-devel

RUN useradd -m -U abc &&\
    echo 'abc ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers

USER abc
