---
title: "CTF"
icon: "fas fa-flag"
order: 1
---

# Introduction

Je suis connu sous le pseudo **foundhack**, un CTF player.  
Mais aujourd’hui, je m’oriente aussi vers le monde **réel** : le **Pentesting** et l’analyse de **Malware** (même si je reste encore débutant dans ces deux domaines).  
J’adresse ce blog à toute personne passionnée par les **CTF** et la **cybersécurité** en général.

---

# La cybersécurité en général

Avant de parler des CTF, parlons rapidement de la cybersécurité.  
Je ne vais pas vous donner une définition Google (votre meilleur ami pour ça), mais simplement vous dire que la cybersécurité est un domaine vaste et passionnant.  

On peut la diviser en **trois grandes catégories** qui regroupent ensuite plusieurs sous-domaines :  

- **Red Team**  
- **Blue Team**  
- **GRC**

Souvent, on s’intéresse surtout aux deux premières. Certains commencent par la Red Team, d’autres par la Blue Team.

---

## Red Team

Ici, on retrouve les testeurs d’intrusion, ceux qui piratent légalement. Leur rôle est de simuler des attaques, de penser comme des hackers malveillants afin d’identifier les failles avant qu’un vrai attaquant ne les exploite.  
Dans la Red Team, on retrouve donc des hackers **éthiques**.  
Leur mission peut se résumer à : **casser, contourner et trouver un chemin d’accès caché.**

---

## Blue Team

Eux, ce sont les défenseurs.  
Pour donner une image, ce sont comme des **policiers** : ils protègent, enquêtent pour comprendre comment un attaquant est entré et cherchent comment renforcer la sécurité pour éviter que cela ne se reproduise.  

C’est aussi dans cette catégorie qu’on retrouve le métier de **SOC Analyst**, très demandé aujourd’hui.

---

## Choisir son chemin

Chacun choisit son chemin selon ses intérêts.  
Moi, au départ, j’étais fasciné par la **Blue Team** (que j’apprécie toujours).  
Mais aujourd’hui, je m’oriente de plus en plus vers la **Red Team**.  
Une chose est sûre : il faut **comprendre les deux**. Comprendre comment attaquer et comment défendre. Comprendre le pourquoi et le comment.

Quand on débute, il est important de toucher un peu à tout. Mais ensuite, le but est de se **spécialiser** dans ce qu’on aime le plus.  

Prenons l’exemple de la **médecine** : on a des médecins généralistes, mais pour un problème de dents, on consulte un dentiste. La spécialisation est donc essentielle, même si avoir des bases dans tous les domaines reste utile.

