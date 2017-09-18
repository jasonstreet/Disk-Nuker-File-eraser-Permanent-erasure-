Universal USB Installer ©2009-2014 Lance http://www.pendrivelinux.com (offered under GNU GPL License) - see Uni-USB-Installer-Copying

Background of Universal USB Installer (UUI):

Universal USB Installer is an easy to use installer script I wrote using NSIS (Nullsoft Scriptable Install System) to automate the creation of a bootable USB device containing the Live Linux Distribution of your choice. 

How Universal USB Installer (UUI) WORKS:

This tool utilizes Syslinux to make the drive bootable, and in some cases chainloads to Grub4DOS and uses a corresponding menu.lst. A syslinux.cfg file or text.cfg file may also used in some cases. 
7-zip is used to extract the files from the ISO or Zip to the USB device. The compressed filesystem of the Live Linux distribution being placed on the device is not altered in any way. 
DD for Windows (dd.exe) and Mke2fs are used to make a casper-rw persistent file for storing changes. The casper persistent feature was created by Ubuntu and can in theory be used on any Ubuntu based remix.

Credits Resources and Tools used:
  
    * Grub4DOS grldr © the Gna! people http://www.gnu.org/software/grub (unmodified binary used) : Specific Grub4DOS link: http://gna.org/projects/grub4dos/
    * Syslinux © H. Peter Anvin http://syslinux.zytor.com (unmodified binary used)
    * DD for Windows dd.exe © John Newbigin http://www.chrysocome.net/dd (unmodified binary used)
    * mke2fs.exe © Matt WU http://ext2fsd.sourceforge.net (unmodified binary used)
    * 7-Zip is © Igor Pavlovis http://7-zip.org (unmodified binaries were used)
	* Fat32format.exe © Tom Thornhill Ridgecorp Consultants http://www.ridgecrop.demon.co.uk (unmodified binary used)	
    * Created with NSIS Installer © Contributors http://nsis.sourceforge.net (used to compile the .nsi script)
	
NSIS is the easiest method I could find to automate the creation process, aside from batch installers which we have moved away from.

To replace my tutorials and batch installer scripts, I initially created individual USB Installers that could be used to put a specific Live Linux Distro on USB. 
The individual USB installers were originally based on Cedric Tissieres's Tazusb.exe for Slitaz (slitaz@objectif-securite.ch). 
Cedrics Tazusb installer helped me quickly understand how NSIS works and how it could be applied to this situation. Remnants of Tazusb may even still reside in the UUI script. 

Many textbook and online resources were also used over the past several years to help me understand how to put everything together.
	
