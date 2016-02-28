## Install and Update Software

### Synaptic Package Manager
Launch the Synaptic Package Manager to find and install new software. 
Synaptic is a graphical interface to the `apt-get` command and will install software intended for DERP and other debain-based systems. You can learn more about Synaptic [here](https://help.ubuntu.com/community/SynapticHowto)

There's a simple search bar to make it easy to find packages you are interested in. If you don't find the package you are looking for, hit the **Reload** button to refresh Synaptic's record of available packages.

![Install software with Synaptic](images/appscreen_synaptic.jpg)

### Example: Installing Scratch Programming Environment
Using Synapitc is very easy. For example, if you wanted to install the Scratch Programming Environment, you can simply search for "scratch" and you'll get a lot of results. Scroll through, and you'll eventually find "scratch" in the packages window.
However, you'll probably want to narrow your results with better search terms, such as "scratch programming environments"

![Search Synaptic for Scratch](images/screen_scratchsearch.jpg)

When search is complete, you can select "scratch" from the package panel.

![Scratch package found](images/screen_scratchfound.jpg)

Press the top "Apply" button, and you'll get the following dialog:

![Scratch package found](images/screen_instscratch_02.jpg)

and you'll be notified of the progress:

![Scratch installing](images/screen_instscratch_03.jpg)

After a minute or so, you'll be notified that it's finished:

![Scratch installed](images/screen_instscratch_04.jpg)

Now that it's installed, you can launch scratch:

![Scratch installed](images/screen_scratchinstalled.jpg)

### Auto Update
CHIP will automatically look for any updates and alert you if updates are available for your existing software and the operating system.

### apt-get

If you are using the commandline, you will use `apt-get` to install and update new software.

If you are new to apt, some important commands to know:

  * `sudo apt-get update` updates the information from repositories, so any installs you make with `install` will be the latest package
  * `sudo apt-get upgrade` upgrades any installed packages.
  * `sudo apt-get install (name of package)` to install a package and any of its dependencies.
  * `sudo apt-get remove (name of package)` will remove a package and any dependencies not used by other packages
  * `sudo apt-get purge  (name of package)` will remove a package and any dependencies not used by other packages along with all settings data
  * `apt-cache search (search terms)` will search through the package repositories for names and descriptions that include your search term.

  