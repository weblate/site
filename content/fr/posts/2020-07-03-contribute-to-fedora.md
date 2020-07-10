---
title: Comment contribuer à la traduction de la distribution Linux Fedora ?
date: 2020-07-03
authors:
- jibec
license: CC-BY SA 4.0
tags:
- contribuer
categories:
- Régionalisation
---

Une distribution est un type de projet de logiciel libre spécifique et complexe, sur lequel les objectifs et contraintes influent directement sur la capacité d’action du traducteur.
Mais pour vous faciliter la vie, et améliorer celle de ceux [ne parlant pas anglais]({{< relref "2020-06-12-80-percent.md" >}}), Fedora met à disposition une plateforme de traduction.

## Qu’est-ce qu’une distribution Linux ?

Une distribution Linux est un ensemble de logiciels, paramétrés de façon cohérente de façon à répondre à un besoin tout en respectant un ensemble de contraintes.
Le cœur d’un projet de distribution tel que le projet Fedora, est une activité d’ingénierie logicielle permettant de compiler l’ensemble des logiciels afin de les mettre à disposition des utilisateurs et utilisatrices.

La problématique principale étant : comment puis-je actualiser le paramétrage sur l’ensemble de mes logiciels tout en facilitant la mise à jour de ces mêmes logiciels ?

Une distribution contient une quantité très importante de logiciels : plus de 30 000 pour Fedora ([source](https://src.fedoraproject.org/projects/rpms/*)).
L’immense majorité de ces logiciels provient d’équipes n’ayant aucun lien direct avec le projet Fedora, par exemple le navigateur Mozilla Firefox, ou la suite bureautique LibreOffice.
Une minorité de logiciels est créée spécifiquement pour le besoin propre du projet Fedora, tel l’installeur Anaconda.

## La distribution Linux Fedora et ses valeurs

La distribution Linux Fedora est dite générique, elle vise à répondre à divers besoins : l’utilisation sur un poste de travail et sur serveur.
Pour les postes de travail les deux possibilités mises en avant sont les éditions « Fedora workstation » et « Fedora Silverblue ».
Pour les serveurs, Fedora peut s’installer en tant qu’OS installé sur du matériel classique (« Fedora Server »), sur du matériel embarqué (« Fedora IOT ») ou conteneurisé (« Fedora CoreOS »).

On voit ici que rien n’est simple, derrière le concept de « distribution Linux », on voit qu’une même série de logiciels peut être paramétrée de façon différente pour répondre à des objectifs distincts.

En plus de ces multiples paramétrages, la distribution Linux Fedora s’impose les contraintes suivantes : l’utilisation exclusive de logiciels libres, être à la pointe des évolutions en réalisant notamment des sorties fréquentes, avoir une contribution directe aux logiciels plutôt que de concevoir et maintenir une surcouche de modifications.

Pour plus de détails, je vous recommande la lecture de cette page décrivant Fedora et ses quatre fondations : https://docs.fedoraproject.org/en-US/project/

## La conséquence sur le rôle du traducteur dans le projet Fedora

Quand vous vous rendrez sur la plateforme de traduction du projet Fedora https://translate.fedoraproject.org/projects/ vous ne trouverez qu’une petite partie de tous les logiciels disponibles réellement quand vous installez Fedora.

La plateforme de traduction de Fedora contient :
* Les logiciels que sa communauté a créé, par exemple l’installeur anaconda https://translate.fedoraproject.org/projects/anaconda/
* Les sites internets du projet Fedora : https://translate.fedoraproject.org/projects/fedora-websites/
* La documentation du projet Fedora : https://translate.fedoraproject.org/projects/fedora-docs-l10n-docs/ (et tous les autres projets débutants par fedora-docs-l10n)
* Des logiciels dont les créateurs ont décidé de faire héberger leurs traductions au sein du projet Fedora : tels pulseaudio https://translate.fedoraproject.org/projects/pulseaudio/ ou ibus https://translate.fedoraproject.org/projects/ibus/

Pour tout le reste, il faudra trouver où est hébergé le logiciel et comprendre comment y contribuer.
Mais cela sera le sujet d’un autre article.

## Conclusion

Même si une distribution Linux est un ensemble complexe, y contribuer est facile.
La seule question à se poser quand on arrive sur une plateforme de traduction, c’est de s’assurer de comprendre ce qu’on y voit, dans le projet Fedora, c’est toujours le logiciel d’origine, sans intermédiaire.
