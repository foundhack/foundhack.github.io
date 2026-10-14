---
layout: default
title: Portfolio
permalink: /portfolio/
icon: fas fa-briefcase
order: 2
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@300;400;600;700&family=Orbitron:wght@400;700;800&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
  :root {
    --primary: #ff2a6d;
    --secondary: #00c2ff;
    --accent: #05d9e8;
    --dark: #0a0a1a;
    --darker: #050510;
    --light: #f8fafc;
    --gray: #94a3b8;
    --card-bg: rgba(15, 23, 42, 0.75);
    --card-border: rgba(56, 189, 248, 0.2);
    --badge-bg: rgba(0, 194, 255, 0.12);
  }
  
  .cyber-container {
    font-family: 'Inter', 'JetBrains Mono', monospace;
    background-color: var(--dark);
    color: var(--light);
    line-height: 1.6;
    padding: 20px 10px;
    max-width: 1200px;
    margin: 0 auto;
  }
  
  /* Header */
  .cyber-header {
    text-align: center;
    padding: 40px 20px 30px;
    position: relative;
    background: radial-gradient(circle at top, rgba(0, 194, 255, 0.15) 0%, transparent 70%);
    border-radius: 12px;
    margin-bottom: 35px;
    border: 1px solid rgba(0, 194, 255, 0.15);
  }
  
  .hacker-badge {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    background: linear-gradient(135deg, rgba(255, 42, 109, 0.2), rgba(0, 194, 255, 0.2));
    border: 1px solid var(--accent);
    color: #38bdf8;
    padding: 6px 16px;
    border-radius: 50px;
    font-size: 0.85rem;
    font-weight: 700;
    letter-spacing: 0.5px;
    margin-bottom: 20px;
    text-transform: uppercase;
    box-shadow: 0 0 15px rgba(5, 217, 232, 0.25);
  }
  
  .cyber-title {
    font-family: 'Orbitron', sans-serif;
    font-size: 2.3rem;
    font-weight: 800;
    margin-bottom: 0.6rem;
    background: linear-gradient(45deg, var(--light), var(--accent), var(--secondary));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
    line-height: 1.25;
  }
  
  .cyber-subtitle {
    font-family: 'JetBrains Mono', monospace;
    font-size: 1.15rem;
    color: var(--accent);
    margin-bottom: 1.2rem;
    font-weight: 600;
  }
  
  .intro-text {
    text-align: center;
    color: #cbd5e1;
    margin: 0 auto 25px auto;
    line-height: 1.7;
    max-width: 820px;
    font-size: 0.95rem;
  }
  
  .header-actions {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
    margin-top: 25px;
  }
  
  .btn-cyber {
    display: inline-flex;
    align-items: center;
    gap: 10px;
    padding: 11px 22px;
    border-radius: 6px;
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.9rem;
    font-weight: 700;
    text-decoration: none;
    transition: all 0.25s ease;
    cursor: pointer;
  }
  
  .btn-primary {
    background: linear-gradient(135deg, var(--primary), #e11d48);
    color: #ffffff !important;
    border: none;
    box-shadow: 0 4px 15px rgba(255, 42, 109, 0.4);
  }
  .btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(255, 42, 109, 0.6);
  }
  
  .btn-secondary {
    background: rgba(15, 23, 42, 0.8);
    color: var(--accent) !important;
    border: 1px solid var(--accent);
  }
  .btn-secondary:hover {
    background: rgba(5, 217, 232, 0.15);
    transform: translateY(-2px);
    color: #ffffff !important;
  }
  
  /* Sections */
  .cyber-section {
    margin: 40px 0;
    padding: 28px 24px;
    background: var(--card-bg);
    border-radius: 10px;
    border: 1px solid var(--card-border);
    backdrop-filter: blur(10px);
    transition: border-color 0.3s ease;
  }
  
  .cyber-section:hover {
    border-color: rgba(0, 194, 255, 0.4);
  }
  
  .section-title {
    font-family: 'Orbitron', sans-serif;
    font-size: 1.55rem;
    margin-bottom: 1.8rem;
    color: var(--secondary);
    text-align: center;
    position: relative;
    padding-bottom: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 12px;
  }
  
  .section-title::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 80px;
    height: 3px;
    background: linear-gradient(90deg, transparent, var(--accent), transparent);
  }

  /* Projects Grid */
  .projects-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(340px, 1fr));
    gap: 22px;
    margin-top: 15px;
  }

  .project-card {
    background: rgba(10, 15, 30, 0.85);
    border: 1px solid rgba(255, 255, 255, 0.08);
    border-radius: 8px;
    padding: 22px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    transition: transform 0.25s ease, border-color 0.25s ease, box-shadow 0.25s ease;
    position: relative;
    overflow: hidden;
  }

  .project-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 4px;
    height: 100%;
    background: var(--secondary);
    opacity: 0.6;
    transition: width 0.25s ease, opacity 0.25s ease;
  }

  .project-card:hover {
    transform: translateY(-4px);
    border-color: rgba(0, 194, 255, 0.35);
    box-shadow: 0 8px 25px rgba(0, 194, 255, 0.12);
  }

  .project-card:hover::before {
    width: 6px;
    opacity: 1;
    background: var(--primary);
  }

  .project-featured {
    border-color: rgba(255, 42, 109, 0.3);
  }
  .project-featured::before {
    background: var(--primary);
    opacity: 0.9;
  }

  .project-header {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    margin-bottom: 12px;
  }

  .project-tag {
    font-size: 0.72rem;
    font-weight: 700;
    text-transform: uppercase;
    padding: 3px 8px;
    border-radius: 4px;
    background: rgba(255, 42, 109, 0.15);
    color: var(--primary);
    border: 1px solid rgba(255, 42, 109, 0.3);
    letter-spacing: 0.5px;
  }

  .project-tag.academic {
    background: rgba(0, 194, 255, 0.12);
    color: var(--secondary);
    border-color: rgba(0, 194, 255, 0.25);
  }

  .project-name {
    font-family: 'Orbitron', sans-serif;
    font-size: 1.18rem;
    font-weight: 700;
    color: #ffffff;
    margin-top: 4px;
  }

  .project-desc {
    color: #94a3b8;
    font-size: 0.88rem;
    line-height: 1.55;
    margin-bottom: 16px;
    flex-grow: 1;
  }

  .project-desc ul {
    margin-left: 16px;
    margin-top: 6px;
  }

  .project-desc li {
    margin-bottom: 4px;
  }

  .tech-pills {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    margin-top: 10px;
  }

  .tech-pill {
    font-size: 0.72rem;
    font-family: 'JetBrains Mono', monospace;
    background: rgba(148, 163, 184, 0.08);
    color: #38bdf8;
    border: 1px solid rgba(56, 189, 248, 0.2);
    padding: 3px 8px;
    border-radius: 4px;
    font-weight: 600;
  }
  
  /* Tables */
  .cyber-table {
    width: 100%;
    border-collapse: collapse;
    margin: 15px 0;
    font-size: 0.9rem;
  }
  
  .cyber-table th, .cyber-table td {
    padding: 14px 12px;
    text-align: left;
    border-bottom: 1px solid rgba(255, 255, 255, 0.08);
  }
  
  .cyber-table th {
    background-color: rgba(0, 194, 255, 0.08);
    color: var(--secondary);
    font-weight: 700;
    font-family: 'JetBrains Mono', monospace;
    text-transform: uppercase;
    font-size: 0.8rem;
    letter-spacing: 0.5px;
  }
  
  .cyber-table tr:hover {
    background-color: rgba(255, 42, 109, 0.04);
  }

  .status-badge {
    display: inline-block;
    padding: 2px 8px;
    border-radius: 4px;
    font-size: 0.75rem;
    font-weight: 700;
    font-family: 'JetBrains Mono', monospace;
    text-transform: uppercase;
  }
  .status-ongoing {
    background: rgba(245, 158, 11, 0.15);
    color: #fbbf24;
    border: 1px solid rgba(245, 158, 11, 0.3);
  }
  
  /* Skills Grid */
  .skills-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(85px, 1fr));
    gap: 16px;
    margin: 20px 0;
  }
  
  .skill-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 12px 6px;
    background: rgba(15, 23, 42, 0.6);
    border: 1px solid rgba(255, 255, 255, 0.06);
    border-radius: 8px;
    transition: transform 0.2s ease, border-color 0.2s ease;
  }
  
  .skill-item:hover {
    transform: translateY(-4px);
    border-color: var(--accent);
  }
  
  .skill-item img {
    width: 42px;
    height: 42px;
    object-fit: contain;
    margin-bottom: 8px;
    filter: drop-shadow(0 2px 4px rgba(0,0,0,0.4));
  }
  
  .skill-item span {
    font-size: 0.78rem;
    color: #cbd5e1;
    font-weight: 600;
    text-align: center;
  }
  
  /* Contact links */
  .contact-links {
    display: flex;
    justify-content: center;
    gap: 18px;
    flex-wrap: wrap;
    margin: 25px 0 10px;
  }
  
  .contact-link {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 52px;
    height: 52px;
    border-radius: 50%;
    background: rgba(15, 23, 42, 0.9);
    border: 1px solid rgba(0, 194, 255, 0.25);
    color: var(--light);
    font-size: 1.3rem;
    transition: all 0.25s ease;
    text-decoration: none !important;
  }
  
  .contact-link:hover {
    transform: translateY(-4px);
    background: linear-gradient(45deg, var(--primary), var(--secondary));
    color: #ffffff;
    box-shadow: 0 4px 15px rgba(0, 194, 255, 0.35);
  }
  
  @media (max-width: 768px) {
    .cyber-title { font-size: 1.7rem; }
    .cyber-subtitle { font-size: 1rem; }
    .projects-grid { grid-template-columns: 1fr; }
    .cyber-table { font-size: 0.82rem; }
    .cyber-section { padding: 18px 14px; }
  }
