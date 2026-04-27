How to prepare the CF for the ECW-281B PC
=========================================

Note, the CF card needs to be bootable

Insert the CF card into a PC containing the .WIM file containing the image

Type the following command:

imagex /apply ecw281.wim 1 x:\
  replace x: with the target drive letter of the CF card

Place the CF card back in the ECW281
