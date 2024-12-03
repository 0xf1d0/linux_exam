1. Rôle principal du serveur DHCP et protocole utilisé :

    Rôle principal : Le serveur DHCP (Dynamic Host Configuration Protocol) attribue automatiquement des adresses IP et d'autres paramètres réseau (comme la passerelle par défaut et les serveurs DNS) aux clients d'un réseau.
    Protocole de transport utilisé : Le protocole UDP (User Datagram Protocol).
    Numéro de port utilisé par le serveur DHCP :
        Port 67 pour le serveur.
        Port 68 pour le client.

2. Diagramme d'échange DORA :

Voici un diagramme décrivant les quatre étapes principales de l'échange DHCP (mécanisme DORA) entre un client et un serveur :

    Discover (Découverte) : Le client envoie un message de diffusion (broadcast) DHCPDISCOVER pour trouver un serveur DHCP.
    Offer (Offre) : Les serveurs DHCP répondent avec un message DHCPOFFER contenant une adresse IP et d'autres paramètres réseau proposés.
    Request (Demande) : Le client choisit une offre parmi les réponses reçues et envoie un message DHCPREQUEST pour demander cette configuration.
    Acknowledge (Accusé de réception) : Le serveur confirme avec un message DHCPACK contenant les paramètres confirmés.

3. Durée par défaut d'un bail DHCP et explication de la configuration :

    Durée par défaut du bail (en minutes) :
        La durée par défaut est indiquée en secondes. Si default-lease-time est 1200, cela correspond à 20 minutes.
        La durée maximale est spécifiée par max-lease-time (ici, 3600 secondes, soit 1 heure).

    Paramètres de configuration du serveur DHCP :
        Plage d'adresses IP : Les clients peuvent recevoir une IP entre 10.10.10.100 et 10.10.10.150 (défini par range).
        Masque de sous-réseau : Le masque est 255.255.255.0.
        Passerelle par défaut : Le routeur est 10.10.10.1.
        Serveurs DNS : Les clients utiliseront les serveurs DNS publics 8.8.8.8 et 1.1.1.1, ainsi que le domaine local défini par u-paris.local.