Changelog:

    09/12/14 - Version 1.9.5.6: Update to support Ubuntu, Edubuntu, Kubuntu, Lubuntu, and Xubuntu 14.04.1 + 14.10, Linux Mint 17, and Debian Live 7.6
    07/29/14 - Version 1.9.5.5: Update to support Peach OSI
    06/29/14 - Version 1.9.5.4: Update to support newer syslinux version packed with Tails and Clonezilla.
    05/29/14 - Version 1.9.5.3: Update Ubuntu, CentOS, Debian, and Linux Mint Download Links.
    01/16/14 - Version 1.9.5.2: Update to support Desinfect, Antivirus Live CD, Fedora 20, LXLE Desktop, Kon-Boot Purchased, Sparky, SolydX, and Manjaro Linux.
    11/24/13 - Version 1.9.5.1: Modify chain.c32 to address Insane Primary (MBR) partition error. 
    11/22/13 - Version 1.9.5.0: Add OpenSuse 32/64bit Entries.
    11/20/13 - Version 1.9.4.9: Fix broken Ubuntu Server options.
    11/12/13 - Version 1.9.4.8: Fix broken Kaspersky Rescue Disk 10 entry. Reconfigure to auto detect ISO size.
    11/09/13 - Version 1.9.4.7: Re-Enable Ubuntu Persistence Features.
    11/07/13 - Version 1.9.4.6: Fixed TAILS and Kon-Boot entries. Added Falcon 4 entry.
    11/05/13 - Version 1.9.4.5: Wildcard selections to ease user choices, automate config append, and remove manually created config files.
    10/17/13 - Version 1.9.4.4: Added Ubuntu, Edubuntu, Kubuntu, Lubuntu, and Xubuntu 13.10
    09/16/13 - Version 1.9.4.3: Added AOMEI (Disk Cloning tool), and gNewSense.
    09/12/13 - Version 1.9.4.2: Drop-down now displays Volume Label, and Capacity of each drive.
    09/03/13 - Version 1.9.4.1: Update to support Ubuntu 12.04.3.
    08/27/13 - Version 1.9.4.0: Update to support Fusion Linux 16, Peppermint 4. Add persistent option to Ubuntu 13.xx grub loopback.cfg file.
    08/01/13 - Version 1.9.3.9: Update to support newer Avira Antivir Rescue Disk.
    07/26/13 - Version 1.9.3.8: Update to support Deft Linux 8.
    07/10/13 - Version 1.9.3.7: Update to support Knoppix 7.2, Sugar on a Stick 19, Fedora 19, Pear OS 7, Korora 19, and Antix 13.
    06/26/13 - Version 1.9.3.6: Update to support Ophcrack 3.6.0, Fix broken Ubuntu Server 12.04.2 Installer/Alternate options.
    06/04/13 - Version 1.9.3.5: Update to support Linux Mint 15, and Ubuntu Server 13.10/13.04 Installers.
    05/14/13 - Version 1.9.3.4: Update to support Ubuntu 13.10, Ubuntu Gnome 13.04, and Debian Live 7.
    04/25/13 - Version 1.9.3.3: Update to support final release of Ubuntu 13.04, Kubuntu 13.04, Lubuntu 13.04, Xubuntu 13.04, and Edubuntu 13.04.
    04/17/13 - Version 1.9.3.2: Update to support REMnux, Linux Mint Debian 201303, Kubuntu 13.04, Lubuntu 13.04, Xubuntu 13.04, and Edubuntu 13.04. Fix some broken links.
    03/21/13 - Version 1.9.3.1: Condense Code to make updates easier. Added support for Kali Linux and Tails 0.17.
    03/14/13 - Version 1.9.3.0: Correct broken Ubuntu 13.04 i386 Desktop entry.
    03/13/13 - Version 1.9.2.9: Update to support Mythbuntu 12.04.2 Desktop amd64, Debian Live 6.0.7. Implement another attempt to address "Insane primary (MBR) partition. Can’t find myself on the drive I booted from" error. Allow Spaces in Unlisted ISO Filenames.
    03/12/13 - Version 1.9.2.8: Update to support Ubuntu 12.04.2 Desktop amd64, Ubuntu 12.04.2 DVD amd64, Edubuntu 12.04.2 amd64, and (G4L) Ghost for Linux.
    03/08/13 - Version 1.9.2.7: Update to support Ultimate Boot CD 5.2.1, Comodo Rescue Disk 2.0.261647.1, and Elementry Luna. Switch back to Syslinux 4.06. See Additional Help Section for Insane Primary MBR messages.
    02/25/13 - Version 1.9.2.6: Update to support Ubuntu 12.04.2. Temporary switch to Syslinux 4.06-pre7 to prevent "Insane primary (MBR) partition. Can’t find myself on the drive I booted from" errors.
    02/15/13 - Version 1.9.2.5: Update to support Ubuntu 13.04, Archlinux 2013.02.01, XBMCbuntu 12, and Crunchbang 11.
    01/18/13 - Version 1.9.2.4: Update to support Fedora 18. Fixed various broken links.
    01/14/13 - Version 1.9.2.3: Update to support Tails 0.16 and Comodo Rescue Disk.
    01/11/13 - Version 1.9.2.2: Update to support Debian 6.0.6. Correct several dead links. Fix broken LMDE 201204 Install options.
    12/24/12 - Version 1.9.2.1: Correct Tails 0.15 entry, update to support Netrunner 12.12, Fuduntu 2012.4, Ultimate Edition 3.5.
    12/18/12 - Version 1.9.2.0: Added support for SLAX 7, GRML, Boot Repair Disk, and latest puppy derivitives. Added missing pmedia=usbflash to puppy entries where incorrect.
    12/10/12 - Version 1.9.1.9: Added support for Linux Mint 14.1.
    12/07/12 - Version 1.9.1.8: Fix Lubuntu broken persistence feature. Update to support StartOS (YLMF replacement), and TAILS 0.1.5.
    11/27/12 - Version 1.9.1.7: Update to support GData 2012, newer Panda Safe CD, Racy 5.3, Slacko 5.3.3, Precise 5.4.1. 
    11/14/12 - Version 1.9.1.6: Update to support AOSS, Peppermint Three, CentOS 6.3, Linux Mint 14, and Hiren's 15.2. 
    10/29/12 - Version 1.9.1.5: Update to use 7zip version 920. Added support for Ubuntu Studio 12.10. 
    10/23/12 - Version 1.9.1.4: Update to use Syslinux 4.06. Added support for Tails 0.14 RC1, and Precise Puppy 5.4.   
    10/22/12 - Version 1.9.1.3: Update to support Ubuntu, Lubuntu, Xubuntu, Kubuntu, and Edubuntu 12.10. Fixed Tails entry.
    10/04/12 - Version 1.9.1.2: Update to support Debian Live 6.0.5, and Mythbuntu 12.04.1.
    09/21/12 - Version 1.9.1.1: Update to use Syslinux v4.06-pre7 for better boot support. Added support for DBAN 2.2.7.
    09/06/12 - Version 1.9.1.0: Update to support Liberte 2012.3, Knoppix 7.04, Lucid Puppy v528.005, parted magic 2012.08.09, and Archlinux 2012.08.04. Added WifiSlax.
    08/25/12 - Version 1.9.0.9: Update to support Ubuntu, Xubuntu, Kubuntu, Edubuntu 12.04.1, and Pinguy OS 12.
    08/22/12 - Version 1.9.0.8: Added Android x86 4.0 entry. Correct pointer for ubuntustudio.seed. Added MAAS boot option for Ubuntu Server 12.10 entry. Combine Old and New Try Unlisted Linux ISO options into one.
    08/15/12 - Version 1.9.0.7: Added Gamedrift, AntiX, and Backtrack 5r3 entries. Fix Carmedia cfg. Re-enabled built in Fat32 format option per request.
    08/02/12 - Version 1.9.0.6: Added Ubuntu 12.10 (Quantal) Daily Build, and CarMedia entries.
    07/25/12 - Version 1.9.0.5: Added KXStudio 12.04, Peppermint Three, Linux Mint 13 XFCE and Linux Mint 13 KDE entries.
    07/12/12 - Version 1.9.0.4: Update Bohdi, and ArtistX entries. Now supports NTFS format - Remove format option (must use a Fat16, Fat32, or NTFS formatted drive).
    07/05/12 - Version 1.9.0.3: Added Knoppix V7 CD entry. Remove Hash Check from Liberte config.
    06/21/12 - Version 1.9.0.2: Update to support TAILS 0.1.2, and Liberte 2012.2. Added wattOS.
    06/11/12 - Version 1.9.0.1: Fix Ubuntu Server "Failed to copy file from CD-ROM" Error. Add Liberte entry. Fix Debian Live Standard entry to allow splash.
    06/03/12 - Version 1.9.0.0: Added Debian Live Standard, and Knoppix 7.0.2 entries.
    05/30/12 - Version 1.8.9.9: Added Fedora 17, and SolusOS entries. Update Ophcrack entry.
    05/24/12 - Version 1.8.9.8: Added Linux Mint 13 Mate + Cinnamon, WifiWay 3.4, and Dreamlinux 5 entries.
    05/10/12 - Version 1.8.9.7: Added Baltix Linux entries. Corrected Ubuntu Studio 12.04 Install option.
    05/01/12 - Version 1.8.9.6: Rename Linux Mint entries to avoid confusion. Added Ubuntu Desktop DVD and Ubuntu Alternate 12.04 32/64 bit entries.
    04/30/12 - Version 1.8.9.5: Added Mythbuntu, Edubuntu, Ubuntu Studio, and Ubuntu Desktop DVD 12.04 entries.
    04/27/12 - Version 1.8.9.4: Added Linux Mint Debian and LXDE. Updated Debian Live entries.
    04/25/12 - Version 1.8.9.3: Added Ubuntu, Xubuntu, Kubuntu, and Lubuntu 12.04 entries.
    04/17/12 - Version 1.8.9.2: Added Terralinux and Matriux entries. Update Deft 7 entry.
    04/12/12 - Version 1.8.9.1: Added Netrunner 4.1 and OSGeo Live, update to support newer SliTaZ 4.0, TinyCore 4.x, and XBMCbuntu 11.0. Modify Hiren's entry to use ISO instead of Zip.
    04/05/12 - Version 1.8.9.0: Added Ubuntu 12.04 Beta, and Windows 8 installer entries. Fix Kaspersky Rescue Disk entry.
    03/19/12 - Version 1.8.8.9: Added Debian Netinst, Backtrack 5R2, LinHES, and Deepin Linux entries.
    03/11/12 - Version 1.8.8.8: Added Linux Mint 12 LXDE, Satux, and Trisquel Menu entries.
    03/08/12 - Version 1.8.8.7: Update to use Newer Syslinux version 4.06. (AVG was notified of the false positive detected in Syslinux 4.05, and have resolved the issue).
    03/08/12 - Version 1.8.8.6: Revert to Syslinux 4.04 until upstream Syslinux 4.05/AVG issue is resolved.
    03/04/12 - Version 1.8.8.5: Added Chakra 2012 and BackBox Linux entries. Update EEEbuntu entry to Aurora.
    02/18/12 - Version 1.8.8.4: Added Kororaa, Ubuntu 11.10 dvd, Pear OS Debian and Panther entries.
    02/13/12 - Version 1.8.8.3: Fixed OpenSUSE "No Devices Matches MBR Identifier" error.
    02/12/12 - Version 1.8.8.2: Added BlehOS, Pear OS, XBMCbuntu, and newer Archlinux Dual entries.
    02/10/12 - Version 1.8.8.1: Added Slacko Puppy 5.3 and Fuduntu. Fixed Puppy Persistence feature via pmedia=usbflash. Fix broken Ubuntu Rescue Remix 11.04 entry. Add Ubuntu Rescue Remix 11.10 entry.
    02/07/12 - Version 1.8.8.0: Added Live Antivirus Rescue CDs. Update to support Linux Mint 12 KDE, F-Secure Rescue CD, AVG Rescue CD, Kaspersky Rescue Disk, Avira Antivir Rescue System, Bitdefender Rescue CD, and newer System Rescue CD.
    01/22/12 - Version 1.8.7.9: Wildcard Ubuntu 12.04 options to support 32 and 64 bit variants.
    01/13/12 - Version 1.8.7.8: Updated to correct Tails 0.10 naming and version.
    01/11/12 - Version 1.8.7.7: Updated to support Ubuntu 12.04, Ultimate Edition 3, Clonezilla Oneric, Tails 0.10, and WifiWay 3. Corrected Mandriva 2011 install from USB option. Update Sources.
    01/05/12 - Version 1.8.7.6: Updated to support CentOS 6.2 and Plasma Active Basyskom.
    01/01/12 - Version 1.8.7.5: Updated to support Mandriva 2011 and Elemetary OS. Fix Ubuntu 11.10 download link. 
    12/15/11 - Version 1.8.7.4: Switch to Syslinux 4.05. Support Debian Live 6.0.3 and Racy Puppy.
    12/01/11 - Version 1.8.7.3: Updated to support Parted Magic 2011_11_24 and Pinguy OS 11.04.1.
    11/27/11 - Version 1.8.7.2: Updated to support Linux Mint 12 and Pardus Linux.
    11/23/11 - Version 1.8.7.1: Updated to support BCCD - Bootable Cluster CD, Dyne:bolic 3.0, and partedmagic 11.11.11.
    11/18/11 - Version 1.8.7.0: Updated to support OpenSUSE 12.1 Gnome and KDE editions. Added Fatdog64 entry.
    11/10/11 - Version 1.8.6.9: Updated to support Fedora 16.
    10/14/11 - Version 1.8.6.8: Updated to support Xubuntu 11.10, Kubuntu 11.10, Lubuntu 11.10, Edubuntu 11.10, Ubuntu Server, and Ubuntu Studio.
    10/13/11 - Version 1.8.6.7: Quick updated to support Ubuntu 11.10. Derivatives will follow in the next revision.
    10/10/11 - Version 1.8.6.6: Updated to support newer Tiny Core Linux, added Micro Core Linux.
    10/08/11 - Version 1.8.6.5: Updated to support WifiWay 2.0.3, Knoppix 6.7.1, and the 64 bit versions of Linux Mint Debian.
    09/20/11 - Version 1.8.6.4: Updated to support Lucid Puppy 5.2.8, Debian 6.0.2, Porteus 1.0, and Linux Mint Debian 201109.
    09/07/11 - Version 1.8.6.3: Updated to use newer syslinux for UBCD, Added Leenux, Uberstudent, and OpenSUSE 11.4 LXDE entries.
    08/18/11 - Version 1.8.6.2: Updated to include persistence for Peppermint Two entry, added support for Wary Puppy 5.1.3, Linux Mint 11 LXDE, and doudoulinux gondwana.
    08/10/11 - Version 1.8.6.1: Added support for Kubuntu and Ubuntu 10.04.3, updated to support Blackbuntu 0.3, added support for Debian 64 bit ISOs.
    08/05/11 - Version 1.8.6.0: Corrected Kubuntu 11.04 download link, Updated to support XBMC ISO.
    08/01/11 - Version 1.8.5.9: Added Rescatux, and LPS. Append to warning that a Pendrive Label is to be created.
    07/23/11 - Version 1.8.5.8: Added DRBL (Diskless Remote Boot in Linux). Added support for CentOS 6. Fixed Lucid Puppy config to allow saving.
    07/05/11 - Version 1.8.5.7: Updated to support newest Sabayon Linux. 
    06/27/11 - Version 1.8.5.6: Updated to support newest Linux XP Like, and YLMF OS. Added Zorin OS, and Deft Linux.  
    06/16/11 - Version 1.8.5.5: Added SalineOS, Meego, and Peppermint Two entries. 
    06/13/11 - Version 1.8.5.4: Added Dreamlinux, and Porteus entries. Rename TEMP to TEMPUUI.
    06/01/11 - Version 1.8.5.3: Fixed wildcard issues. If the entry is wildcarded, you must browse to the exact distro you wish to use. Updated Debian Entries to support 6.0.1.
    06/01/11 - Version 1.8.5.2: Added Sn0wL1nuX 11 64bit, Gentoo 64bit, and all Fedora 15 32/64 bit variants.
    05/27/11 - Version 1.8.5.1: Updated Linux Mint 11, Clonezilla, and Sabayon Linux entries. Added Wary Puppy Linux.
    05/24/11 - Version 1.8.5.0: Added Fedora 15 and Sn0wL1nuX 11 entries, and updated Pinguy OS entry to 11.04. Switch to use new Syslinux 4.04.
    05/22/11 - Version 1.8.4.9: Fixed Broken Linux Mint 10 options.
    05/18/11 - Version 1.8.4.8: Added Bodhi, Elementary Unleashed (Dorian 1.1), and Ubuntu Studio 11.04 Installer entries.
    05/11/11 - Version 1.8.4.7: Added Backtrack 5, Linux Mint 11 RC entries.
    05/03/11 - Version 1.8.4.6: Added Trinity Rescue Kit, Include ability to select Ubuntu Server 11.04 amd64 Installer ISO. Update Gparted and Parted Magic Entries.
    05/01/11 - Version 1.8.4.5: Added Linux Mint Debian XFCE, G Data Antivirus, and Macbuntu 11.04. Removed broken Ubuntu Netbook Remix 11.04 as desktop and netbook version are now unified.
    04/28/11 - Version 1.8.4.4: Added Ubuntu, Kubuntu, Xubuntu, Edubuntu, Lubuntu, and Mythbuntu 11.04 entries.
    04/27/11 - Version 1.8.4.3: Fixed Peppermint One entry, added Peppermint Ice entry, re-added missing Ubuntu 9.10 entry.
    04/23/11 - Version 1.8.4.2: Added OpenSUSE 11.4 entry, fixed Ubuntu Server 10.04 AMD64 entry.
    04/16/11 - Version 1.8.4.1: Added Kon-Boot menu entry.
    04/08/11 - Version 1.8.4.0: Update to support Lucid Puppy Linux 5.2.5, added Android x86 menu entry.
    04/06/11 - Version 1.8.3.9: Update to support Ubuntu 11.04 Beta.
    04/04/11 - Version 1.8.3.8: Update Easus Disk Copy entry, Added Acronis Rescue CD menu entry.
    03/22/11 - Version 1.8.3.7: Update to support WifiWay 2.x. Fix to detect the correct size of Ubuntu Mini Remix.
    03/10/11 - Version 1.8.3.6: Update to support Joliclud Joli-OS-1.2.ISO. Force Close of all Open Explorer Windows before running fat32 format.
    03/10/11 - Version 1.8.3.5: Update to support DrWeb LiveCD 600, All PCLinux 2010. Added to support Windows Vista Installer, and Windows 7 Installer.
    02/18/11 - Version 1.8.3.4: Update to support Ubuntu 10.04.2. Add Linux Mint 10 KDE, LXDE entries. Combined both warning notifications into one.
    02/06/11 - Version 1.8.3.3: Updated to support ArchBang.
    02/04/11 - Version 1.8.3.2: Added EASUS Disk Copy, Updated Gparted Entry, Removed fat32 format option for drives smaller than 512MB, set cluster size in accordance to partition size.
    01/31/11 - Version 1.8.3.1: Added PING (Partimage Is Not Ghost), T(A)ILS - Private Browsing via TOR Network, Wildcard Blackbuntu entry to support multiple versions.
    01/27/11 - Version 1.8.3.0: Added Debian Live KDE, LXDE, XFCE. Allow Linux Mint 10 CD or DVD ISO selection.
    01/25/11 - Version 1.8.2.9: Updated Puppy "Lupu 5.2" Entry, added Edubuntu and Lighthouse Pup
    01/23/11 - Version 1.8.2.8: Added Qimo 4 kids 2 and DouDouLinux Entries.
    01/21/11 - Version 1.8.2.7: Added Mythbuntu 10.10 Entry, Added ability to set Persistent Size for Ubuntu variants via a Slider.
    01/19/11 - Version 1.8.2.6: Combined 32/64 bit Menu entries where possible to reduce clutter.
    01/18/11 - Version 1.8.2.5: Fix Puppy 4.3.1 Entry, Browse now opens to the directory the tool is run from.
    01/17/11 - Version 1.8.2.4: Added Panda Safe CD "Standalone Antivirus Scanner" Entry.
    01/08/11 - Version 1.8.2.3: Updated to support PartedMagic 5.8 and BlackBuntu. Corrected syslinux config paths for Debian.
    01/03/11 - Version 1.8.2.2: Updated to support Puppy Arcade 10, 32/64 bit Linux Mint Debian, Linux Mint XFCE, ArtistX.