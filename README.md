# PagesTest

**THIS PROJECT IS IN PRE ALPHA, DOCUMENTATION IS NOT ACCURATE**

Choose whether you wish to "download and install manually" or you wish to
"link the repository".

## Download and install manually

Find the .deb file that you wish to install, in the following we will use
`juliafromtar_1.8.0-1_amd64.deb`. First step is to download the file to the
computer that you wish to install it on. Hereafter you go to the directory
where you have stored it and type:

```
sudo dpkg -i juliafromtar_1.8.0-1_amd64.deb
```

## Link the repository

Type the following in the `bash` commandline:

```
cp -i /etc/apt/sources.list . # Makes a backup of /etc/apt/sources.list in case something goes wrong
echo 'deb [trusted=yes] https://ghtaarn.github.io/PagesTest stable/' | sudo dd conv=notrunc oflag=append of=/etc/apt/sources.list
sudo apt-get update
sudo apt-get install juliafromtar
```

Hereafter, any time you do an `apt upgrade`, the `juliafromtar` package
will be upgraded to the latest version.

*If you wish to use `LTS` instead of `stable`, just substitute `stable`
with `lts` in the above `bash` commands.*

## Issues

These files are far from perfect. If you link in the repository you will get a
lot of warnings both when you `apt update` and when you install and upgrade.
I am assuming that these are just warnings and that they do not have any
other consequences. I have been using the .deb files manually installed for
several months now and have had no serious issues.

Please report issues in the issue tracker and of course if you are
knowledgable about .deb files and repositories and want to help fix some of
the warnings then that would be great. I am not a Debian packaging expert
and only wrote this because I wanted to use something like this myself.

## References

https://gist.github.com/awesomebytes/ce0643c1ddead589ab06e2a1e4c5861b