Pour mieux comprendre ces catégories, je conseille le **Learn Path** de [TryHackMe](https://tryhackme.com/hacktivities?tab=roadmap).  
Donnez-vous 1 ou 2 mois : faites le parcours Blue Team ou Red Team (ou les deux si vous hésitez encore).

---

# C’est quoi un CTF ?

Un **CTF (Capture The Flag)** est une compétition de hacking éthique.  
Le but : résoudre des défis dans différentes catégories de cybersécurité.  

Attention : la cybersécurité, ce n’est pas seulement les CTF.  
Il existe aussi le **Bug Bounty**, que j’apprécie encore plus que les CTF.  
Le Bug Bounty, c’est le **monde réel** : des entreprises créent des programmes pour tester et renforcer la sécurité de leurs systèmes. C’est plus complexe, mais aussi plus rémunérateur.  

Mais je le répète : il ne faut pas commencer la cybersécurité uniquement pour l’argent. La passion d’abord, l’argent viendra ensuite.  

(Ici, on reste concentré sur les CTF, je reviendrai plus tard sur le Bug Bounty).

---

# Les types de CTF

On distingue deux grands types de CTF :  

---

## Le Jeopardy

C’est le format le plus courant. On y retrouve plusieurs catégories :  

- Web  
- Forensics  
- Reverse Engineering  
- Pwn  
- OSINT  
- Crypto  
- IA  
- Programmation  
 
Exemple : **HACKERLAB**, là où tout a commencé pour moi.  
(J’en ferai un article dédié, mais ici je reste général).

---

## L’Attack & Defense

Ici, il faut attaquer **et** défendre en même temps.  
Pour être honnête, je n’ai pas encore participé sérieusement à ce format.  

Exemple : la compétition **ECOWAS**.  
Pour un aperçu, il y a aussi le mode **King of the Hill** sur TryHackMe (non conseillé pour les débutants).

---

# Comment choisir sa catégorie préférée ?

Deux façons de savoir ce qui vous attire :  

1. **Selon vos objectifs à long terme** :  
   - Blue Team → Forensics, Crypto, Reverse.  
   - Red Team → Web, Boot2Root.  

2. **En testant tout** :  
   Faites quelques challenges faciles (*easy*) ou moyens (*medium*) dans chaque catégorie et voyez celles qui vous passionnent.  

Conseil : spécialisez-vous dans une ou deux catégories, mais gardez des bases dans les autres.  
En équipe ou en solo, être polyvalent est un énorme avantage.  

Exemple personnel : dans les CTF, je me tourne souvent vers l’**OSINT**. Si un challenge OSINT est présent, je fonce dessus, ce qui me permet d’être rapide et efficace.

---

# Les bases pour débuter

Avant tout, pour maîtriser le **shell** et votre terminal, je vous recommande les challenges **Bandit** de cette plateforme :  
👉 [OverTheWire - Bandit](https://overthewire.org/wargames/bandit/)

Ensuite, pour acquérir les notions de base en **cybersécurité** et en **réseaux**, je vous recommande ces cours :  
👉 [Netacad](https://www.netacad.com/)  
À la fin du parcours, vous serez évalués et vous obtiendrez une certification.

---

# Plateformes pour apprendre et s’entraîner

Voici quelques plateformes incontournables :  

- **TryHackMe** & **Hack The Box** : indispensables pour apprendre et pratiquer.  
- **Web** : [PortSwigger](https://portswigger.net/) → je recommande vivement cette plateforme pour exceller en Web. Toutes les vulnérabilités y sont abordées.  
- **Crypto** : [CryptoHack](https://cryptohack.org/).  
- **Reverse Engineering** :  
  - omu.rce  
  - challenges.re  
  - crackmes.one  
- **Pwn / Binary Exploitation** :  
  - [Pwn College](https://pwn.college/) → cours et challenges du niveau débutant à expert  
  - [Guy in a Tuxedo](https://guyinatuxedo.github.io/00-intro/index.html) → collection de défis avec writeups  
- **Forensics & Stéganographie** : [LetsDefend](https://letsdefend.io/)  
- **OSINT** : TryHackMe  
- **Boot2Root** : TryHackMe et Hack The Box  

Pour pratiquer régulièrement les CTF, voici quelques plateformes :  

- [PicoCTF](https://picoctf.org/)  
- [Root-Me](https://www.root-me.org/)  
- [CTFlearn](https://ctflearn.com/)  
- [CTF.bjsec.xyz](https://ctf.bjsec.xyz/) (créée par mon équipe)  

Pour aller plus loin, je recommande aussi les challenges de Hack The Box. Pour les passionnés de Forensics, les défis **Sherlock** de Hack The Box sont particulièrement intéressants et amusants.  

Quand vous aurez acquis des bases solides et un certain niveau, je vous recommande de participer aux **CTF internationaux**.  
C’est là qu’on apprend le plus.  

Exemple personnel : pour bien me préparer au Hackerlab, je ne laissais pas passer un seul week-end sans participer à un CTF international trouvé sur la plateforme [CTFtime](https://ctftime.org/).  
C’est difficile, mais c’est ce qui forme le mieux.  
Je parlerai plus en détail de CTFtime dans mon article sur le Hackerlab.

Conseil ultime : **pratiquez autant que possible**.

---

# Les certifications

En cybersécurité, les certifications sont importantes pour être reconnues.  

### Pour débuter :
- Les certifications gratuites de **Cisco** (réseau et sécurité) : [Netacad](https://www.netacad.com/).  

### Pour progresser :
- Sur TryHackMe : **PT1** (Pentest) et **SAL1** (SOC).  
- Sur Hack The Box : **CPTS**, **CDSA** (après avoir terminé les parcours).  

Attention : les certifications coûtent cher.  
Privilégiez les **certifications pratiques** plutôt que celles purement théoriques (QCM).  

Mais gardez en tête que ne pas avoir de certification ne veut pas dire ne pas être compétent. Beaucoup de personnes très fortes n’en ont pas, faute de moyens.

---

# Mon parcours et mes objectifs

Je veux évoluer à la fois dans la **Red Team** et la **Blue Team**.  

Mes certifications prioritaires :  

- CRTA  
- eJPT  
- CRTO  
- CPTS  
- OSCP  
- CDSA  
- MalDev Academy  

Il y en a d’autres, mais celles-ci sont mes priorités.  
Les autres viendront peut-être plus tard, avec le soutien d’un employeur.  

Quoi qu’il arrive, je garde une certitude :  
**C’est Dieu qui décide de la suite.**