</style>

<div class="cyber-container">

  <!-- HERO HEADER -->
  <header class="cyber-header">
    <div class="hacker-badge">
      <i class="fas fa-trophy"></i> 1ère place & Plus Jeune Hacker — HACKERLAB 2025 (ANSSI Bénin)
    </div>

    <h1 class="cyber-title">Chamss-Dine Adedoyi AGBIZOUNON</h1>
    <div class="cyber-subtitle">&lt;foundhack /&gt; — Étudiant en Cybersécurité & Développeur Système</div>
    
    <p class="intro-text">
      Étudiant en 1ère année à <strong>Epitech Bénin</strong> (Promo 2029) et technicien en maintenance informatique. Passionné par la cybersécurité offensive (Red Team, Post-Exploitation), la programmation système en <strong>Golang</strong> & <strong>Langage C</strong>, et la conception d'architectures web sécurisées. Je documente ici mes travaux de recherche, mes projets et mes exploits CTF.
    </p>

    <div class="header-actions">
      <a href="/assets/pdf/CHAMSS-DINE_AGBIZOUNON_CV_2026.pdf" download class="btn-cyber btn-primary">
        <i class="fas fa-file-pdf"></i> Télécharger mon CV (PDF)
      </a>
      <a href="https://github.com/foundhack" target="_blank" class="btn-cyber btn-secondary">
        <i class="fab fa-github"></i> GitHub (@foundhack)
      </a>
      <a href="https://www.linkedin.com/in/foundhack/" target="_blank" class="btn-cyber btn-secondary">
        <i class="fab fa-linkedin"></i> LinkedIn
      </a>
      <a href="mailto:chamss-dine.agbizounon@epitech.eu" class="btn-cyber btn-secondary">
        <i class="fas fa-envelope"></i> Me contacter
      </a>
    </div>
  </header>

  <!-- PROJETS PERSONNELS & R&D -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-rocket"></i> Projets Personnels & R&D Sécurité</h2>
    <p style="text-align: center; color: var(--gray); margin-bottom: 25px; font-size: 0.92rem;">
      Outils de sécurité offensive, frameworks de commande furtifs et services déployés en production réelle.
    </p>

    <div class="projects-grid">

      <!-- PROJECT: FOUNDHACK C2 -->
      <div class="project-card project-featured">
        <div>
          <div class="project-header">
            <span class="project-tag">Red Team R&D</span>
            <i class="fas fa-shield-virus" style="color: var(--primary); font-size: 1.2rem;"></i>
          </div>
          <div class="project-name">FOUNDHACK C2</div>
          <div class="project-desc">
            Framework modulaire de Command & Control (C2) utilisant l'API REST Discord v10 comme canal de transport furtif (Covert Channel).
            <ul>
              <li><strong>Implant natif en Go :</strong> contournement AMSI sans modification de code via breakpoints matériels (DR0/VEH), dé-hooking de <code>ntdll.dll</code> depuis le disque et appels système indirects (Hell's Gate / Halo's Gate).</li>
              <li><strong>Contrôleur en Python :</strong> console interactive multi-agents, chiffrement de bout en bout AES-256-GCM (dérivation PBKDF2) et protocole de fragmentation de paquets.</li>
              <li><strong>Approche Purple Team :</strong> matrice complète de détection et IOCs (DETECTION.md).</li>
            </ul>
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">Golang</span>
          <span class="tech-pill">Python</span>
          <span class="tech-pill">Discord API</span>
          <span class="tech-pill">AES-256-GCM</span>
          <span class="tech-pill">Evasion EDR</span>
          <span class="tech-pill">Windows API</span>
        </div>
      </div>

      <!-- PROJECT: TEKFLOW (MOULIBOT) -->
      <div class="project-card project-featured">
        <div>
          <div class="project-header">
            <span class="project-tag">En Production</span>
            <i class="fas fa-robot" style="color: var(--accent); font-size: 1.2rem;"></i>
          </div>
          <div class="project-name">TEKFLOW (MOULIBOT)</div>
          <div class="project-desc">
            Service d'automatisation et de monitoring académique en temps réel, déployé sur serveur VPS Linux et activement utilisé au quotidien par des étudiants d'Epitech.
            <ul>
              <li>Traitement asynchrone des flux d'événements et des résultats de tests de la moulinette.</li>
              <li>Persistance des états et sessions sur base SQLite.</li>
              <li>Interconnexion sécurisée aux API de messagerie WhatsApp Cloud et webhooks Discord.</li>
            </ul>
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">Python</span>
          <span class="tech-pill">Node.js</span>
          <span class="tech-pill">SQLite</span>
          <span class="tech-pill">WhatsApp API</span>
          <span class="tech-pill">Linux VPS</span>
          <span class="tech-pill">Webhooks</span>
        </div>
      </div>

    </div>
  </section>

  <!-- PROJETS ACADÉMIQUES (EPITECH) -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-graduation-cap"></i> Projets Académiques Phares (Epitech)</h2>
    <p style="text-align: center; color: var(--gray); margin-bottom: 25px; font-size: 0.92rem;">
      Projets d'ingénierie logicielle, d'audit de sécurité, d'algorithmique et de data science validés à Epitech.
    </p>

    <div class="projects-grid">

      <!-- PROJECT: OBSIDIAN -->
      <div class="project-card">
        <div>
          <div class="project-header">
            <span class="project-tag academic">Reverse Engineering</span>
            <i class="fas fa-microchip" style="color: var(--secondary); font-size: 1.1rem;"></i>
          </div>
          <div class="project-name">OBSIDIAN</div>
          <div class="project-desc">
            Audit de sécurité approfondi en boîte noire et boîte blanche d'un exécutable Linux ELF 64-bit. Analyse statique et décompilation sous <strong>Ghidra</strong>, débogage dynamique avec <strong>GDB</strong>, fuzzing d'entrées, identification de corruptions mémoire et écriture de patchs de remédiation en C.
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">ELF 64-bit</span>
          <span class="tech-pill">Ghidra</span>
          <span class="tech-pill">GDB</span>
          <span class="tech-pill">Fuzzing</span>
          <span class="tech-pill">Langage C</span>
          <span class="tech-pill">Patching</span>
        </div>
      </div>

      <!-- PROJECT: HACK & JUICE -->
      <div class="project-card">
        <div>
          <div class="project-header">
            <span class="project-tag academic">Web Pentest</span>
            <i class="fas fa-bug" style="color: var(--secondary); font-size: 1.1rem;"></i>
          </div>
          <div class="project-name">HACK & JUICE</div>
          <div class="project-desc">
            Évaluation méthodique de la sécurité d'une Single Page Application (OWASP Juice Shop). Détection et exploitation méthodique de failles web critiques (injections SQL, XSS, CSRF, contournement de contrôle d'accès) et rédaction d'un rapport de remédiation technique complet.
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">OWASP Top 10</span>
          <span class="tech-pill">Burp Suite</span>
          <span class="tech-pill">SPA</span>
          <span class="tech-pill">Injections</span>
          <span class="tech-pill">Code Audit</span>
        </div>
      </div>

      <!-- PROJECT: TARDIS -->
      <div class="project-card">
        <div>
          <div class="project-header">
            <span class="project-tag academic">Data Science & ML</span>
            <i class="fas fa-brain" style="color: var(--secondary); font-size: 1.1rem;"></i>
          </div>
          <div class="project-name">TARDIS</div>
          <div class="project-desc">
            Traitement et analyse exploratoire (EDA) sur un jeu de données massif de 8 ans (3M+ de trajets ferroviaires). Entraînement d'un modèle prédictif de retards (93 % de précision à ±5 min) et développement d'un tableau de bord interactif d'aide à la décision sous Streamlit.
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">Python</span>
          <span class="tech-pill">Pandas</span>
          <span class="tech-pill">Scikit-Learn</span>
          <span class="tech-pill">EDA</span>
          <span class="tech-pill">Streamlit</span>
        </div>
      </div>

      <!-- PROJECT: EPYTODO -->
      <div class="project-card">
        <div>
          <div class="project-header">
            <span class="project-tag academic">Back-End & API</span>
            <i class="fas fa-server" style="color: var(--secondary); font-size: 1.1rem;"></i>
          </div>
          <div class="project-name">EPYTODO</div>
          <div class="project-desc">
            Développement complet d'une API RESTful modulaire de gestion de tâches avec architecture MVC en TypeScript/Node.js. Modélisation relationnelle MySQL, contrôle d'accès sécurisé par tokens JWT et validation stricte des entrées.
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">TypeScript</span>
          <span class="tech-pill">Node.js</span>
          <span class="tech-pill">Express</span>
          <span class="tech-pill">MySQL</span>
          <span class="tech-pill">JWT</span>
        </div>
      </div>

      <!-- PROJECT: MINISHELL 2 & CHOCOLATINE -->
      <div class="project-card">
        <div>
          <div class="project-header">
            <span class="project-tag academic">Système & DevOps</span>
            <i class="fas fa-terminal" style="color: var(--secondary); font-size: 1.1rem;"></i>
          </div>
          <div class="project-name">MINISHELL 2 & CHOCOLATINE</div>
          <div class="project-desc">
            Conception d'un interpréteur de commandes Unix en C (processus fils fork/execve, pipes multiples <code>|</code>, redirections de flux et signaux POSIX). Automatisation de la livraison logicielle via pipeline CI/CD GitHub Actions (tests unitaires et linting).
          </div>
        </div>
        <div class="tech-pills">
          <span class="tech-pill">Langage C</span>
          <span class="tech-pill">POSIX</span>
          <span class="tech-pill">Pipes & Signaux</span>
          <span class="tech-pill">GitHub Actions</span>
          <span class="tech-pill">CI/CD</span>
        </div>
      </div>

    </div>
  </section>

  <!-- CERTIFICATIONS -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-certificate"></i> Certifications Professionnelles</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Préparation et validation de titres d'expertise en sécurité des réseaux et des applications.</p>
    
    <table class="cyber-table">
      <thead>
        <tr>
          <th>Certification</th>
          <th>Organisme</th>
          <th>Statut</th>
          <th>Domaine de Compétence</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong style="color: #ffffff;">OSCP</strong> (Offensive Security Certified Professional)</td>
          <td>OffSec</td>
          <td><span class="status-badge status-ongoing">En préparation</span></td>
          <td>Pentest d'infrastructures réseau, exploitation de vulnérabilités et méthodologie offensive pratique.</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">CAP</strong> (Certified AppSec Practitioner)</td>
          <td>The SecOps Group</td>
          <td><span class="status-badge status-ongoing">En cours</span></td>
          <td>Sécurité offensive applicative, audit de code source et tests d'intrusion sur applications web.</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">CNSP</strong> (Certified Network Security Practitioner)</td>
          <td>The SecOps Group</td>
          <td><span class="status-badge status-ongoing">En cours</span></td>
          <td>Sécurité périmétrique, protocoles réseau et défense active des infrastructures.</td>
        </tr>
      </tbody>
    </table>
  </section>

  <!-- PRIX & DISTINCTIONS -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-award"></i> Prix & Distinctions (CTF & Cybersécurité)</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Résultats majeurs obtenus lors des compétitions nationales et internationales de cybersécurité.</p>
    
    <table class="cyber-table">
      <thead>
        <tr>
          <th>Compétition</th>
          <th>Organisateur</th>
          <th>Résultat</th>
          <th>Détails & Catégories</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong style="color: #ffffff;">HACKERLAB 2025</strong></td>
          <td>ANSSI Bénin</td>
          <td><span style="color: #facc15; font-weight: 700;">🥇 1ère place</span></td>
          <td>Vainqueur national en équipe (Team <strong>BJ_S3C</strong>)</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">HACKERLAB 2025</strong></td>
          <td>ANSSI Bénin</td>
          <td><span style="color: #38bdf8; font-weight: 700;">🎖️ Prix Spécial</span></td>
          <td><strong>Prix du Plus Jeune Hacker</strong> (Distinction individuelle nationale)</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">Christmas CTF 2024</strong></td>
          <td>BJ SEC</td>
          <td><span style="color: #facc15; font-weight: 700;">🥇 1ère place</span></td>
          <td>Compétition individuelle (Pwn, Web, Forensic, Reverse)</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">The Phoenix Quest CTF 2025</strong></td>
          <td>ACXS IT</td>
          <td><span style="color: #38bdf8; font-weight: 700;">4ème place</span></td>
          <td>Compétition individuelle internationale</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">HACKERLAB 2024</strong></td>
          <td>ANSSI Bénin</td>
          <td><span style="color: #94a3b8; font-weight: 700;">Finaliste</span></td>
          <td>14e sur plus de 50 finalistes nationaux</td>
        </tr>
      </tbody>
    </table>
  </section>

  <!-- EXPÉRIENCES PROFESSIONNELLES -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-briefcase"></i> Expérience Professionnelle</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Contributions, mentorat technique et pratique professionnelle.</p>
    
    <table class="cyber-table">
      <thead>
        <tr>
          <th>Poste</th>
          <th>Structure</th>
          <th>Période</th>
          <th>Missions & Réalisations</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong style="color: #ffffff;">Mentor Cybersécurité & Coach CTF</strong></td>
          <td>CERADEI – EPAC-GIT</td>
          <td>09/2024 – Présent</td>
          <td>Animation d'ateliers pratiques : Pentest web (OWASP Top 10), Reverse Engineering, Forensic et analyse binaire. Accompagnement méthodologique et préparation d'étudiants aux CTFs.</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">Chall Maker</strong></td>
          <td>BJSEC</td>
          <td>Actuel</td>
          <td>Conception et résolution de challenges techniques dans les catégories OSINT, Stéganographie, Cryptographie et Web.</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">Stagiaire Technicien Informatique</strong></td>
          <td>3D Telecoms Business Center</td>
          <td>07/2023 – 09/2023</td>
          <td>Diagnostic matériel et logiciel, installation et configuration d'environnements Linux et Windows, maintenance préventive/curative, câblage et sertissage réseau.</td>
        </tr>
      </tbody>
    </table>
  </section>

  <!-- FORMATION -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-user-graduate"></i> Formation & Cursus Académique</h2>
    
    <table class="cyber-table">
      <thead>
        <tr>
          <th>Diplôme / Programme</th>
          <th>Établissement</th>
          <th>Période</th>
          <th>Spécialité</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><strong style="color: #ffffff;">Bachelor en Technologies de l'Information</strong></td>
          <td>Epitech Bénin | Cotonou</td>
          <td>2025 – 2028</td>
          <td>Pédagogie par projets : C, Go, Unix, Réseaux, Sécurité, DevOps, Architecture logicielle.</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">Diplôme de Technicien (DT)</strong></td>
          <td>Lycée Technique et Professionnel de Porto-Novo</td>
          <td>2022 – 2025</td>
          <td>Installation et Maintenance Informatique (IMI) : systèmes, réseaux, architecture matérielle.</td>
        </tr>
        <tr>
          <td><strong style="color: #ffffff;">BEPC</strong></td>
          <td>Lycée Béhanzin | Porto-Novo</td>
          <td>2021</td>
          <td>Enseignement secondaire général.</td>
        </tr>
      </tbody>
    </table>
  </section>

  <!-- COMPÉTENCES TECHNIQUES -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-laptop-code"></i> Stack Technique</h2>
    
    <div class="skills-grid">
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/go/go-original.svg" alt="Golang">
        <span>Golang</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/c/c-original.svg" alt="Langage C">
        <span>Langage C</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="Python">
        <span>Python</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/typescript/typescript-original.svg" alt="TypeScript">
        <span>TypeScript</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg" alt="JavaScript">
        <span>JavaScript</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/bash/bash-original.svg" alt="Bash">
        <span>Bash</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/linux/linux-original.svg" alt="Linux">
        <span>Linux</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg" alt="Docker">
        <span>Docker</span>
      </div>
      <div class="skill-item">
        <img src="https://avatars.githubusercontent.com/u/13749115?s=200&v=4" alt="Burp Suite">
        <span>Burp Suite</span>
      </div>
      <div class="skill-item">
        <img src="https://nmap.org/images/sitelogo-nmap.svg" alt="Nmap">
        <span>Nmap</span>
      </div>
      <div class="skill-item">
        <img src="https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png" alt="Git">
        <span>Git</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original.svg" alt="MySQL">
        <span>MySQL</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/pandas/pandas-original.svg" alt="Pandas">
        <span>Pandas</span>
      </div>
      <div class="skill-item">
        <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Scikit_learn_logo_small.svg" alt="Scikit-Learn">
        <span>Scikit-Learn</span>
      </div>
    </div>
  </section>

  <!-- ME CONTACTER -->
  <section class="cyber-section">
    <h2 class="section-title"><i class="fas fa-satellite-dish"></i> Contact & Liens</h2>
    <p style="text-align: center; color: var(--gray); margin-bottom: 20px; font-size: 0.95rem;">
      À la recherche d'un stage de 2 mois en cybersécurité, développement système ou ingénierie logicielle. Ouvert aux échanges et opportunités !
    </p>
    
    <div class="contact-links">
      <a href="https://www.linkedin.com/in/foundhack/" target="_blank" class="contact-link" title="LinkedIn">
        <i class="fab fa-linkedin-in"></i>
      </a>
      <a href="https://github.com/foundhack" target="_blank" class="contact-link" title="GitHub">
        <i class="fab fa-github"></i>
      </a>
      <a href="mailto:chamss-dine.agbizounon@epitech.eu" class="contact-link" title="Email">
        <i class="fas fa-envelope"></i>
      </a>
      <a href="https://discord.com/users/foundhack" target="_blank" class="contact-link" title="Discord">
        <i class="fab fa-discord"></i>
      </a>
      <a href="https://tryhackme.com/p/foundhack" target="_blank" class="contact-link" title="TryHackMe">
        <i class="fas fa-flag"></i>
      </a>
      <a href="https://app.hackthebox.com/profile/foundhack" target="_blank" class="contact-link" title="Hack The Box">
        <i class="fas fa-cube"></i>
      </a>
    </div>
  </section>

</div>