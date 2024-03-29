1. Voici la commande que l'on peut taper depuis le terminal : ``cat /etc/passwd`` 
Si l'on souhaite n'afficher que la première colonne qui est celle qui contient uniquement le nom des utilisateurs on ajoute la commande : ``awk -F: '{print $1}' /etc/passwd``

2. Il s'agit de la commande 
``chmod <u (pour l'utilisateur) g (pour le groupe auquel il appartient) o (pour les autres) + r (droit en lecture) w (droit en écriture) x (droit en exécution)``.
Ici les droits de l'utilisateur sont déjà tous présents donc nous utiliserons soit ``chmod g + ...`` soit ``chmod o + ...``.
Sinon directement avec ``chmod 777`` ou le premier 7 correspond à l'utilisateur, le second au groupe de l'utilisateur et le troisième aux 'autres'.
Nous avons R = 4 / w = 2 / x = 1    total = 7 donc ok pour les trois types de droit.

3. Nous les plaçons dans un fichier intitulé ``.gitignore``. Alors ils ne seront pas pris en compte lors du ``git push``. Il faut inscrire au sein de ce fichier le nom de chaque fichier ou répertoire que l'on souhaite "ignoré", en inscrivant un nom par ligne.

4. La commande à utiliser est la suivante : ``git merge <branche_à_fusionner>`` 
Il faut cependant d'abord se trouver sur la branche dans laquelle on souhaite fusionner l'autre branche (donc dans la branche *main*)

5. Ce qui donne en une ligne de commande :
```
echo -e "Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :\n- "Bonjour est-ce que ce clavier fonctionne bien ?"\n- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backlash \\ !"\n- "Même des tildes ~ ?"\n- "Evidemment !"
```

6. On peut se servir de la commande : ``fg %37970``

7. Sur la couche 2 on retrouve les switch, les ponts et cartes réseau, qui se servent du protocole MAC.
Sur la couche 3, on retrouve les routeurs qui eux se servent des protocoles IP. Ils déterminent les meilleurs chemins pour les trames Ethernet.

8. ``cd`` = ``Set-Location``//
``cp`` = ``Copy-Item``//
``mkdir`` = ``mkdir`` ou ``New-Item -ItemType Directory``//
``ls`` = ``Get-ChildItem``

9. Le Payload est la *charge utile* de la trame Ethernet, là où l'on retrouve l'information transportée.

10. La méthode de classification employée avant celle du CIDR est celle des classes A B C D E.
La principale raison était le besoin d'adresse IP étant grandissant, cette méthode avait ses limites au niveau quantitatif. De plus, la quantité d'adresses attribuées par plage n'était parfois pas en adéquation avec les besoins des entreprises (réseaux).

