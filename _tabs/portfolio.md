---
layout: default
title: Portfolio
permalink: /portfolio/
icon: fas fa-briefcase
order: 2
---

<style>
  :root {
    /* Palette sobre, authentique et adaptée au thème */
    --pf-bg-card: rgba(255, 255, 255, 0.02);
    --pf-border: rgba(255, 255, 255, 0.08);
    --pf-border-hover: rgba(255, 255, 255, 0.2);
    --pf-text-primary: #f1f5f9;
    --pf-text-secondary: #94a3b8;
    --pf-text-muted: #64748b;
    --pf-accent: #3b82f6;
    --pf-accent-soft: rgba(59, 130, 246, 0.12);
    --pf-accent-text: #93c5fd;
    --pf-tag-bg: rgba(255, 255, 255, 0.03);
    --pf-tag-border: rgba(255, 255, 255, 0.07);
  }

  /* Support du thème clair de Chirpy si activé */
  html[data-mode='light'] {
    --pf-bg-card: #ffffff;
    --pf-border: #e2e8f0;
    --pf-border-hover: #cbd5e1;
    --pf-text-primary: #0f172a;
    --pf-text-secondary: #475569;
    --pf-text-muted: #64748b;
    --pf-accent: #2563eb;
    --pf-accent-soft: rgba(37, 99, 235, 0.08);
    --pf-accent-text: #1d4ed8;
    --pf-tag-bg: #f8fafc;
    --pf-tag-border: #e2e8f0;
  }

  .portfolio-root {
    color: var(--pf-text-primary);
    line-height: 1.6;
    max-width: 960px;
    margin: 0 auto;
    padding: 10px 0 40px;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
  }

  /* Header */
  .pf-header {
    border-bottom: 1px solid var(--pf-border);
    padding-bottom: 24px;
    margin-bottom: 34px;
  }

  .pf-name {
    font-size: 1.9rem;
    font-weight: 750;
    letter-spacing: -0.025em;
    color: var(--pf-text-primary);
    margin: 0 0 6px 0;
    line-height: 1.2;
  }

  .pf-name .pf-alias {
    color: var(--pf-text-muted);
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-weight: 500;
    font-size: 1.2rem;
    margin-left: 4px;
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
    max-width: 800px;
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
    gap: 7px;
  }

  .pf-meta-item i {
    color: var(--pf-accent-text);
    font-size: 0.9rem;
  }

  .pf-meta-links {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 18px;
  }

  .pf-link-btn {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    padding: 6px 13px;
    border-radius: 6px;
    font-size: 0.83rem;
    font-weight: 500;
    text-decoration: none !important;
    background: var(--pf-bg-card);
    color: var(--pf-text-primary) !important;
    border: 1px solid var(--pf-border);
    transition: all 0.15s ease;
  }

  .pf-link-btn i {
    color: var(--pf-text-muted);
    transition: color 0.15s ease;
  }

  .pf-link-btn:hover, .pf-link-btn:focus-visible {
    background: var(--pf-tag-bg);
    border-color: var(--pf-border-hover);
    color: var(--pf-text-primary) !important;
    transform: translateY(-1px);
    outline: none;
  }

  .pf-link-btn:hover i {
    color: var(--pf-accent-text);
  }

  /* Section Styling */
  .pf-section {
    margin-bottom: 40px;
  }

  .pf-section-title {
    font-size: 1.2rem;
    font-weight: 700;
    letter-spacing: -0.015em;
    color: var(--pf-text-primary);
    margin: 0 0 18px 0;
    padding-bottom: 8px;
    border-bottom: 1px solid var(--pf-border);
    display: flex;
    align-items: center;
    gap: 9px;
  }

  .pf-section-title i {
    color: var(--pf-text-muted);
    font-size: 0.95rem;
  }

  /* Project Cards */
  .pf-projects-list {
    display: flex;
    flex-direction: column;
    gap: 14px;
  }

  .pf-project-card {
    background: var(--pf-bg-card);
    border: 1px solid var(--pf-border);
    border-radius: 8px;
    padding: 20px 22px;
    transition: border-color 0.15s ease, box-shadow 0.15s ease;
  }

  .pf-project-card:hover {
    border-color: var(--pf-border-hover);
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
  }

  .pf-project-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 8px;
    margin-bottom: 4px;
  }

  .pf-project-title {
    font-size: 1.08rem;
    font-weight: 700;
    color: var(--pf-text-primary);
    margin: 0;
    letter-spacing: -0.01em;
  }

  /* Status Badges with subtle status-dot */
  .pf-status-badge {
    display: inline-flex;
    align-items: center;
    gap: 6px;
    font-size: 0.72rem;
    font-weight: 500;
    padding: 3px 9px;
    border-radius: 9999px;
    border: 1px solid transparent;
  }

  .pf-status-badge::before {
    content: '';
    display: inline-block;
    width: 6px;
    height: 6px;
    border-radius: 50%;
  }

  .pf-status-research {
    background: rgba(59, 130, 246, 0.08);
    color: #93c5fd;
    border-color: rgba(59, 130, 246, 0.2);
  }

  .pf-status-research::before {
    background: #60a5fa;
  }

  .pf-status-personal {
    background: rgba(16, 185, 129, 0.08);
    color: #6ee7b7;
    border-color: rgba(16, 185, 129, 0.2);
  }

  .pf-status-personal::before {
    background: #34d399;
  }

  .pf-status-academic {
    background: rgba(148, 163, 184, 0.08);
    color: #cbd5e1;
    border-color: rgba(148, 163, 184, 0.2);
  }

  .pf-status-academic::before {
    background: #94a3b8;
  }

  .pf-project-role {
    font-size: 0.83rem;
    color: var(--pf-text-muted);
    font-weight: 500;
    margin-bottom: 12px;
  }

  .pf-project-details {
    font-size: 0.89rem;
    color: var(--pf-text-secondary);
    line-height: 1.6;
    margin-bottom: 12px;
  }

  .pf-project-details p {
    margin: 0 0 8px 0;
  }

  .pf-project-details ul {
    margin: 4px 0 8px 18px;
    padding: 0;
  }

  .pf-project-details li {
    margin-bottom: 4px;
  }

  .pf-project-details code {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    background: rgba(255, 255, 255, 0.05);
    color: var(--pf-text-primary);
    padding: 2px 5px;
    border-radius: 3px;
    font-size: 0.85em;
    border: 1px solid var(--pf-border);
  }

  .pf-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    margin-top: 12px;
  }

  .pf-tag {
    font-size: 0.73rem;
    font-family: inherit;
    font-weight: 500;
    background: var(--pf-tag-bg);
    color: var(--pf-text-secondary);
    border: 1px solid var(--pf-tag-border);
    padding: 2px 8px;
    border-radius: 4px;
    transition: all 0.15s ease;
  }

  .pf-tag:hover {
    color: var(--pf-text-primary);
    border-color: var(--pf-border-hover);
  }

  /* Tables (Sober, Minimalist, Engineering-grade) */
  .pf-table-wrapper {
    overflow-x: auto;
    border: 1px solid var(--pf-border);
    border-radius: 8px;
    background: var(--pf-bg-card);
  }

  .pf-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.87rem;
    text-align: left;
  }

  .pf-table th {
    background: rgba(255, 255, 255, 0.02);
    color: var(--pf-text-muted);
    font-weight: 600;
    padding: 10px 14px;
    border-bottom: 1px solid var(--pf-border);
    font-size: 0.76rem;
    text-transform: uppercase;
    letter-spacing: 0.04em;
  }

  .pf-table td {
    padding: 11px 14px;
    border-bottom: 1px solid var(--pf-border);
    color: var(--pf-text-secondary);
    vertical-align: top;
    line-height: 1.5;
  }

  .pf-table tr:last-child td {
    border-bottom: none;
  }

  .pf-table td strong {
    color: var(--pf-text-primary);
    font-weight: 600;
  }

  /* Skills Block */
  .pf-skills-container {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }

  .pf-skill-row {
    background: var(--pf-bg-card);
    border: 1px solid var(--pf-border);
    border-radius: 6px;
    padding: 12px 16px;
  }

  .pf-skill-title {
    font-size: 0.82rem;
    font-weight: 650;
    color: var(--pf-text-primary);
    text-transform: uppercase;
    letter-spacing: 0.03em;
    margin-bottom: 6px;
  }

  .pf-skill-items {
    font-size: 0.88rem;
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
    gap: 10px;
    font-size: 0.89rem;
  }

  .pf-contact-list li {
    display: flex;
    align-items: center;
    gap: 10px;
    color: var(--pf-text-secondary);
  }

  .pf-contact-list a {
    color: var(--pf-text-primary) !important;
    text-decoration: none;
    border-bottom: 1px solid var(--pf-border);
    transition: border-color 0.15s ease, color 0.15s ease;
  }

  .pf-contact-list a:hover, .pf-contact-list a:focus-visible {
    color: var(--pf-accent-text) !important;
    border-color: var(--pf-accent-text);
  }

  @media (max-width: 640px) {
    .pf-name { font-size: 1.5rem; }
    .pf-name .pf-alias { font-size: 1.1rem; }
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
      Étudiant à Epitech Bénin (Promo 2030, 1ère année validée) et joueur de CTF. Passionné par la sécurité offensive, le développement système (C, Go) et l'administration Linux. Vainqueur et Meilleur Jeune Hacker au HACKERLAB 2025 (ASIN).
    </p>

    <div class="pf-meta-bar">
      <div class="pf-meta-item">
        <i class="fas fa-map-marker-alt" aria-hidden="true"></i> Cotonou, Bénin
      </div>
      <div class="pf-meta-item">
        <i class="fas fa-university" aria-hidden="true"></i> Epitech Bénin (Promo 2030)
      </div>
      <div class="pf-meta-item">
        <i class="fas fa-trophy" aria-hidden="true"></i> 1ère Place & Meilleur Jeune Hacker — HACKERLAB 2025 (ASIN)
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

  <!-- 2. PROJETS -->
  <section class="pf-section" aria-labelledby="section-projects">
    <h2 id="section-projects" class="pf-section-title">
      <i class="fas fa-folder-open" aria-hidden="true"></i> Projets
    </h2>

    <div class="pf-projects-list">

      <!-- PROJET 1 : FOUNDHACK C2 -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Foundhack C2</h3>
          <span class="pf-status-badge pf-status-research">Recherche en Lab</span>
        </div>
        <div class="pf-project-role">Framework de Command & Control (C2) modulaire</div>
        <div class="pf-project-details">
          <p>
            Projet de recherche personnel en sécurité offensive pour tester des scénarios d'attaque et d'évasion en environnement de test isolé.
          </p>
          <ul>
            <li>Développement d'un agent léger en Go avec recherche sur les appels système indirects sous Windows pour contourner les hooks d'analyse.</li>
            <li>Serveur de contrôle en Python avec communication chiffrée de bout en bout (AES-256-GCM) et fragmentation des messages.</li>
            <li>Analyse défensive : identification des traces laissées en mémoire et documentation des indicateurs de compromission (IOCs).</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Golang</span>
          <span class="pf-tag">Python</span>
          <span class="pf-tag">AES-256-GCM</span>
          <span class="pf-tag">Docker</span>
          <span class="pf-tag">Purple Team</span>
        </div>
      </article>

      <!-- PROJET 2 : TEKFLOW (MOULIBOT) -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">TekFlow (MouliBot)</h3>
          <span class="pf-status-badge pf-status-personal">En Production</span>
        </div>
        <div class="pf-project-role">Bot d'automatisation des résultats académiques Epitech</div>
        <div class="pf-project-details">
          <p>
            Service d'automatisation surveillant les résultats de la Moulinette Epitech pour alerter instantanément les étudiants lors des livrables de projets.
          </p>
          <ul>
            <li>Interrogation asynchrone des APIs de l'intranet avec gestion des sessions et persistance d'historique sous SQLite.</li>
            <li>Transmission en temps réel des résultats détaillés via webhooks Discord et alertes WhatsApp.</li>
            <li>Déployé, monitoré et maintenu sur un serveur VPS Linux personnel.</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">TypeScript</span>
          <span class="pf-tag">Python</span>
          <span class="pf-tag">SQLite</span>
          <span class="pf-tag">Discord API</span>
          <span class="pf-tag">Linux VPS</span>
        </div>
      </article>

      <!-- PROJET 3 : OBSIDIAN -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Obsidian</h3>
          <span class="pf-status-badge pf-status-academic">Projet Académique Epitech</span>
        </div>
        <div class="pf-project-role">Rétro-ingénierie & Correction de failles mémoires</div>
        <div class="pf-project-details">
          <p>
            Audit de sécurité complet d'un binaire Linux ELF 64 bits dans le cadre du cursus Epitech.
          </p>
          <ul>
            <li>Analyse statique et décompilation sous Ghidra pour comprendre le fonctionnement interne et les structures de données.</li>
            <li>Débogage dynamique sous GDB pour isoler les corruptions mémoires et les accès hors limites.</li>
            <li>Conception et intégration de patchs en langage C pour sécuriser le code et corriger les vulnérabilités.</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Langage C</span>
          <span class="pf-tag">Linux ELF</span>
          <span class="pf-tag">Ghidra</span>
          <span class="pf-tag">GDB</span>
          <span class="pf-tag">Audit Mémoire</span>
        </div>
      </article>

      <!-- PROJET 4 : HACK & JUICE -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Hack & Juice</h3>
          <span class="pf-status-badge pf-status-academic">Projet Académique Epitech</span>
        </div>
        <div class="pf-project-role">Audit de sécurité web applicative (OWASP Top 10)</div>
        <div class="pf-project-details">
          <p>
            Évaluation méthodique de la sécurité d'une application web vulnérable selon les standards de l'OWASP.
          </p>
          <ul>
            <li>Interception et analyse des flux HTTP/HTTPS avec Burp Suite pour tester la logique applicative.</li>
            <li>Exploitation contrôlée de vulnérabilités : injections SQL, failles XSS et défauts de contrôle d'accès.</li>
            <li>Rédaction d'un rapport technique d'audit détaillant les scénarios d'attaque et les mesures correctives.</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Burp Suite</span>
          <span class="pf-tag">OWASP Top 10</span>
          <span class="pf-tag">Pentest Web</span>
          <span class="pf-tag">Sécurité Applicative</span>
        </div>
      </article>

      <!-- PROJET 5 : TARDIS -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Tardis</h3>
          <span class="pf-status-badge pf-status-academic">Projet Académique Epitech</span>
        </div>
        <div class="pf-project-role">Data Science & Modélisation prédictive</div>
        <div class="pf-project-details">
          <p>
            Projet d'exploration de données et de modélisation prédictive supervisée.
          </p>
          <ul>
            <li>Nettoyage, traitement et analyse exploratoire des données (EDA) avec Python et Pandas.</li>
            <li>Entraînement et évaluation de modèles de classification et de régression avec Scikit-Learn.</li>
            <li>Développement d'un tableau de bord web interactif sous Streamlit pour visualiser les indicateurs.</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Python</span>
          <span class="pf-tag">Scikit-Learn</span>
          <span class="pf-tag">Pandas</span>
          <span class="pf-tag">Streamlit</span>
        </div>
      </article>

      <!-- PROJET 6 : EPYTODO -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Epytodo</h3>
          <span class="pf-status-badge pf-status-academic">Projet Académique Epitech</span>
        </div>
        <div class="pf-project-role">API REST backend sécurisée avec MySQL</div>
        <div class="pf-project-details">
          <p>
            Conception d'une API backend de gestion de tâches et d'utilisateurs respectant l'architecture RESTful.
          </p>
          <ul>
            <li>Architecture MVC développée sous Node.js et Express avec typage TypeScript.</li>
            <li>Modélisation de la base de données relationnelle sous MySQL avec requêtes sécurisées.</li>
            <li>Gestion de l'authentification par jetons JWT et sécurisation des mots de passe avec bcrypt.</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">TypeScript</span>
          <span class="pf-tag">Node.js</span>
          <span class="pf-tag">Express</span>
          <span class="pf-tag">MySQL</span>
          <span class="pf-tag">JWT</span>
        </div>
      </article>

      <!-- PROJET 7 : MINISHELL 2 & CHOCOLATINE -->
      <article class="pf-project-card">
        <div class="pf-project-header">
          <h3 class="pf-project-title">Minishell 2 & Chocolatine</h3>
          <span class="pf-status-badge pf-status-academic">Projet Académique Epitech</span>
        </div>
        <div class="pf-project-role">Interpréteur de commandes Unix en C & CI/CD</div>
        <div class="pf-project-details">
          <p>
            Développement d'un interpréteur de commandes Unix conforme à la norme POSIX, couplé à une chaîne de tests continus.
          </p>
          <ul>
            <li>Programmation système bas niveau : gestion des processus (fork, execve, waitpid), des pipes (<code>|</code>), des redirections (<code>&gt;</code>, <code>&lt;</code>, <code>&gt;&gt;</code>) et des signaux Unix.</li>
            <li>Gestion rigoureuse de la mémoire sans fuite et respect strict de la norme de codage Epitech.</li>
            <li>Automatisation des tests et du contrôle qualité à chaque commit via GitHub Actions (workflow Chocolatine).</li>
          </ul>
        </div>
        <div class="pf-tags">
          <span class="pf-tag">Langage C</span>
          <span class="pf-tag">POSIX</span>
          <span class="pf-tag">Linux</span>
          <span class="pf-tag">GitHub Actions</span>
          <span class="pf-tag">CI/CD</span>
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
            <td>Bachelor en Technologies de l'Information (Promo 2030)</td>
            <td>Epitech Bénin (Cotonou)</td>
            <td>Cursus d'ingénierie informatique orienté projets : programmation système en C, algorithmique, réseaux, sécurité et DevOps (1ère année achevée).</td>
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
            <td>HACKERLAB 2025 · ASIN</td>
            <td>En équipe (Team BJ_S3C)</td>
          </tr>
          <tr>
            <td><strong>2025</strong></td>
            <td><strong>Prix du Meilleur Jeune Hacker</strong></td>
            <td>HACKERLAB 2025 · ASIN</td>
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
            <td>HACKERLAB 2024 · ASIN</td>
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