# A Collection of Lua Files for LMAOBOX Beta.

Before you even read anything after this line of text, You can find better scripts on the [offical forums](https://lmaobox.net/forum/v/categories/lua-scripts) and if you have any experence coding yourself the docs can be found [here](https://lmaobox.net/lua/)

## Loading the beta

First of all before you even start installing Luas and messing around with them, You first have to set your loader to load the beta copy of LMAOBOX.

In order to do that go to where your copy of your loader is (ex: your downloads folder) and create a .bat file named something like "lboxbeta"

Once you do that it should be named "lboxbeta.bat". Batch files can load executables with the parameters you want it too. In this case we want to put the name of your loader and -beta

In the file it should look like this.
```
yourloader.exe -beta
```

Once you do that just run the bat file and the LMAOBOX loader should inject the beta version of LBOX.

### Loading Luas ingame

After you have LBOX Beta ready put your luas in %localappdata% and LBOX should be able to read them.

There are 2 way to load luas.

Method 1: In the menu

Method 2: Using lua_load in console

Method 1 is the easiest, so I just recommend using the menu.

Find your lua you wanna load and press load.
