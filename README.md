Rudimental teams package which also adds scheduled task which will launch teams on user logon IF teams has not previously started

This comes handy since teams autostart seems to be broken in the new client

everything is based upon info from the following article
https://learn.microsoft.com/en-us/microsoftteams/new-teams-bulk-install-client

Important!
The teams MSIX was too big for github (or im a bit of a github noobie) so download the MSIX x64 installer from the link above and place it in the \files\ directory for the installer to work properly

Based on PsApp deployment toolkit and tested for intune deployment


This is of course provided as is without any warranty, check the code yourself and test before applying to any kind of production
