---
layout: default
title: Portfolio
permalink: /portfolio/
icon: fas fa-briefcase
order: 2
---

<style>
  :root {
    --pf-bg-card: #0f172a;
    --pf-border: #1e293b;
    --pf-border-hover: #38bdf8;
    --pf-text-primary: #f8fafc;
    --pf-text-secondary: #94a3b8;
    --pf-text-muted: #64748b;
    --pf-accent: #0284c7;
    --pf-accent-light: #38bdf8;
    --pf-tag-bg: #1e293b;
    --pf-tag-border: #334155;
    --pf-status-prep: #fef3c7;
    --pf-status-prep-text: #92400e;
    --pf-status-prep-border: #fcd34d;
    --pf-status-live: #ecfdf5;
    --pf-status-live-text: #065f46;
    --pf-status-live-border: #a7f3d0;
  }

  .portfolio-root {
    color: var(--pf-text-primary);
    line-height: 1.6;
    max-width: 980px;
    margin: 0 auto;
    padding: 10px 0 30px;
  }

  /* Header */
  .pf-header {
    border-bottom: 1px solid var(--pf-border);
    padding-bottom: 24px;
    margin-bottom: 32px;
  }

  .pf-name {
    font-size: 1.85rem;
    font-weight: 700;
    letter-spacing: -0.02em;
    color: var(--pf-text-primary);
    margin: 0 0 6px 0;
    line-height: 1.25;
  }

  .pf-name .pf-alias {
    color: var(--pf-accent-light);
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-weight: 500;
    font-size: 1.35rem;
  }

  .pf-headline {
    font-size: 1.05rem;
    color: var(--pf-text-secondary);
    margin-bottom: 14px;
    font-weight: 500;
  }

  .pf-bio {
    color: var(--pf-text-secondary);
    font-size: 0.95rem;
    margin-bottom: 18px;
    max-width: 820px;
    line-height: 1.65;
  }

  .pf-meta-bar {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 16px;
    font-size: 0.88rem;
    color: var(--pf-text-secondary);
  }

  .pf-meta-item {
    display: inline-flex;
    align-items: center;
    gap: 6px;
  }

  .pf-meta-links {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    margin-top: 14px;
  }

  .pf-link-btn {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    padding: 6px 14px;
    border-radius: 6px;
    font-size: 0.85rem;
    font-weight: 500;
    text-decoration: none !important;
    background: #1e293b;
    color: var(--pf-text-primary) !important;
    border: 1px solid #334155;
    transition: background-color 0.15s ease, border-color 0.15s ease, color 0.15s ease;
  }

  .pf-link-btn:hover, .pf-link-btn:focus-visible {
    background: #0f172a;
    border-color: var(--pf-accent-light);
    color: var(--pf-accent-light) !important;
    outline: none;
  }

  /* Section Styling */
  .pf-section {
    margin-bottom: 38px;
  }

  .pf-section-title {
    font-size: 1.25rem;
    font-weight: 700;
    letter-spacing: -0.01em;
    color: var(--pf-text-primary);
    margin: 0 0 16px 0;
    padding-bottom: 8px;
    border-bottom: 1px solid var(--pf-border);
    display: flex;
    align-items: center;
    gap: 8px;
  }

  .pf-section-title i {
    color: var(--pf-accent-light);
    font-size: 1rem;
  }

  /* Project Cards (Max 3) */
  .pf-projects-list {
    display: flex;
    flex-direction: column;
    gap: 16px;
  }

  .pf-project-card {
    background: var(--pf-bg-card);
    border: 1px solid var(--pf-border);
    border-radius: 8px;
    padding: 20px 22px;
    transition: border-color 0.2s ease;
  }

  .pf-project-card:hover {
    border-color: var(--pf-border-hover);
  }

  .pf-project-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    flex-wrap: wrap;
    gap: 8px;
    margin-bottom: 4px;
  }

  .pf-project-title {
    font-size: 1.1rem;
    font-weight: 700;
    color: var(--pf-text-primary);
    margin: 0;
  }

  .pf-status-badge {
    font-size: 0.75rem;
    font-weight: 600;
    padding: 2px 8px;
    border-radius: 4px;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    border: 1px solid transparent;
  }

  .pf-status-research {
    background: rgba(56, 189, 248, 0.1);
    color: var(--pf-accent-light);
    border-color: rgba(56, 189, 248, 0.25);
  }

  .pf-status-personal {
    background: rgba(16, 185, 129, 0.1);
    color: #34d399;
    border-color: rgba(16, 185, 129, 0.25);
  }

  .pf-status-academic {
    background: rgba(148, 163, 184, 0.1);
    color: #cbd5e1;
    border-color: rgba(148, 163, 184, 0.25);
  }

  .pf-project-role {
    font-size: 0.82rem;
    color: var(--pf-accent-light);
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    margin-bottom: 10px;
  }

  .pf-project-details {
    font-size: 0.9rem;
    color: var(--pf-text-secondary);
    line-height: 1.6;
    margin-bottom: 12px;
  }

  .pf-project-details p {
    margin: 0 0 8px 0;
  }

  .pf-project-details ul {
    margin: 4px 0 8px 20px;
    padding: 0;
  }

  .pf-project-details li {
    margin-bottom: 4px;
  }

  .pf-project-details code {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    background: rgba(255, 255, 255, 0.06);
    color: #e2e8f0;
    padding: 1px 4px;
    border-radius: 3px;
    font-size: 0.85em;
  }

  .pf-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    margin-top: 10px;
  }

  .pf-tag {
    font-size: 0.74rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    background: var(--pf-tag-bg);
    color: #cbd5e1;
    border: 1px solid var(--pf-tag-border);
    padding: 2px 7px;
    border-radius: 4px;
  }

  /* Tables (Sober, Accessible, Semantic) */
  .pf-table-wrapper {
    overflow-x: auto;
    border: 1px solid var(--pf-border);
    border-radius: 8px;
    background: var(--pf-bg-card);
  }

  .pf-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.88rem;
    text-align: left;
  }

  .pf-table th {
    background: #1e293b;
    color: var(--pf-text-primary);
    font-weight: 600;
    padding: 10px 14px;
    border-bottom: 1px solid var(--pf-border);
    font-size: 0.82rem;
    text-transform: uppercase;
    letter-spacing: 0.03em;
  }

  .pf-table td {
    padding: 12px 14px;
    border-bottom: 1px solid var(--pf-border);
    color: var(--pf-text-secondary);
    vertical-align: top;
  }

  .pf-table tr:last-child td {
    border-bottom: none;
  }

  .pf-table td strong {
    color: var(--pf-text-primary);
  }

  /* Skills Block */
  .pf-skills-container {
    display: flex;
    flex-direction: column;
    gap: 12px;
  }

  .pf-skill-row {
    background: var(--pf-bg-card);
    border: 1px solid var(--pf-border);
    border-radius: 6px;
    padding: 12px 16px;
  }

  .pf-skill-title {
    font-size: 0.82rem;
    font-weight: 600;
    color: var(--pf-accent-light);
    text-transform: uppercase;
    letter-spacing: 0.04em;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    margin-bottom: 8px;
  }

  .pf-skill-items {
    font-size: 0.9rem;
    color: var(--pf-text-secondary);
    line-height: 1.55;
  }

  /* Contact block */
  .pf-contact-box {
    background: var(--pf-bg-card);
    border: 1px solid var(--pf-border);
    border-radius: 8px;
    padding: 20px;
  }

  .pf-contact-list {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    gap: 8px;
    font-size: 0.9rem;
  }

  .pf-contact-list li {
    display: flex;
    align-items: center;
    gap: 10px;
    color: var(--pf-text-secondary);
  }

  .pf-contact-list a {
    color: var(--pf-accent-light) !important;
    text-decoration: none;
  }

  .pf-contact-list a:hover, .pf-contact-list a:focus-visible {
    text-decoration: underline !important;
  }

  @media (max-width: 640px) {
    .pf-name { font-size: 1.5rem; }
    .pf-name .pf-alias { font-size: 1.15rem; }
    .pf-meta-bar { flex-direction: column; align-items: flex-start; gap: 6px; }
    .pf-project-card { padding: 16px; }
    .pf-table th, .pf-table td { padding: 8px 10px; font-size: 0.82rem; }
  }
