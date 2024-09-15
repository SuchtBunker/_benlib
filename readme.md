# _benlib

## What is this?
This libary contains code used for many of the **S**ucht**B**unker-Addons which will be made available one after another.\
_benlib contains a bunch of legacy code which may not even be used anymore by any addon. Just leave it in as nothing in here will actually harm your performance.\
Most of it are just static functions which dont do anything if they are not used, performance optimizations or hooks which will not cost a lot of performance.

## Do not rename the folder
The folder has to be loaded before any other SB-Addons are loaded. Otherwise they wont load properly. To ensure benlib is loaded before the other addons, the underscore is needed

## MySQL
The MySQL handler is one of the main reasons to install this addon (except from the code loader which will be needed for all SB-Addons).\
To see how to configure it go to _benlib/data/_benlib/mysql.json