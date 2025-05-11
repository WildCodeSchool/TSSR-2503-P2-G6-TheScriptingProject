#!/bin/bash

# --------------------------- #
#             FONCTIONS       # 
# --------------------------- #

# Gestion des utilisateurs 
function action_utilisateur_local() 
{
    # Demande à l'utilisateur ce qu'il souhaite faire
    echo "Que voulez vous faire Mamad ?"
    echo "--------------------"
    echo "1) Création d'un compte utilisateur"
    echo "2) Changement de mot de passe"
    echo "3) Suppression compte utilisateur"
    echo "4) Désactivation compte utilisateur"
    read -r choix
    # On applique le choix de l'utilisateur
    case $choix in
        1) 
            # Demande à l'utilisateur sur quelle machine souhaite t-il réaliser son action
            echo "Le client où créer l'utilisateur :"
            read -r client
            # Demande à l'utilisateur sur quel utilisateur souhaite t-il réaliser son action
            echo "Donne un nom d'utilisateur"
            read -r DRAME
           ;;
        2) 
            # Demande à l'utilisateur sur quelle machine souhaite t-il réaliser son action
            echo "Le Client où modifier le mot de passe :"
            read -r client
            # Demande à l'utilisateur sur quel utilisateur souhaite t-il réaliser son action
            echo "Donne le nom d'utilisateur a qui l'on veut changer le mot de passe"
            read -r DRAME_Azerty1*
           ;;
        3)
            # Demande à l'utilisateur sur quelle machine souhaite t-il réaliser son action 
            echo "Le Client où supprimer un utilisateur :"
            read -r client
            # Demande à l'utilisateur sur quel utilisateur souhaite t-il réaliser son action
            echo "Donne l'utilisateur qu'on souhaite supprimer"
            read -r DRAME_del
           ;;
        4)
            # Demande à l'utilisateur sur quelle machine il souhaite réaliser son action 
            echo "Le Client où désactiver un compte utilisateur :"
            read -r client
            # Demande à l'utilisateur sur quel utilisateur il souhaite réaliser son action
            echo "Donne l'utilisateur que l'on veut désactiver"
            read -r DRAME_desactive
           ;;
    esac
}
# Gestion des groupes
function action_groupe_local()
{
    # Demande à l'utilisateur ce qu'il souhaite faire
    echo "Que voulez vous faire Mamad ?"
    echo "--------------------"
    echo "1) Ajout à un groupe local"
    echo "2) Sortie d'un groupe local"
    read -r choix_groupe_local
    # appliquer le choix de l'utilisateur 
    case $choix_groupe_local in 
        1)
            # Demander à l'utilisateur sur quelle machine souhaite t-il réaliser son action 
            echo "le Client de l'utilisateur à ajouter dans un groupe ?"
            read -r client
            # Demander à l'utilisateur sur quel utilisateur souhaite t-il réaliser son action
            echo "Quel utilisateur veut-on ajouter à un groupe ?"
            read -r DRAME
            # Demander à l'utilisateur sur quel groupe souhaite t-il réaliser son action
            echo "A quel groupe voulez-vous ajouter l'utilisateur ?"
            read -r group_add
           ;; 
        2)
            # Demander à l'utilisateur sur quelle machine souhaite t-il réaliser son action 
            echo "le Client de l'utilisateur à sortir dans un groupe ?"
            read -r client
            # Demander à l'utilisateur sur quel utilisateur souhaite t-il réaliser son action
            echo "Quel utilisateur veut sortir d'un groupe ?"
            read -r DRAME
            # Demander à l'utilisateur sur quel groupe souhaite t-il réaliser son action
            echo "De quel groupe voulez-vous sortir l'utilisateur ?"
            read -r group_out
           ;;
    esac
}
# Gestion alimentation
function action_arret()
{
    # Demander à l'utilisateur ce qu'il souhaite faire
    echo "Que voulez vous faire Mamad ?"
    echo "--------------------"
    echo "1) Arret"
    echo "2) Redémarrage"
    read -r choix_Arret
    # Appliquer le choix de l'utilisateur 
    case $choix_Arret in
        1)
            # Demander à l'utilisateur sur quelle machine il souhaite réaliser son action 
            echo "Quel client voulez-vous arrêter ?"
            read -r client
           ;; 
        2)
            # Demander à l'utilisateur sur quelle machine souhaite t-il réaliser son action 
            echo "Quel client voulez-vous redémarrer ?"
            read -r client
           ;;
    esac
}
# Informations sur comptes utilisateurs
function info_compte()
{
    # Informer sur le compte utilisateurs 
	echo "Que voulez vous faire Mamad ?"	
	echo "--------------------"
    echo "1) Date de dernière connexion de $DRAME"
    read -r choix
   # Appliquer les informations de l'utilisateurs  
   case $choix_datedederniereconnexion in
	   1)
			# Demander à l'utilisateur la date de derniere connexion
			echo "Quel utilisateur donne la date de derniere connexion ?"
			read -r 
		   ;;
	esac	   
}
# Informations sur l'OS
function info_os_version()
{
   # Informer sur l'OS 
	# Demander sur quelle machine récupérer les informations
    echo "Que voulez vous faire Mamad ?"
	echo "---------------------"
	echo "1) Sur quel ordinateur récupérer les informations ?"
    read -r client
    # Affiche l'information
    case $choix_informersurOS 
		1)
			# Demander des information sur l'OS 
			echo "Quel ordinateur donne des infos sur l'OS ?"
			read -r 
		   ;;
	esac 
}
# Informations sur les disques
function info_disk_number()
{
    # Demande sur quelle machine récupérer les informations
    echo "Que voulez vous savoir Mamad ?"
	echo "--------------------"
    echo "1) Info nombre de disques"
	echo "2)Sur quel client veut-on récupérer les informations du disque ?"
    read -r client
	# Affiche les infos sur le disques 
	case $choix_infodisques 
		1)
			# Demander des infos nombre de disque
			echo "Quel ordinateur donne le nombre de disque ?"
			read -r 
		   ;;
	esac
}	
# Information sur espace disque restant par partition 
function espace disque par partition_volume()
{ 
	# Demande l'information espace disque restant et partition volume  
    echo "Que voulez-vous savoir Mamad ?"
	echo "-------------------"
    echo "1) Espace disque restant"
	echo "2) partition et volume "
    read -r client
    # appliquer le choix de l'ordinateur 
    case $choix in
		1) 
			# Demander des infos sur l'espace disque restant 
			echo "Quel ordinateur verifier son espace de disque ?"
			read -r 
		   ;;
        2) 
			# Demander des information sur la partition et le volume 
			echo "Quel ordinateur donne des infos sur la partition et le volume ?"
			read -r
		   ;;
       
   
    esac
}

