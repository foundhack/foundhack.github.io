---
title: "Writeup – Challenge OSINT Tracking"
icon: "fas fa-search-location"
order: 5
---

# 🕵️ Writeup – Challenge OSINT Tracking
**Ce write-up a été élaboré par foundhack, concepteur du challenge, et met en avant une approche structurée de l’OSINT.**
## 📌 Introduction
Dans ce challenge OSINT intitulé **Tracking**, nous devions identifier l’endroit où le Père Noël a séjourné à partir d’un texte et d’une image, puis retrouver plusieurs informations afin de reconstruire le flag final.

![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/Image.png' | relative_url }})

---

## 🧩 Énoncé du challenge
Le challenge fournit :
- Un **texte**
- Une **image**

Le texte indique que le **Père Noël a séjourné dans un hôtel de son pays**.  
L’objectif est de retrouver :
- Le nom de l’hôtel
- Le numéro de téléphone
- Le prix d’une brosse à dents vendue dans l’hôtel

---

## 🔍 Analyse des indices

Après lecture du texte, un premier indice ressort immédiatement :  
👉 **Le pays du Père Noël**

En ouvrant l’image fournie, un détail important attire l’attention : 
![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/image.webp' | relative_url }}) 
👉 **Le drapeau de la Finlande**

En OSINT, lorsqu’une image est fournie, le premier réflexe est d’effectuer une **recherche inversée d’image**.  
![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/2.png' | relative_url }}) 
Cette recherche confirme que l’image provient bien de **Finlande** et qu’elle est liée à un **hôtel**.

### 📝 Prise de notes
- Pays du Père Noël : **Finlande**
- Drapeau visible sur l’image : **Finlande**
- Le lieu est un **hôtel situé en Finlande**

---

## 🏨 Étape 1 – Identifier l’hôtel

Pour retrouver l’hôtel, une recherche Google est effectuée avec les mots-clés :

> **« Hôtes en Finlande »**
![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/3.png' | relative_url }}) 
Cette recherche mène vers le site touristique officiel de la Finlande, une source fiable en OSINT :

🔗 https://www.visitfinland.com/fr/les-articles/hotels-et-chambres-d-hotes-sur-la-cote-finlandaise/

En parcourant les différents établissements présentés, un hôtel attire immédiatement l’attention :  
➡️ **L’Hôtel Svala**,On retrouve la photo de deux enfants en train de jouer. Comme nous sommes à Noël et que le Père Noël adore les enfants, cela attire mon attention..

![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/4.png' | relative_url }}) 

---

## 🌐 Vérification et confirmation

Site officiel de l’hôtel :  
🔗 https://thehotelsvala.com/

En explorant davantage, une page retient particulièrement l’attention :

🔗 https://thehotelsvala.com/hotel-history
![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/5.png' | relative_url }}) 
En descendant sur cette page, on retrouve **exactement l’image fournie dans le challenge**.


🎯 **Conclusion : l’hôtel est formellement identifié.**

---

## 🧠 Reconstruction du flag

Pour reconstruire le flag, trois informations sont nécessaires :

### 1️⃣ Nom de l’hôtel
➡️ **Hotel Svala**

### 2️⃣ Numéro de téléphone
Le numéro est disponible en bas du site officiel :
➡️ **+358 18 474 74**
![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/6.png' | relative_url }}) 

### 3️⃣ Prix de la brosse à dents

![Challenge OSINT Tracking]({{ '/assets/img/posts/CTF/7.png' | relative_url }}) 
Une boutique est accessible sur le site :

🔗 https://thehotelsvala.com/svala-store

Le prix de la brosse à dents est :
➡️ **6£**

---

## 🚩 Flag final

Exemple : CMCTF{HotelSofitel_+2296589872850$}

**Flag Final : CMCTF{HotelSvala+3581847474_6£}**








