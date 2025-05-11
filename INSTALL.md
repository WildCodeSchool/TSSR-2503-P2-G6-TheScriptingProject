### 🎆 prérequis techniques 

Guide desinstallations des machines clients et serveurs Debian 

## 1 parametrages des ip  


| Nom     |     OS      |    Ip        | Masque de sous-réseaux|
| :-:     |   :-:       |   :-:        |        :-:            |
| Clilin01| Ubuntu 24.04| 172.16.50.30 |   255.255.255.0       |
| SRVLX01 | Debian 12   | 172.16.50.10 |   255.255.255.0       |
|         |             |              |                       |

## 1.a configuration ip CLILIN01 

Aller dans parametres, rubrique réseau puis dans option réseau, rubrique ipv4 mettre l'adresse ip et un masque sous-réseau 

<img width="628" alt="Capture clilin" src="https://github.com/user-attachments/assets/0aeb599d-93b8-497a-b48e-d72e8b85f854" />

## 1.b verifier si la Connexion entre les machines sont etablies 

<img width="416" alt="Capture  di" src="https://github.com/user-attachments/assets/b3d5ad14-4040-4f15-a77a-36718138e691" />

## 1.c ping de la machine client vers le serveur Debian 

<img width="318" alt="Capture ping de" src="https://github.com/user-attachments/assets/37c218f0-1f3d-4597-a65a-b51d9a6bea82" />

## 1.1 Serveur Debian 

Verifier si les connexions entre machines sont etablies 

<img width="658" alt="Capture3 debi" src="https://github.com/user-attachments/assets/0f0773ee-cb20-4795-a120-dbf9cacc0af2" />

## 1.2 ping du serveur vers le client Ubuntu 

<img width="717" alt="Capture ping debian" src="https://github.com/user-attachments/assets/de2abcc0-e57f-4bc3-8902-310a70bfe413" />

### 2 Configuration SSH 

Nous avons besoins ici du protole SSH. Il permet une connexion à distance d'un utilisateur vers une machine ciblé qui est ici le serveur Débian.

installer openssh via la commande 

* sudo apt install openssh-serveur 

Démarrage du service ssh 

* sudo systemctl start ssh 

Activer pour chaque demarrage 

* sudo systemctl enable ssh

Verifier le statut 

- sudo systemctl status ssh

On peut configurer le serveur ssh en modifiant aussi le fichier 

- etc/ssh/sshd_config


### 🔔 FAQ

Q : si j'ai une erreur "permission denied" sur ssh que dois-je faire ? 

R : je dois verifier si 
    
   * l'utilisateur existe sur la machine distante 
    
   * verifier si l'on utilise le bon mot de passe 
































