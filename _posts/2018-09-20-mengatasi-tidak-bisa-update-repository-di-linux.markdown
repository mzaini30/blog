---
layout: post
title:  "Mengatasi Terminal Tidak Bisa Apt Update"
date:   2018-09-20 10:46:00 +0800
tags: pemrograman
---

You can delete the lock file with the following command:

{% highlight bash %}
sudo rm /var/lib/apt/lists/lock
{% endhighlight %}

{% include iklan2.html %}

You may also need to delete the lock file in the cache directory

{% highlight bash %}
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
{% endhighlight %}