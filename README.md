# VitaMemorySwap

## Description:

A simple homebrew that allows you to swap sd2vita and the memory card's mounting points, so you can use both to install games and switch between them without too much of a hassle.
Once installed just open it and in less than half a minute you'll be using the other memory card/sd2vita. Note that each swap restarts your console, so save your progress before switching.

## DISCLAIMER:

It's not my problem if your console explodes or whatever, if you don't trust this just check the 4 lines of code and compile by yourself.
Feel free to DM me on twitter @TheKlanc for any question/problem you might have :D

## Instructions:

0-Make sure to have both an sd2vita and a memory card inserted, if not, what's the point?

0.5- ~~If you don't have a legit memory card you might get stuck without henkaku (on a Vita Slim this can't happen), so don't even try please.~~ You can use MLThaku if you get stuck without sd2vita nor a legit memory card.

1-Download both gamesd.skprx:

Link to gamesd.skprx (mounts SD2VITA to ux0 and old vita memory card to uma0):
https://drive.google.com/file/d/0BzcqzW6QWZzzLTItUzB3dDZ3OE0/view?usp=sharing

Link to alternative gamesd.skprx (Mounts SD2VITA to uma0 and vita memory stays at ux0):
https://drive.google.com/open?id=0B66cjEczhjhaQmk3RFR1U3dNUUE

2-Put them at ur0:tai/ as gamesd.skprx and gamesd2.skprx

3-Add "ur0:tai/gamesd.skprx" under the *KERNEL line on config.txt

3.5-Backup config.txt in a safe place

4-Download and install MemorySwap.vpk

5-Execute it once and install it again (you'll be installing it on the other memory card now)

6-Profit (If you execute MemorySwap and it switches to a card where MolecularShell isn't installed, just use https://henkaku.xyz/go/ and press R1 when the purple text appears, note that this will wipe your config.txt file on ur0:tai, remember to restore it. Keep in mind that both memory cards are separate, so you'll also need to reinstall vitashell or whatev, but once you switch again you'll get your other games/homebrew back, don't panic)

## Credits:

Credits to whoever wants them, this is a stupidly simple homebrew, so no need to even thank me for that. Thanks Molecule (Davee, Proxima, xyz, and YifanLu) for making everything about this possible. Thanks to TheFlow for his contributions to the scene and thanks to everybody that made SD2VITA possible. I'm not even sure why these credits are so long, again, this is only 4 lines of C.
