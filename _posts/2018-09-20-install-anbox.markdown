---
layout: post
title:  "Install Anbox di Elementary OS Loki"
date:   2018-09-20 10:06:00 +0800
tags: pemrograman
---

Solution for elementary os:

{% highlight bash %}
$ sudo apt update
$ sudo apt install snapd
$ snap install --classic anbox-installer
#reboot pc
$ anbox-installer
#ignore errors and reboot computer once more
exec /snap/bin/anbox session-manager
# run from start menu Anbox
{% endhighlight %}

For command `exec /snap/bin/anbox session-manager` you can make simple script and append it
to startup applications. That works at my elementary os 0.4 loki.

---

# Update

{% highlight bash %}
$ sudo add-apt-repository ppa:morphis/anbox-support
$ sudo apt update
$ sudo apt install anbox-modules-dkms
{% endhighlight %}

Sumber: <https://github.com/anbox/anbox/blob/master/docs/install.md>