# ------------------------------ #
#           EXECUTION            #
# ------------------------------ #

# "********StartScript********"
# Variable pour gérer l'arrêt du script
run=1
# On lance la boucle
while [ $run -eq 1 ]
do
    #clear
    # On demande l'action que l'utilisateur souhaite faire
    echo "Que voulez-vous faire Mamad ?"
    echo "--------------------"
    echo "1) Effectuer une action"
    echo "2) Récupérer une information"
    echo "q) Quitter"
    read -r choix
    # On applique le choix de l'utilisateur
    case $choix in
        1)
            #clear
            # On demande à l'utilisateur sur quelle cible souhaite t-il effectuer son action
            echo "Sur quelle cible effectuer l'action ?"
            echo "--------------------"
            echo "1) Utilisateur"
            echo "2) Ordinateur"
            echo "r) Retour"
            echo "q) Quitter"
            read -r choix2
            # On applique le choix de l'utilisateur
            case $choix2 in
                1)
                    #clear
                    # On demande à l'utilisateur quelle action il souhaite effectuer
                    echo "Que voulez-vous faire Mamad ?"
                    echo "--------------------"
                    echo "1) Gestion compte utilisateur local"
                    echo "2) Gestion groupe utilisateur"
                    echo "r) Retour"
                    echo "q) Quitter"
                    read -r choix3
                    # On applique le choix de l'utilisateur
                    case $choix3 in
                        1)
                            action_utilisateur_local
                            ;;
                        2)
                            action_groupe_local
                            ;;
                        r)
                            echo "Retour"
                            ;;
                        q)
                            break
                            ;;
                        *)
                            echo "Entrée erronée"
                            ;;
                    esac
                    ;;
                
                q)
                    break
                    ;;
            esac
            ;;
        2)
            #clear
            # On demande à l'utilisateur sur quelle cible souhaite t-il récupérer son information
            echo "Sur quelle cible récupérer l'information ?"
            echo "--------------------"
            echo "1) Utilisateur"
            echo "2) Ordinateur"
            echo "r) Retour"
            echo "q) Quitter"
            read -r choix2
            # Appliquer le choix de l'utilisateur
            case $choix2 in
                1)
                    #clear
                    # Demander à l'utilisateur quelle information souhaite t-il récupérer
                    echo "Que voulez-vous savoir ?"
                    echo "--------------------"
                    echo "1) Informations compte utilisateur"
                    echo "2) Informations groupes et commandes utilisateur"
                    echo "r) Retour"
                    echo "q) Quitter"
                    read -r choix3
                    # On applique le choix de l'utilisateur
                    case $choix3 in
                        1)
                            info_compte
                            ;;
                        2)
                            info_groupe
                            ;;
                       r)
                            echo "Retour"
                            ;;
                        q)
                            break
                            ;;
                        *)
                            echo "Entrée erronée"
                            ;;
                    esac
                    ;;
                2)
                    #clear
                    # Demander à l'utilisateur quelle information souhaite t-il récupérer
                    echo "Que voulez-vous savoir ?"
                    echo "--------------------"
                    echo "1) Informations OS"
                    echo "2) Informations disques"
					echo "3) information espace disque restant par partition"
                    echo "r) Retour"
                    echo "q) Quitter"
                    read -r choix3
                    # On applique le choix de l'utilisateur
                    case $choix3 in
                        1)
                            info_os_version
                            ;;
                        2)
                            info_disk_number
                            ;;
                        3)
                            info_space disk 
                            ;;
                        r)
                            echo "Retour"
                            ;;
                        q)
                            break
                            ;;
                        *)
                            echo "Entrée erronnée"
                            ;;
                    esac
                    ;;
                r)
                    echo "Retour"
                    ;;
                q)
                    break
                    ;;
            esac
            ;;
        q)
            break
            ;;
        *)
            echo "Entrée erronée"
            ;;
    esac
done

# fin de l'exécution du script
Fin du script "********EndScript********"
