# Nginx site

Nginx HTTP Server site creation and removing tools using command line.

### Contents

1. [Compatibility](#compatibility)
2. [Installation](#installation)
   1. [Ubuntu](#ubuntu)
   2. [Manually](#manually)
3. [Usage](#usage)
   1. [Site creation](#site-creation)
   2. [Site removing](#site-removing)
   3. [Aliases](#aliases)
4. [Removing](#removing)
5. [Author](#author)
6. [License](#license)

## Compatibility

Name | Version
------- | -------
Ubuntu | >= 18.04
Nginx | >= 1

## Installation

### Ubuntu

From PPA:

```bash
sudo add-apt-repository ppa:tarkhov/ppa
sudo apt update
sudo apt install nxsite
```

### Manually

```bash
sudo dpkg -i nxsite_1.0.0-1_amd64.deb
```

## Usage

### Site creation

```bash
sudo nxmksite mydomain mysite.conf ~/myfolder 127.0.0.1
```

This command will create:

* Virtual host `/etc/nginx/sites-available/mysite.conf` with url http://mydomain.
* Folder `~/myfolder`.
* Record in `/etc/hosts` - mydomain   127.0.0.1.

#### Short command

```bash
sudo nxmksite mydomain
```

This command will create:

* Virtual host `/etc/nginx/sites-available/mydomain.conf` with url http://mydomain.
* Folder in current directory with name mydomain.
* Record in `/etc/hosts` - mydomain   127.0.0.1.
* Restart web server.

### Site removing

```bash
sudo nxrmsite mydomain mysite.conf ~/myfolder 127.0.0.1
```

#### Short command

```bash
sudo nxrmsite mydomain
```

### Aliases

Alias | Command
------- | -------
`nxdisable` | `systemctl disable nginx`
`nxenable` | `systemctl enable nginx`
`nxreload` | `systemctl reload nginx`
`nxrestart` | `systemctl restart nginx`
`nxstart` | `systemctl start nginx`
`nxstatus` | `systemctl status nginx`
`nxstop` | `systemctl stop nginx`

## Removing

To completely remove the package run the command:

```bash
sudo apt remove --purge nxsite
```

## Author

**Alexander Tarkhov**

* [Facebook](https://www.facebook.com/alex.tarkhov)
* [Twitter](https://twitter.com/alextarkhov)
* [Medium](https://medium.com/@tarkhov)
* [LinkedIn](https://www.linkedin.com/in/tarkhov/)

## License

This project is licensed under the **MIT License** - see the `LICENSE` file for details.
