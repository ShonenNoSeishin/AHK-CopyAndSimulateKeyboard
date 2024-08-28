# AHK-CopyAndSimulateKeyboard
Tool that can help to paste clipboard in PVE VMs or remote desktop that can't copy paste

-

Outil qui peut aider à coller le presse-papier dans les VMs PVE ou les bureaux à distance qui ne peuvent pas copier-coller

# Supported OS

This tool is only for Windows hosts

-

Ce programme ne peut tourner que sur Windows

# Description

On PVE VMs or with some remote desktops, copy-paste doesn't work by default. 
To compensate for this, I've made two ahk programs that I've converted into exe files. These programs allow you to simulate writing what's in the clipboard using the keyboard. Once the exe file is executed, a background process is launched (until it is killed or until the machine is restarted) and it simulates the keyboard writing of what's in the clipboard using the command combination ctrl + shift + v. 
The azerty program is designed for pasting into a machine configured for azerty, and the qwerty program is designed for qwerty machines (it translates directly when simulating writing).
There's also a StopDaemons.bat file that makes it easy to close the two background processes.

-

Sur les VMs du PVE ou avec certains remote desktop, le copier-coller ne fonctionne pas par défaut. 
Pour pallier à cela, j’ai fait deux  programmes ahk que j’ai converti en fichiers exe. Ces programmes permettent de simuler l’écriture au clavier de ce qui se trouve dans le presse papier. Une fois le fichier exe exécuté, un processus en arrière-plan se lance (jusqu’à ce qu’il soit kill ou jusqu’au redémarrage de la machine) et il permet de simuler l’écriture au clavier de ce qu’il y a dans le presse papier en utilisant la combinaison de commandes ctrl + shift + v. 
Le programme azerty est fait pour coller dans une machine configurée en azerty et le programme qwerty est fait pour les machines en qwerty (il fait directement la traduction lors de la simulation d’écriture).
Il y a également un fichier StopDaemons.bat qui permet de facilement fermer les deux processus d’arrière-plan.

# Notes

- The AZERTY script is made to copy from FR-BE keyboard to FR-BE keyboard and the QWERTY script is made to copy from FR-BE keyboard to EN US keyboard.
- It's possible that the script create some bugs with your keyboard native macro so I advise you to close the daemon by executing the .bat file when you don't use these features

-

- Le script AZERTY permet de copier un clavier FR-BE vers un clavier FR-BE et le script QWERTY permet de copier un clavier FR-BE vers un clavier EN US.
- Il est possible que le script crée des bugs avec les macros natives de votre clavier, je vous conseille donc de fermer le processus d'arrière plan en exécutant le fichier ".bat" lorsque vous n'utilisez pas ces fonctionnalités.
  
