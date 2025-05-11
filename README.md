TSSR-2503-P2-G6-TheScriptingProject projet solo

## Administration de clients à distance

### 📑 Presentation du projet 

Ce projet à pour but d'automatiser differentes  tâches système à l'aide de scripts Bash et de powershell. 
Ce projet permet de developper des notions sur la gestion des systemes et d'automatisation et de pouvoir renforcer des competences en scripting.


## Objectif final 

Mettre en place un VM client Ubuntu et un VM serveur Debian pour pouvoir les administrer. 

## 📜  Introduction 

A travers ce projet qui a eté realisé par Mamadou 
il a pour but de mobiliser quelques compétences: notament
* La mise en place de 2 VM virtualbox client Ubuntu et serveur Debian
* Configuration des reseaux sur les 2 machines
* Installation et configuration de ssh
* Prise en main des machines

## Membres du groupe 

Projet solo realisé par Mamadou qui a occupé les fonctions du sprint 


## 🔧 Choix techniques 

### configuration VM client Ubuntu 

* Nom: **CLILIN01**
* Langue: **FRANCAIS**
* Compte utilisateur: **wilder**
* Mot de passe: *Azerty1**

### Configuration VM Serveur Debian  
* Nom: **SRVLX01**
* Langue: **US**
* Compte utilisateur: **root**
* Mot de passe:*Azerty1**

## Configuration réseau des Vm 
**CLILIN01** 172.16.50.30 masque 255.255.255.0

**SRVLX01** 172.16.50.10  masque 255.255.255.0

## 🔨 Difficultés rencontréés 

Difficultés à envoyer des fichiers via ssh avec scp, j'ai essayé plusieurs fois à envoyer des fichiers de la machine client CLILIN01 vers le serveur Debian SRVLX01 mais ça me demande le mot de passe j'ai fait les modification sur le serveur Debian en configurant le fichier sshd_config voir image bloqué par le mot de passe qui passe pas. 

## Solutions trouvées 
Pour l'instant je continue à faire mes recherches et dois voire avec mon formateur si je peux avoir quelques infos de plus pour trouvé plus solution et pouvoir finir pour que tout marche et fonctionne comme prevu. 


### Amelioration possibles 
A voir ? 











