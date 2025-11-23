#
#  docker buildx build -t 111 .
#  docker images
#  docker run 
#  docker run -it 1  # -it запуск множества раз в интерактивном режиме
#
#
#Make yocto poky in Docker conteiner
#
#
#
#  Author Rybochkin Aleksei
#  August 2025
#
#  made for Walnascar 5.2
#
FROM debian

# Getting apt-get repository for Debian 12
RUN echo "deb https://ftp.debian.org/debian/ bookworm contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "deb-src https://ftp.debian.org/debian/ bookworm contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "" >> /etc/apt/sources.list
RUN echo "deb https://ftp.debian.org/debian/ bookworm-updates contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "deb-src https://ftp.debian.org/debian/ bookworm-updates contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "" >> /etc/apt/sources.list
RUN echo "deb https://ftp.debian.org/debian/ bookworm-proposed-updates contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "deb-src https://ftp.debian.org/debian/ bookworm-proposed-updates contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "" >> /etc/apt/sources.list
RUN echo "deb https://ftp.debian.org/debian/ bookworm-backports contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "deb-src https://ftp.debian.org/debian/ bookworm-backports contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "" >> /etc/apt/sources.list
RUN echo "deb https://security.debian.org/debian-security/ bookworm-security contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "deb-src https://security.debian.org/debian-security/ bookworm-security contrib main non-free non-free-firmware" >> /etc/apt/sources.list
RUN echo "" >> /etc/apt/sources.list



# Install packages
RUN apt-get check -y
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install bash -y
RUN apt-get install bash-completion -y

RUN apt-get install fakeroot libncurses5-dev libncurses-dev dwarves build-essential -y
RUN apt-get install gcc bc bison flex libssl-dev libelf-dev cmake fdclone git locales locales-all -y
RUN apt-get install chrpath cpio diffstat gawk adduser coreutils -y

#RUN apt-get install automake1.11 autoproject autotools-dev base-files base-passwd dbus -y
#RUN apt-get install bind9-dnsutils bind9-host bsdutils bzip2 ca-certificates -y
#RUN apt-get install dbus debconf debianutils screenfetch -y
#RUN apt-get install diffstat diffutils discover dmidecode dmsetup dpkg e2fsprogs fdisk file -y
#RUN apt-get install findutils gawk gcc gcc-12-base gcc-multilib gettext-base -y
#RUN apt-get install gpgv grep groff-base grub-common gzip hostname htop -y
#RUN apt-get install kmod less libacl1 -y
#RUN apt-get install libapparmor1 libapt-pkg6.0 libargon2-1 libattr1 libaudit-common libaudit1 libblkid1 -y
#RUN apt-get install libbpf1 libbsd0 libbz2-1.0 libc-bin libc6 libcap-dev libcap-ng0 libcap2 libcap2-bin -y
#RUN apt-get install libcom-err2 libcrypt1 libcryptsetup12 libdb5.3 libdebconfclient0 libdevmapper1.02.1 -y
#RUN apt-get install libedit2 libegl1-mesa libelf1 libext2fs2 libfdisk1 libffi8 libgcc-s1 libgcrypt20 -y
#RUN apt-get install libgmp10 libgmp3-dev libgnutls30 libgpg-error0 libgssapi-krb5-2 libhogweed6 libidn2-0 -y
#RUN apt-get install libip4tc2 libjansson4 libjson-c5 libk5crypto3 libkeyutils1 libkmod2 libkrb5-3 -y
RUN apt-get install libkrb5support0 liblocale-gettext-perl liblockfile-bin liblz4-1 liblzma5 libmd0 -y
#RUN apt-get install libmnl0 libmount1 libmpc-dev libmpfr-dev libncursesw6 libnettle8 libnewt0.52 -y
#RUN apt-get install libnftables1 libnftnl11 libnss-systemd libp11-kit0 libpam-modules libpam-modules-bin -y
#RUN apt-get install libpam-runtime libpam-systemd libpam0g libpcre2-8-0 libpopt0 libproc2-0 libreadline8 -y
#RUN apt-get install libseccomp2 -y
#RUN apt-get install libsemanage2 libsepol2 libslang2 libsmartcols1 libss2 libssl3 libstdc++6 libsystemd-shared -y
#RUN apt-get install libsystemd0 libtasn1-6 libtext-charwidth-perl libtext-iconv-perl libtext-wrapi18n-perl -y
#RUN apt-get install libtinfo6 libtirpc-common libtirpc3 libudev1 libunistring2 libuuid1 libxtables12 libxxhash0 -y
#RUN apt-get install libzstd1 locales login logrotate logsave lsof lz4 lzma make makepp -y
#RUN apt-get install mawk mc mime-support mount nano nasm -y
RUN apt-get install netbase netcat-traditional nftables ninja-build -y
RUN apt-get install openssh-client passwd perl perl-base -y
RUN apt-get install procps pylint python-is-python3 python3 python3-git python3-jinja2 python3-pexpect -y
RUN apt-get install python3-pip python3-pylint-common python3-pylint-plugin-utils python3-pytest-pylint -y
RUN apt-get install python3-reportbug python3-saltpylint readline-common -y
#RUN apt-get install searx sed sensible-utils shim-signed socat -y
RUN apt-get install systemd systemd-sysv systemd-timesyncd sysvinit-utils tar dbus -y

RUN apt-get install tasksel tasksel-data -y
RUN apt-get install texinfo tzdata ucf udev unhide unzip -y
RUN apt-get install usbutils usr-is-merged util-linux util-linux-extra -y
RUN apt-get install wamerican wget xz-utils -y
RUN apt-get install ytcc ytfzf zlib1g zstd -y
RUN apt-get check -y
RUN apt-get clean -y
RUN apt-get autoremove -y


RUN env LANG=en_US.UTF-8
RUN echo "en_US.UTF-8" >> /etc/locale.gen
RUN echo "en_US.UTF-8" >> /etc/default/locale

RUN export LANG=en_US.UTF-8
RUN export LANGUAGE=en_US.UTF-8
RUN export LC_ALL=en_US.UTF-8

#RUN localectl set-locale LANG=en_IN.UTF-8

#RUN locale-gen
RUN update-locale

RUN mkdir /poky
RUN mkdir /poky/build

########################### Create workdir
WORKDIR /poky

#RUN adduser --shell /bin/bash root

RUN su root

COPY ./111.sh /poky/111.sh
#COPY ./poky /poky

# chmod 755 - права на исполнение
RUN chmod -R 755 /bin 
RUN chmod -R 755 /poky
RUN chmod -R 755 /poky/build
RUN chmod +x /poky/build

RUN chmod +x -R /poky
RUN chmod +x /poky/111.sh


##############################  ENV

#ENV bitbake=/poky/build/bitbake/bitbake



#RUN su alex
# native git
EXPOSE 9418 
# native ssh
EXPOSE 22
EXPOSE 80
EXPOSE 443

# Start script
ENTRYPOINT ["/bin/bash"]
#CMD ["bash","/poky/111.sh"]
CMD ["/poky/111.sh"]