</style>

<div class="portfolio-root">

  <!-- 1. EN-TÊTE -->
  <header class="pf-header">
    <h1 class="pf-name">
      Chamss-Dine AGBIZOUNON <span class="pf-alias">/ foundhack</span>
    </h1>

    <div class="pf-headline">
      Étudiant en Informatique & Cybersécurité — Epitech Bénin
    </div>

    <p class="pf-bio">
      Étudiant en 1ère année à Epitech Bénin (Promo 2029) et titulaire d'un Diplôme de Technicien en maintenance informatique. Intérêt marqué pour la sécurité offensive responsable, la programmation système (Go, C) et l'analyse de vulnérabilités. Pratiquant régulier de compétitions CTF et engagé dans le partage technique.
    </p>

    <div class="pf-meta-bar">
      <div class="pf-meta-item">
        <i class="fas fa-map-marker-alt" aria-hidden="true"></i> Cotonou, Bénin
      </div>
      <div class="pf-meta-item">
        <i class="fas fa-university" aria-hidden="true"></i> Epitech Bénin
      </div>
      <div class="pf-meta-item">
        <i class="fas fa-trophy" aria-hidden="true"></i> Vainqueur HackerLab 2025 (ANSSI Bénin)
      </div>
    </div>

    <nav class="pf-meta-links" aria-label="Liens professionnels">
      <a href="mailto:chamss-dine.agbizounon@epitech.eu" class="pf-link-btn">
        <i class="fas fa-envelope" aria-hidden="true"></i> chamss-dine.agbizounon@epitech.eu
      </a>
      <a href="https://github.com/foundhack" target="_blank" rel="noopener noreferrer" class="pf-link-btn">
        <i class="fab fa-github" aria-hidden="true"></i> GitHub
      </a>
      <a href="https://www.linkedin.com/in/foundhack/" target="_blank" rel="noopener noreferrer" class="pf-link-btn">
        <i class="fab fa-linkedin" aria-hidden="true"></i> LinkedIn
      </a>
      <a href="https://tryhackme.com/p/foundhack" target="_blank" rel="noopener noreferrer" class="pf-link-btn">
        <i class="fas fa-flag" aria-hidden="true"></i> TryHackMe
      </a>
      <a href="https://app.hackthebox.com/profile/foundhack" target="_blank" rel="noopener noreferrer" class="pf-link-btn">
        <i class="fas fa-cube" aria-hidden="true"></i> Hack The Box
      </a>
    </nav>
  </header>

  <!-- 2. PROJETS SÉLECTIONNÉS (MAXIMUM TROIS PROJETS) -->
  <section class="pf-section" aria-labelledby="section-projects">
    <h2 id="section-projects" class="pf-section-title">
      <i class="fas fa-folder-open" aria-hidden="true"></i> Projets Sélectionnés
    </h2>

    <div class="pf-projects-list">

      <!-- PROJET 1 : FOUNDHACK C2 -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Foundhack C2</h3>
          <span class="pf-status-badge pf-status-research">Recherche en Laboratoire</span>
        </div>
        <div class="pf-project-role">Framework de simulation de commande & contrôle · Environnement de test isolé</div>
        <div class="pf-project-details">
          <p>
            <strong>Objectif :</strong> Étude des techniques de communication furtive exploitant des API tierces (canal covert) et analyse des mécanismes de détection associés en environnement de test isolé.
          </p>
          <p>
            <strong>Contribution personnelle :</strong>
          </p>
          <ul>
            <li>Conception d'un prototype d'implant en Go implémentant la gestion des appels système indirects sous Windows (recherche sur les techniques Hell's Gate / Halo's Gate) et la restauration des hooks de <code>ntdll.dll</code> pour l'analyse des comportements de sécurité.</li>
            <li>Développement du contrôleur en Python avec chiffrement symétrique de bout en bout (AES-256-GCM, dérivation PBKDF2) et fragmentation de messages.</li>
            <li>Rédaction d'une matrice de détection documentant les indicateurs de compromission (IOCs) mémoire et réseau (approche Purple Team).</li>
          </ul>
          <p>
            <strong>État réel :</strong> Prototype expérimental de recherche personnelle, développé strictement en laboratoire d'apprentissage sans déploiement hors périmètre de test.
          </p>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Golang</span>
          <span class="pf-tag">Python</span>
          <span class="pf-tag">AES-256-GCM</span>
          <span class="pf-tag">API REST</span>
          <span class="pf-tag">Sécurité Offensive & Détection</span>
        </div>
      </article>

      <!-- PROJET 2 : TEKFLOW (MOULIBOT) -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">TekFlow (MouliBot)</h3>
          <span class="pf-status-badge pf-status-personal">Projet Personnel</span>
        </div>
        <div class="pf-project-role">Automatisation & Transmission de notifications académiques</div>
        <div class="pf-project-details">
          <p>
            <strong>Objectif :</strong> Automatiser la consultation et l'acheminement en temps réel des résultats d'évaluation académique (tests automatisés) vers des canaux de messagerie instantanée.
          </p>
          <p>
            <strong>Contribution personnelle :</strong>
          </p>
          <ul>
            <li>Développement d'un pipeline d'interrogation et de traitement asynchrone des notifications en Python et Node.js.</li>
            <li>Mise en place d'une persistance locale des données et états de session avec SQLite.</li>
            <li>Intégration d'adaptateurs pour webhooks Discord et API WhatsApp.</li>
          </ul>
          <p>
            <strong>État réel :</strong> Outil personnel fonctionnel, hébergé sur serveur privé pour des besoins d'organisation et d'automatisation d'études.
          </p>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Python</span>
          <span class="pf-tag">Node.js</span>
          <span class="pf-tag">SQLite</span>
          <span class="pf-tag">Webhooks</span>
          <span class="pf-tag">Linux</span>
        </div>
      </article>

      <!-- PROJET 3 : OBSIDIAN -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Obsidian</h3>
          <span class="pf-status-badge pf-status-academic">Projet Académique Epitech</span>
        </div>
        <div class="pf-project-role">Rétro-ingénierie & Audit de sécurité binaire (Module G-SEC-210)</div>
        <div class="pf-project-details">
          <p>
            <strong>Objectif :</strong> Réaliser un audit de sécurité complet (boîte noire et boîte blanche) d'un binaire Linux ELF 64-bit fourni dans le cadre du cursus Epitech, identifier les faiblesses d'implémentation et proposer des correctifs sécurisés.
          </p>
          <p>
            <strong>Contribution personnelle :</strong>
          </p>
          <ul>
            <li>Analyse statique et décompilation du binaire sous Ghidra, identification des structures de données et des flux d'exécution.</li>
            <li>Débogage dynamique sous GDB et fuzzing manuel pour repérer des anomalies d'exécution et des corruptions mémoire.</li>
            <li>Rédaction de patchs de remédiation en langage C pour corriger les vulnérabilités identifiées et sécuriser le code source.</li>
          </ul>
          <p>
            <strong>État réel :</strong> Projet académique terminé, évalué et validé dans le cadre du cursus Epitech.
          </p>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Langage C</span>
          <span class="pf-tag">Linux ELF 64-bit</span>
          <span class="pf-tag">Ghidra</span>
          <span class="pf-tag">GDB</span>
          <span class="pf-tag">Audit de Code</span>
        </div>
      </article>

    </div>
  </section>

  <!-- 3. PARCOURS (FORMATION & EXPÉRIENCES) -->
  <section class="pf-section" aria-labelledby="section-career">
    <h2 id="section-career" class="pf-section-title">
      <i class="fas fa-history" aria-hidden="true"></i> Parcours
    </h2>

    <h3 style="font-size: 1rem; color: var(--pf-text-primary); margin: 16px 0 10px 0;">Formation Académique</h3>
    <div class="pf-table-wrapper" style="margin-bottom: 24px;">
      <table class="pf-table">
        <thead>
          <tr>
            <th>Période</th>
            <th>Diplôme / Cursus</th>
            <th>Établissement</th>
            <th>Détails</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>2025 – 2028</strong></td>
            <td>Bachelor en Technologies de l'Information</td>
            <td>Epitech Bénin (Cotonou)</td>
            <td>Cursus d'ingénierie informatique orienté projets : programmation système en C, algorithmique, réseaux, sécurité et DevOps.</td>
          </tr>
          <tr>
            <td><strong>2022 – 2025</strong></td>
            <td>Diplôme de Technicien (DT)</td>
            <td>Lycée Technique et Professionnel de Porto-Novo</td>
            <td>Filière Installation et Maintenance Informatique (IMI) : maintenance matérielle et logicielle, diagnostic système, réseaux locaux.</td>
          </tr>
          <tr>
            <td><strong>2021</strong></td>
            <td>BEPC</td>
            <td>Lycée Béhanzin (Porto-Novo)</td>
            <td>Enseignement secondaire général.</td>
          </tr>
        </tbody>
      </table>
    </div>

    <h3 style="font-size: 1rem; color: var(--pf-text-primary); margin: 16px 0 10px 0;">Expériences Professionnelles & Engagements</h3>
    <div class="pf-table-wrapper">
      <table class="pf-table">
        <thead>
          <tr>
            <th>Période</th>
            <th>Rôle</th>
            <th>Organisation</th>
            <th>Missions & Réalisations</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>09/2024 – Présent</strong></td>
            <td>Mentor Cybersécurité & Coach CTF</td>
            <td>CERADEI – EPAC-GIT (À distance)</td>
            <td>Animation d'ateliers d'apprentissage technique pour étudiants : sécurité web (OWASP Top 10), rétro-ingénierie binaire et analyse forensique. Accompagnement aux épreuves de CTF.</td>
          </tr>
          <tr>
            <td><strong>Actuel</strong></td>
            <td>Chall Maker CTF (Bénévole)</td>
            <td>BJSEC</td>
            <td>Conception et résolution d'épreuves d'entraînement dans les catégories OSINT, Stéganographie et Cryptographie.</td>
          </tr>
          <tr>
            <td><strong>07/2023 – 09/2023</strong></td>
            <td>Stagiaire Technicien Informatique</td>
            <td>3D Telecoms Business Center (Porto-Novo)</td>
            <td>Diagnostic matériel et logiciel, installation et configuration de systèmes Linux et Windows, câblage et sertissage réseau.</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- 4. COMPÉTENCES TECHNIQUES -->
  <section class="pf-section" aria-labelledby="section-skills">
    <h2 id="section-skills" class="pf-section-title">
      <i class="fas fa-tools" aria-hidden="true"></i> Compétences Techniques
    </h2>

    <div class="pf-skills-container">
      <div class="pf-skill-row">
        <div class="pf-skill-title">Langages & Scripting</div>
        <div class="pf-skill-items">
          Golang, Langage C, Python, TypeScript, JavaScript, Bash / Shell Unix, SQL (MySQL, SQLite), PHP.
        </div>
      </div>

      <div class="pf-skill-row">
        <div class="pf-skill-title">Sécurité Offensive & Rétro-ingénierie</div>
        <div class="pf-skill-items">
          Méthodologie OWASP Top 10, décompilation et désassemblage sous Ghidra, débogage dynamique avec GDB, analyse réseau avec Wireshark et Nmap, tests de sécurité applicative web avec Burp Suite.
        </div>
      </div>

      <div class="pf-skill-row">
        <div class="pf-skill-title">Systèmes & Environnements</div>
        <div class="pf-skill-items">
          Administration Linux (Debian, Ubuntu), programmation système POSIX, conteneurisation Docker et Docker Compose, gestion de version Git, intégration continue avec GitHub Actions.
        </div>
      </div>
    </div>
  </section>

  <!-- 5. DISTINCTIONS & CERTIFICATIONS -->
  <section class="pf-section" aria-labelledby="section-awards-certs">
    <h2 id="section-awards-certs" class="pf-section-title">
      <i class="fas fa-award" aria-hidden="true"></i> Distinctions & Certifications
    </h2>

    <h3 style="font-size: 1rem; color: var(--pf-text-primary); margin: 16px 0 10px 0;">Prix & Compétitions CTF</h3>
    <div class="pf-table-wrapper" style="margin-bottom: 24px;">
      <table class="pf-table">
        <thead>
          <tr>
            <th>Année</th>
            <th>Distinction</th>
            <th>Événement / Organisateur</th>
            <th>Format</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>2025</strong></td>
            <td><strong>1ère place nationale</strong></td>
            <td>HACKERLAB 2025 · ANSSI Bénin</td>
            <td>En équipe (Team BJ_S3C)</td>
          </tr>
          <tr>
            <td><strong>2025</strong></td>
            <td><strong>Prix du Plus Jeune Hacker</strong></td>
            <td>HACKERLAB 2025 · ANSSI Bénin</td>
            <td>Distinction individuelle nationale</td>
          </tr>
          <tr>
            <td><strong>2025</strong></td>
            <td>4ème place</td>
            <td>The Phoenix Quest CTF · ACXS IT</td>
            <td>Individuel</td>
          </tr>
          <tr>
            <td><strong>2024</strong></td>
            <td><strong>1ère place</strong></td>
            <td>Christmas CTF · BJ SEC</td>
            <td>Individuel (Pwn, Web, Forensic)</td>
          </tr>
          <tr>
            <td><strong>2024</strong></td>
            <td>Finaliste (14e / 50+)</td>
            <td>HACKERLAB 2024 · ANSSI Bénin</td>
            <td>Individuel</td>
          </tr>
        </tbody>
      </table>
    </div>

    <h3 style="font-size: 1rem; color: var(--pf-text-primary); margin: 16px 0 10px 0;">Certifications Professionnelles</h3>
    <div class="pf-table-wrapper">
      <table class="pf-table">
        <thead>
          <tr>
            <th>Certification</th>
            <th>Organisme</th>
            <th>Statut Explicite</th>
            <th>Périmètre de Compétence</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>OSCP</strong> (Offensive Security Certified Professional)</td>
            <td>OffSec</td>
            <td><span class="pf-status-badge pf-status-research">En préparation</span></td>
            <td>Sécurité offensive, tests d'intrusion sur infrastructures et méthodologie d'exploitation pratique.</td>
          </tr>
          <tr>
            <td><strong>CAP</strong> (Certified AppSec Practitioner)</td>
            <td>The SecOps Group</td>
            <td><span class="pf-status-badge pf-status-research">En cours</span></td>
            <td>Sécurité des applications web, identification de faiblesses logicielles et bonnes pratiques de codage sécurisé.</td>
          </tr>
          <tr>
            <td><strong>CNSP</strong> (Certified Network Security Practitioner)</td>
            <td>The SecOps Group</td>
            <td><span class="pf-status-badge pf-status-research">En cours</span></td>
            <td>Principes de sécurité réseau, défense active et segmentation d'infrastructures.</td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- 6. CONTACT -->
  <section class="pf-section" aria-labelledby="section-contact">
    <h2 id="section-contact" class="pf-section-title">
      <i class="fas fa-address-card" aria-hidden="true"></i> Contact
    </h2>

    <div class="pf-contact-box">
      <ul class="pf-contact-list">
        <li>
          <i class="fas fa-envelope" aria-hidden="true"></i>
          <span>Email institutionnel :</span>
          <a href="mailto:chamss-dine.agbizounon@epitech.eu">chamss-dine.agbizounon@epitech.eu</a>
        </li>
        <li>
          <i class="fab fa-linkedin" aria-hidden="true"></i>
          <span>LinkedIn :</span>
          <a href="https://www.linkedin.com/in/foundhack/" target="_blank" rel="noopener noreferrer">linkedin.com/in/foundhack</a>
        </li>
        <li>
          <i class="fab fa-github" aria-hidden="true"></i>
          <span>GitHub :</span>
          <a href="https://github.com/foundhack" target="_blank" rel="noopener noreferrer">github.com/foundhack</a>
        </li>
        <li>
          <i class="fab fa-discord" aria-hidden="true"></i>
          <span>Discord :</span>
          <code>foundhack</code>
        </li>
      </ul>
    </div>
  </section>

</div>