---
layout: default
title: Portfolio
permalink: /portfolio/
icon: fas fa-briefcase
order: 2
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=JetBrains+Mono:wght@400;500;600;700&display=swap" rel="stylesheet">

<style>
  :root {
    --bg-dark: #080c14;
    --bg-card: rgba(15, 23, 42, 0.65);
    --bg-card-hover: rgba(20, 32, 58, 0.85);
    --border-subtle: rgba(148, 163, 184, 0.12);
    --border-glow: rgba(56, 189, 248, 0.35);
    --primary: #38bdf8;
    --primary-light: #7dd3fc;
    --emerald: #10b981;
    --indigo: #818cf8;
    --amber: #f59e0b;
    --text-main: #f8fafc;
    --text-muted: #94a3b8;
    --text-dim: #64748b;
  }
  
  .portfolio-wrapper {
    font-family: 'Plus Jakarta Sans', sans-serif;
    color: var(--text-main);
    line-height: 1.65;
    max-width: 1140px;
    margin: 0 auto;
    padding: 10px 5px;
  }

  /* HERO HEADER */
  .hero-card {
    background: radial-gradient(circle at 50% 0%, rgba(56, 189, 248, 0.12) 0%, rgba(15, 23, 42, 0.4) 60%), #0b1120;
    border: 1px solid var(--border-subtle);
    border-radius: 16px;
    padding: 44px 32px 36px;
    text-align: center;
    position: relative;
    overflow: hidden;
    margin-bottom: 36px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
  }

  .badge-banner {
    display: inline-flex;
    align-items: center;
    gap: 9px;
    background: rgba(56, 189, 248, 0.1);
    border: 1px solid rgba(56, 189, 248, 0.25);
    color: var(--primary-light);
    padding: 6px 16px;
    border-radius: 50px;
    font-size: 0.82rem;
    font-weight: 700;
    font-family: 'JetBrains Mono', monospace;
    letter-spacing: 0.3px;
    margin-bottom: 22px;
  }

  .dot-pulse {
    width: 8px;
    height: 8px;
    background-color: var(--emerald);
    border-radius: 50%;
    box-shadow: 0 0 10px var(--emerald);
    animation: pulse 2s infinite;
  }

  @keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.4; transform: scale(0.85); }
  }

  .hero-name {
    font-size: 2.35rem;
    font-weight: 800;
    letter-spacing: -0.8px;
    color: #ffffff;
    margin-bottom: 6px;
    line-height: 1.2;
  }

  .hero-name span.alias {
    color: var(--primary);
    font-family: 'JetBrains Mono', monospace;
    font-weight: 600;
    font-size: 1.8rem;
  }

  .hero-title {
    font-size: 1.15rem;
    color: var(--primary-light);
    font-weight: 600;
    margin-bottom: 16px;
    font-family: 'JetBrains Mono', monospace;
  }

  .hero-bio {
    max-width: 800px;
    margin: 0 auto 28px;
    color: var(--text-muted);
    font-size: 0.98rem;
    line-height: 1.7;
  }

  .hero-actions {
    display: flex;
    justify-content: center;
    gap: 14px;
    flex-wrap: wrap;
    margin-bottom: 30px;
  }

  .btn-action {
    display: inline-flex;
    align-items: center;
    gap: 9px;
    padding: 10px 20px;
    border-radius: 8px;
    font-size: 0.9rem;
    font-weight: 600;
    text-decoration: none !important;
    transition: all 0.2s ease;
    border: 1px solid var(--border-subtle);
    background: rgba(30, 41, 59, 0.6);
    color: var(--text-main) !important;
  }

  .btn-action:hover {
    background: rgba(56, 189, 248, 0.15);
    border-color: var(--primary);
    color: #ffffff !important;
    transform: translateY(-2px);
  }

  .btn-primary-action {
    background: linear-gradient(135deg, #0284c7, #0369a1);
    border-color: transparent;
    color: #ffffff !important;
    box-shadow: 0 4px 15px rgba(2, 132, 199, 0.35);
  }

  .btn-primary-action:hover {
    background: linear-gradient(135deg, #0369a1, #0284c7);
    box-shadow: 0 6px 20px rgba(2, 132, 199, 0.5);
  }

  /* STATS BAR */
  .stats-bar {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 12px;
    border-top: 1px solid rgba(148, 163, 184, 0.1);
    padding-top: 24px;
    max-width: 900px;
    margin: 0 auto;
  }

  .stat-item {
    text-align: center;
  }

  .stat-value {
    font-size: 1.35rem;
    font-weight: 800;
    color: #ffffff;
    font-family: 'JetBrains Mono', monospace;
  }

  .stat-label {
    font-size: 0.78rem;
    color: var(--text-dim);
    text-transform: uppercase;
    letter-spacing: 0.5px;
    font-weight: 600;
  }

  /* SECTION STRUCTURE */
  .section-block {
    margin: 44px 0;
  }

  .section-header {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 22px;
    border-bottom: 1px solid var(--border-subtle);
    padding-bottom: 12px;
  }

  .section-icon {
    width: 36px;
    height: 36px;
    border-radius: 8px;
    background: rgba(56, 189, 248, 0.1);
    color: var(--primary);
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.1rem;
    border: 1px solid rgba(56, 189, 248, 0.2);
  }

  .section-heading {
    font-size: 1.45rem;
    font-weight: 800;
    letter-spacing: -0.4px;
    color: #ffffff;
    margin: 0;
  }

  .section-subtitle {
    color: var(--text-dim);
    font-size: 0.85rem;
    margin-left: auto;
    font-family: 'JetBrains Mono', monospace;
  }

  /* CARDS GRID */
  .grid-cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(330px, 1fr));
    gap: 20px;
  }

  .cyber-card {
    background: var(--bg-card);
    border: 1px solid var(--border-subtle);
    border-radius: 12px;
    padding: 24px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    transition: all 0.25s ease;
    backdrop-filter: blur(8px);
  }

  .cyber-card:hover {
    background: var(--bg-card-hover);
    border-color: var(--border-glow);
    transform: translateY(-3px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.35);
  }

  .card-top {
    margin-bottom: 16px;
  }

  .card-badge-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 12px;
  }

  .status-tag {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.72rem;
    font-weight: 700;
    padding: 3px 8px;
    border-radius: 4px;
    letter-spacing: 0.3px;
    text-transform: uppercase;
  }

  .tag-redteam {
    background: rgba(129, 140, 248, 0.15);
    color: var(--indigo);
    border: 1px solid rgba(129, 140, 248, 0.3);
  }

  .tag-live {
    background: rgba(16, 185, 129, 0.15);
    color: var(--emerald);
    border: 1px solid rgba(16, 185, 129, 0.3);
  }

  .tag-academic {
    background: rgba(56, 189, 248, 0.12);
    color: var(--primary);
    border: 1px solid rgba(56, 189, 248, 0.25);
  }

  .card-title {
    font-size: 1.22rem;
    font-weight: 700;
    color: #ffffff;
    margin-bottom: 6px;
    letter-spacing: -0.3px;
  }

  .card-subtitle {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.8rem;
    color: var(--primary-light);
    margin-bottom: 12px;
  }

  .card-body {
    font-size: 0.88rem;
    color: var(--text-muted);
    line-height: 1.6;
    margin-bottom: 18px;
  }

  .card-body ul {
    margin: 8px 0 0 16px;
    padding: 0;
  }

  .card-body li {
    margin-bottom: 5px;
  }

  .card-body code {
    font-family: 'JetBrains Mono', monospace;
    background: rgba(255, 255, 255, 0.08);
    padding: 1px 4px;
    border-radius: 3px;
    color: var(--primary-light);
    font-size: 0.8rem;
  }

  .tag-group {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    margin-top: auto;
  }

  .pill {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.72rem;
    font-weight: 500;
    background: rgba(148, 163, 184, 0.08);
    color: #cbd5e1;
    border: 1px solid rgba(148, 163, 184, 0.15);
    padding: 2.5px 7px;
    border-radius: 4px;
  }

  /* CERTIFICATIONS CARDS */
  .cert-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 18px;
  }

  .cert-card {
    background: var(--bg-card);
    border: 1px solid var(--border-subtle);
    border-radius: 12px;
    padding: 20px;
    transition: all 0.25s ease;
    border-left: 4px solid var(--border-subtle);
  }

  .cert-card:hover {
    border-color: var(--primary);
    transform: translateY(-2px);
  }

  .cert-card.gold { border-left-color: var(--amber); }
  .cert-card.blue { border-left-color: var(--primary); }
  .cert-card.cyan { border-left-color: var(--emerald); }

  .cert-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 8px;
  }

  .cert-title {
    font-size: 1.15rem;
    font-weight: 800;
    color: #ffffff;
    font-family: 'JetBrains Mono', monospace;
  }

  .cert-org {
    font-size: 0.78rem;
    color: var(--text-dim);
    font-weight: 600;
    text-transform: uppercase;
  }

  .cert-status-badge {
    font-size: 0.72rem;
    font-weight: 700;
    padding: 2px 7px;
    border-radius: 4px;
    font-family: 'JetBrains Mono', monospace;
  }

  .status-gold {
    background: rgba(245, 158, 11, 0.15);
    color: #fcd34d;
    border: 1px solid rgba(245, 158, 11, 0.3);
  }

  .status-blue {
    background: rgba(56, 189, 248, 0.15);
    color: #7dd3fc;
    border: 1px solid rgba(56, 189, 248, 0.3);
  }

  .cert-desc {
    font-size: 0.84rem;
    color: var(--text-muted);
    line-height: 1.5;
  }

  /* TIMELINE */
  .timeline {
    position: relative;
    padding-left: 24px;
    border-left: 2px solid var(--border-subtle);
    margin: 10px 0 20px 8px;
  }

  .timeline-item {
    position: relative;
    margin-bottom: 26px;
  }

  .timeline-item:last-child {
    margin-bottom: 0;
  }

  .timeline-marker {
    position: absolute;
    left: -31px;
    top: 4px;
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background: var(--bg-dark);
    border: 2px solid var(--primary);
    box-shadow: 0 0 8px rgba(56, 189, 248, 0.6);
  }

  .timeline-content {
    background: rgba(15, 23, 42, 0.5);
    border: 1px solid var(--border-subtle);
    border-radius: 10px;
    padding: 16px 20px;
  }

  .timeline-heading {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
    margin-bottom: 4px;
    flex-wrap: wrap;
    gap: 8px;
  }

  .timeline-role {
    font-size: 1.02rem;
    font-weight: 700;
    color: #ffffff;
  }

  .timeline-date {
    font-family: 'JetBrains Mono', monospace;
    font-size: 0.78rem;
    color: var(--primary-light);
    font-weight: 600;
  }

  .timeline-org {
    font-size: 0.84rem;
    color: var(--text-dim);
    margin-bottom: 8px;
    font-weight: 600;
  }

  .timeline-desc {
    font-size: 0.86rem;
    color: var(--text-muted);
    line-height: 1.55;
  }

  /* AWARDS GRID */
  .awards-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
    gap: 14px;
  }

  .award-box {
    background: var(--bg-card);
    border: 1px solid var(--border-subtle);
    border-radius: 10px;
    padding: 16px;
    display: flex;
    gap: 14px;
    align-items: center;
    transition: all 0.2s ease;
  }

  .award-box:hover {
    border-color: rgba(250, 204, 21, 0.4);
    background: var(--bg-card-hover);
    transform: translateY(-2px);
  }

  .award-icon-box {
    width: 44px;
    height: 44px;
    border-radius: 8px;
    background: rgba(245, 158, 11, 0.12);
    color: #fbbf24;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.3rem;
    flex-shrink: 0;
    border: 1px solid rgba(245, 158, 11, 0.25);
  }

  .award-info strong {
    font-size: 0.94rem;
    color: #ffffff;
    display: block;
    margin-bottom: 2px;
  }

  .award-info span {
    font-size: 0.78rem;
    color: var(--text-dim);
    display: block;
  }

  /* SKILLS STACK */
  .stack-category {
    background: var(--bg-card);
    border: 1px solid var(--border-subtle);
    border-radius: 12px;
    padding: 20px;
    margin-bottom: 16px;
  }

  .stack-cat-title {
    font-size: 0.95rem;
    font-weight: 700;
    color: var(--primary-light);
    margin-bottom: 12px;
    display: flex;
    align-items: center;
    gap: 8px;
    text-transform: uppercase;
    font-family: 'JetBrains Mono', monospace;
    letter-spacing: 0.4px;
  }

  .stack-items {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
  }

  .tech-chip {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    background: rgba(15, 23, 42, 0.9);
    border: 1px solid rgba(148, 163, 184, 0.18);
    color: #f1f5f9;
    padding: 6px 12px;
    border-radius: 6px;
    font-size: 0.82rem;
    font-weight: 600;
    font-family: 'JetBrains Mono', monospace;
    transition: all 0.2s ease;
  }

  .tech-chip:hover {
    border-color: var(--primary);
    background: rgba(56, 189, 248, 0.12);
    transform: translateY(-2px);
  }

  /* CONTACT BAR */
  .contact-footer {
    text-align: center;
    padding: 34px 20px;
    background: linear-gradient(180deg, rgba(15, 23, 42, 0.6) 0%, rgba(8, 12, 20, 0.9) 100%);
    border: 1px solid var(--border-subtle);
    border-radius: 14px;
    margin-top: 40px;
  }

  .social-icons-row {
    display: flex;
    justify-content: center;
    gap: 14px;
    flex-wrap: wrap;
    margin-top: 18px;
  }

  .social-circle {
    width: 46px;
    height: 46px;
    border-radius: 10px;
    background: rgba(30, 41, 59, 0.7);
    border: 1px solid var(--border-subtle);
    color: var(--text-main);
    display: inline-flex;
    align-items: center;
    justify-content: center;
    font-size: 1.2rem;
    transition: all 0.2s ease;
    text-decoration: none !important;
  }

  .social-circle:hover {
    background: var(--primary);
    color: #0b1120 !important;
    transform: translateY(-3px);
    box-shadow: 0 4px 15px rgba(56, 189, 248, 0.4);
  }

  @media (max-width: 768px) {
    .hero-card { padding: 30px 18px; }
    .hero-name { font-size: 1.8rem; }
    .hero-name span.alias { font-size: 1.4rem; }
    .grid-cards { grid-template-columns: 1fr; }
    .stats-bar { grid-template-columns: 1fr 1fr; }
  }
</style>

<div class="portfolio-wrapper">

  <!-- HERO SECTION -->
  <header class="hero-card">
    <div class="badge-banner">
      <span class="dot-pulse"></span>
      🏆 1ère place & Plus Jeune Hacker — HACKERLAB 2025 (ANSSI Bénin)
    </div>

    <h1 class="hero-name">
      Chamss-Dine A. AGBIZOUNON <span class="alias">&lt;foundhack/&gt;</span>
    </h1>

    <div class="hero-title">
      Étudiant en Cybersécurité & Développeur Système (Go / C / Python)
    </div>

    <p class="hero-bio">
      Étudiant en 1ère année à <strong>Epitech Bénin</strong> (Promo 2029) et technicien en maintenance informatique. Passionné par la cybersécurité offensive (Red Team, Post-Exploitation), la programmation système en <strong>Golang</strong> & <strong>Langage C</strong>, et la conception d'architectures web sécurisées. Je documente ici mes travaux de recherche, mes outils et mes retours d'expérience.
    </p>

    <div class="hero-actions">
      <a href="https://github.com/foundhack" target="_blank" class="btn-action btn-primary-action">
        <i class="fab fa-github"></i> GitHub (@foundhack)
      </a>
      <a href="https://www.linkedin.com/in/foundhack/" target="_blank" class="btn-action">
        <i class="fab fa-linkedin"></i> LinkedIn
      </a>
      <a href="mailto:chamss-dine.agbizounon@epitech.eu" class="btn-action">
        <i class="fas fa-envelope"></i> Me contacter
      </a>
      <a href="https://discord.com/users/foundhack" target="_blank" class="btn-action">
        <i class="fab fa-discord"></i> Discord
      </a>
    </div>

    <!-- QUICK STATS -->
    <div class="stats-bar">
      <div class="stat-item">
        <div class="stat-value" style="color: #facc15;">1er Prix</div>
        <div class="stat-label">HackerLab National 2025</div>
      </div>
      <div class="stat-item">
        <div class="stat-value" style="color: var(--primary);">Golang & C</div>
        <div class="stat-label">Systèmes & Évasion EDR</div>
      </div>
      <div class="stat-item">
        <div class="stat-value" style="color: var(--emerald);">2 Projets</div>
        <div class="stat-label">En Production & R&D</div>
      </div>
      <div class="stat-item">
        <div class="stat-value" style="color: var(--indigo);">CTF Player</div>
        <div class="stat-label">Pwn · Web · Reverse · Forensics</div>
      </div>
    </div>
  </header>

  <!-- PROJETS PERSONNELS & R&D -->
  <section class="section-block">
    <div class="section-header">
      <div class="section-icon"><i class="fas fa-shield-halved"></i></div>
      <h2 class="section-heading">Projets Personnels & R&D Sécurité</h2>
      <span class="section-subtitle">// In-House Tooling & Production</span>
    </div>

    <div class="grid-cards">

      <!-- FOUNDHACK C2 -->
      <div class="cyber-card" style="border-top: 3px solid var(--indigo);">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-redteam"><i class="fas fa-skull"></i> Red Team R&D</span>
            <span style="font-size: 0.78rem; color: var(--text-dim); font-family: 'JetBrains Mono', monospace;">2026</span>
          </div>
          <div class="card-title">FOUNDHACK C2</div>
          <div class="card-subtitle">Framework de Post-Exploitation & Évasion EDR</div>
          <div class="card-body">
            Framework modulaire de Command & Control (C2) exploitant l'API REST Discord comme canal de transport furtif (Covert Channel).
            <ul>
              <li><strong>Implant natif en Golang (Go) :</strong> contournement AMSI via breakpoints matériels (registres DR0 / VEH sans altération d'octets), restauration de la section <code>.text</code> de <code>ntdll.dll</code> depuis le disque (Unhooking) et appels système indirects (Hell's Gate / Halo's Gate).</li>
              <li><strong>Contrôleur en Python :</strong> console interactive multi-agents, chiffrement de bout en bout AES-256-GCM (dérivation PBKDF2) et protocole de fragmentation de messages.</li>
              <li><strong>Approche Purple Team :</strong> matrice complète de détection défensive et signatures IOCs (<code>DETECTION.md</code>).</li>
            </ul>
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">Golang</span>
          <span class="pill">Python</span>
          <span class="pill">Discord REST API</span>
          <span class="pill">AES-256-GCM</span>
          <span class="pill">Indirect Syscalls</span>
          <span class="pill">AMSI Bypass</span>
          <span class="pill">NTDLL Unhooking</span>
        </div>
      </div>

      <!-- TEKFLOW / MOULIBOT -->
      <div class="cyber-card" style="border-top: 3px solid var(--emerald);">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-live"><i class="fas fa-bolt"></i> En Production Réelle</span>
            <span style="font-size: 0.78rem; color: var(--text-dim); font-family: 'JetBrains Mono', monospace;">24/7 VPS</span>
          </div>
          <div class="card-title">TEKFLOW (MOULIBOT)</div>
          <div class="card-subtitle">Service d'Automatisation Académique & Monitoring</div>
          <div class="card-body">
            Service d'automatisation et de notification en temps réel, déployé sur serveur VPS Linux et activement utilisé au quotidien par des étudiants d'Epitech.
            <ul>
              <li>Surveillance asynchrone des tests et résultats académiques de la moulinette en temps réel.</li>
              <li>Persistance des états utilisateurs et sessions chiffrées sur base SQLite.</li>
              <li>Interconnexion sécurisée aux API de messagerie WhatsApp Cloud et webhooks Discord.</li>
            </ul>
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">Python</span>
          <span class="pill">Node.js</span>
          <span class="pill">SQLite</span>
          <span class="pill">WhatsApp Cloud API</span>
          <span class="pill">Webhooks</span>
          <span class="pill">Linux VPS</span>
          <span class="pill">AsyncIO</span>
        </div>
      </div>

    </div>
  </section>

  <!-- PROJETS ACADÉMIQUES (EPITECH) -->
  <section class="section-block">
    <div class="section-header">
      <div class="section-icon"><i class="fas fa-terminal"></i></div>
      <h2 class="section-heading">Projets Académiques d'Ingénierie (Epitech)</h2>
      <span class="section-subtitle">// Cursus Bachelor Tek1</span>
    </div>

    <div class="grid-cards">

      <!-- OBSIDIAN -->
      <div class="cyber-card">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-academic">Audit & Reverse</span>
            <i class="fas fa-microchip" style="color: var(--primary);"></i>
          </div>
          <div class="card-title">OBSIDIAN</div>
          <div class="card-subtitle">Rétro-ingénierie Binaire ELF 64-bit & Hardening C</div>
          <div class="card-body">
            Audit de sécurité approfondi en boîtes noire et blanche d'un exécutable Linux ELF. Analyse statique et décompilation sous <strong>Ghidra</strong>, débogage dynamique avec <strong>GDB</strong>, fuzzing d'entrées, découverte de corruptions mémoire et conception de patchs de remédiation en C.
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">ELF 64-bit</span>
          <span class="pill">Ghidra</span>
          <span class="pill">GDB</span>
          <span class="pill">Langage C</span>
          <span class="pill">Fuzzing</span>
          <span class="pill">Remédiation</span>
        </div>
      </div>

      <!-- HACK & JUICE -->
      <div class="cyber-card">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-academic">Web Pentest</span>
            <i class="fas fa-bug" style="color: var(--primary);"></i>
          </div>
          <div class="card-title">HACK & JUICE</div>
          <div class="card-subtitle">Audit Applicatif Web & Single Page App</div>
          <div class="card-body">
            Évaluation méthodique de la sécurité d'une application web monopage (OWASP Juice Shop). Détection et exploitation de vulnérabilités critiques (XSS, injections SQL, CSRF, contournement d'authentification) et rédaction d'un rapport de remédiation technique complet.
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">OWASP Top 10</span>
          <span class="pill">Burp Suite</span>
          <span class="pill">Injections SQL</span>
          <span class="pill">XSS / CSRF</span>
          <span class="pill">Rapport d'Audit</span>
        </div>
      </div>

      <!-- TARDIS -->
      <div class="cyber-card">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-academic">IA & Machine Learning</span>
            <i class="fas fa-brain" style="color: var(--primary);"></i>
          </div>
          <div class="card-title">TARDIS</div>
          <div class="card-subtitle">Analyse Exploratoire & Modélisation Prédictive</div>
          <div class="card-body">
            Traitement et analyse exploratoire (EDA) sur un jeu de données de 8 ans (3M+ de trajets ferroviaires). Entraînement d'un modèle prédictif de retards (précision de 93 % à ±5 min) et développement d'un tableau de bord interactif d'aide à la décision sous Streamlit.
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">Python</span>
          <span class="pill">Pandas</span>
          <span class="pill">Scikit-Learn</span>
          <span class="pill">EDA</span>
          <span class="pill">Streamlit</span>
        </div>
      </div>

      <!-- EPYTODO -->
      <div class="cyber-card">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-academic">Back-End & API</span>
            <i class="fas fa-network-wired" style="color: var(--primary);"></i>
          </div>
          <div class="card-title">EPYTODO</div>
          <div class="card-subtitle">Architecture API RESTful Sécurisée</div>
          <div class="card-body">
            Développement complet d'une API RESTful modulaire de gestion de tâches avec architecture MVC en TypeScript/Node.js. Modélisation relationnelle de la base MySQL, contrôle d'accès sécurisé par tokens JWT et validation stricte des requêtes.
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">TypeScript</span>
          <span class="pill">Node.js</span>
          <span class="pill">Express</span>
          <span class="pill">MySQL</span>
          <span class="pill">JWT</span>
        </div>
      </div>

      <!-- MINISHELL 2 & CHOCOLATINE -->
      <div class="cyber-card">
        <div class="card-top">
          <div class="card-badge-row">
            <span class="status-tag tag-academic">Système & DevOps</span>
            <i class="fas fa-code-branch" style="color: var(--primary);"></i>
          </div>
          <div class="card-title">MINISHELL 2 & CHOCOLATINE</div>
          <div class="card-subtitle">Interpréteur de Commandes Unix & Pipeline CI/CD</div>
          <div class="card-body">
            Conception d'un shell Unix en C (processus fils fork/execve, pipes multiples <code>|</code>, redirections de flux et signaux POSIX). Automatisation de la livraison logicielle via pipeline CI/CD GitHub Actions (tests unitaires et linting).
          </div>
        </div>
        <div class="tag-group">
          <span class="pill">Langage C</span>
          <span class="pill">POSIX Syscalls</span>
          <span class="pill">Gestion Mémoire</span>
          <span class="pill">GitHub Actions</span>
          <span class="pill">CI/CD</span>
        </div>
      </div>

    </div>
  </section>

  <!-- CERTIFICATIONS -->
  <section class="section-block">
    <div class="section-header">
      <div class="section-icon"><i class="fas fa-certificate"></i></div>
      <h2 class="section-heading">Certifications Professionnelles</h2>
      <span class="section-subtitle">// Titres d'Expertise Active</span>
    </div>

    <div class="cert-grid">
      
      <div class="cert-card gold">
        <div class="cert-header">
          <div>
            <div class="cert-title">OSCP</div>
            <div class="cert-org">OffSec</div>
          </div>
          <span class="cert-status-badge status-gold">En préparation active</span>
        </div>
        <div class="cert-desc">
          Offensive Security Certified Professional. Pentest pratique d'infrastructures réseau, évasion de défenses, escalade de privilèges et exploitation avancée en environnement simulé.
        </div>
      </div>

      <div class="cert-card blue">
        <div class="cert-header">
          <div>
            <div class="cert-title">CAP</div>
            <div class="cert-org">The SecOps Group</div>
          </div>
          <span class="cert-status-badge status-blue">En cours</span>
        </div>
        <div class="cert-desc">
          Certified AppSec Practitioner. Sécurité offensive applicative, audit de code source et tests d'intrusion sur applications web modernes (OWASP Top 10).
        </div>
      </div>

      <div class="cert-card cyan">
        <div class="cert-header">
          <div>
            <div class="cert-title">CNSP</div>
            <div class="cert-org">The SecOps Group</div>
          </div>
          <span class="cert-status-badge status-blue">En cours</span>
        </div>
        <div class="cert-desc">
          Certified Network Security Practitioner. Sécurité périmétrique, protocoles réseau, segmentation et défense active des infrastructures d'entreprise.
        </div>
      </div>

    </div>
  </section>

  <!-- PRIX & DISTINCTIONS -->
  <section class="section-block">
    <div class="section-header">
      <div class="section-icon"><i class="fas fa-trophy"></i></div>
      <h2 class="section-heading">Prix & Distinctions CTF</h2>
      <span class="section-subtitle">// Compétitions Nationales & Internationales</span>
    </div>

    <div class="awards-grid">

      <div class="award-box">
        <div class="award-icon-box"><i class="fas fa-medal"></i></div>
        <div class="award-info">
          <strong>1ère place — HACKERLAB 2025</strong>
          <span>ANSSI Bénin · Équipe BJ_S3C (Juin 2025)</span>
        </div>
      </div>

      <div class="award-box">
        <div class="award-icon-box" style="background: rgba(56, 189, 248, 0.12); color: var(--primary); border-color: rgba(56, 189, 248, 0.25);"><i class="fas fa-user-ninja"></i></div>
        <div class="award-info">
          <strong>Prix du Plus Jeune Hacker</strong>
          <span>HACKERLAB 2025 · Distinction Individuelle (ANSSI)</span>
        </div>
      </div>

      <div class="award-box">
        <div class="award-icon-box"><i class="fas fa-trophy"></i></div>
        <div class="award-info">
          <strong>1ère place — Christmas CTF 2024</strong>
          <span>BJ SEC · Compétition Individuelle (Pwn, Web, Forensic)</span>
        </div>
      </div>

      <div class="award-box">
        <div class="award-icon-box" style="background: rgba(129, 140, 248, 0.12); color: var(--indigo); border-color: rgba(129, 140, 248, 0.25);"><i class="fas fa-star"></i></div>
        <div class="award-info">
          <strong>4ème place — The Phoenix Quest CTF</strong>
          <span>ACXS IT · Individuel (Févr. 2025)</span>
        </div>
      </div>

      <div class="award-box">
        <div class="award-icon-box" style="background: rgba(148, 163, 184, 0.1); color: var(--text-muted); border-color: rgba(148, 163, 184, 0.2);"><i class="fas fa-flag-checkered"></i></div>
        <div class="award-info">
          <strong>Finaliste (14e / 50+) — HACKERLAB 2024</strong>
          <span>ANSSI Bénin · Sept. 2024</span>
        </div>
      </div>

    </div>
  </section>

  <!-- PARCOURS (FORMATION & EXPÉRIENCE) -->
  <section class="section-block">
    <div class="section-header">
      <div class="section-icon"><i class="fas fa-briefcase"></i></div>
      <h2 class="section-heading">Expériences & Formation</h2>
      <span class="section-subtitle">// Parcours Académique & Professionnel</span>
    </div>

    <div class="timeline">

      <!-- ITEM 1 -->
      <div class="timeline-item">
        <div class="timeline-marker"></div>
        <div class="timeline-content">
          <div class="timeline-heading">
            <span class="timeline-role">Bachelor en Technologies de l'Information</span>
            <span class="timeline-date">2025 – 2028</span>
          </div>
          <div class="timeline-org">Epitech Bénin | Cotonou</div>
          <div class="timeline-desc">
            Formation d'ingénierie par projets : programmation bas niveau en C, systèmes Unix/POSIX, architecture logicielle, réseaux, sécurité et DevOps.
          </div>
        </div>
      </div>

      <!-- ITEM 2 -->
      <div class="timeline-item">
        <div class="timeline-marker"></div>
        <div class="timeline-content">
          <div class="timeline-heading">
            <span class="timeline-role">Mentor Cybersécurité & Coach CTF</span>
            <span class="timeline-date">09/2024 – Présent</span>
          </div>
          <div class="timeline-org">CERADEI – EPAC-GIT | À distance</div>
          <div class="timeline-desc">
            Animation d'ateliers pratiques : Pentest web (OWASP Top 10), Reverse Engineering, Forensic et analyse binaire. Accompagnement méthodologique et préparation d'étudiants aux compétitions nationales de CTF.
          </div>
        </div>
      </div>

      <!-- ITEM 3 -->
      <div class="timeline-item">
        <div class="timeline-marker"></div>
        <div class="timeline-content">
          <div class="timeline-heading">
            <span class="timeline-role">Chall Maker CTF</span>
            <span class="timeline-date">Actuel</span>
          </div>
          <div class="timeline-org">BJSEC | Communauté Cybersécurité</div>
          <div class="timeline-desc">
            Conception et résolution de challenges techniques dans les catégories OSINT, Stéganographie, Cryptographie et Web Pentest.
          </div>
        </div>
      </div>

      <!-- ITEM 4 -->
      <div class="timeline-item">
        <div class="timeline-marker"></div>
        <div class="timeline-content">
          <div class="timeline-heading">
            <span class="timeline-role">Diplôme de Technicien (DT) — Maintenance Informatique</span>
            <span class="timeline-date">2022 – 2025</span>
          </div>
          <div class="timeline-org">Lycée Technique et Professionnel de Porto-Novo</div>
          <div class="timeline-desc">
            Installation et Maintenance Informatique (IMI) : architecture matérielle, systèmes d'exploitation, diagnostic et câblage réseau.
          </div>
        </div>
      </div>

      <!-- ITEM 5 -->
      <div class="timeline-item">
        <div class="timeline-marker"></div>
        <div class="timeline-content">
          <div class="timeline-heading">
            <span class="timeline-role">Stagiaire Technicien Informatique</span>
            <span class="timeline-date">07/2023 – 09/2023</span>
          </div>
          <div class="timeline-org">3D Telecoms Business Center | Porto-Novo, Bénin</div>
          <div class="timeline-desc">
            Maintenance préventive/curative, diagnostic matériel et logiciel, installation et configuration d'environnements Linux et Windows, sertissage et brassage réseau.
          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- STACK TECHNIQUE -->
  <section class="section-block">
    <div class="section-header">
      <div class="section-icon"><i class="fas fa-layer-group"></i></div>
      <h2 class="section-heading">Stack & Domaines d'Expertise</h2>
      <span class="section-subtitle">// Technologies Maîtrisées</span>
    </div>

    <!-- CAT 1 -->
    <div class="stack-category">
      <div class="stack-cat-title"><i class="fas fa-code"></i> Langages & Programmation Système</div>
      <div class="stack-items">
        <span class="tech-chip"><i class="fab fa-golang" style="color: #00add8;"></i> Golang (Go)</span>
        <span class="tech-chip"><i class="fas fa-c" style="color: #659ad2;"></i> Langage C</span>
        <span class="tech-chip"><i class="fab fa-python" style="color: #ffde57;"></i> Python</span>
        <span class="tech-chip"><i class="fab fa-js" style="color: #3178c6;"></i> TypeScript</span>
        <span class="tech-chip"><i class="fab fa-js-square" style="color: #f7df1e;"></i> JavaScript</span>
        <span class="tech-chip"><i class="fas fa-terminal" style="color: #4eaa25;"></i> Bash / Shell Unix</span>
        <span class="tech-chip"><i class="fas fa-database" style="color: #00758f;"></i> SQL (MySQL / SQLite)</span>
        <span class="tech-chip"><i class="fab fa-php" style="color: #777bb4;"></i> PHP</span>
      </div>
    </div>

    <!-- CAT 2 -->
    <div class="stack-category">
      <div class="stack-cat-title"><i class="fas fa-user-secret"></i> Sécurité Offensive & Reverse Engineering</div>
      <div class="stack-items">
        <span class="tech-chip"><i class="fas fa-shield-virus"></i> Evasion EDR / AV</span>
        <span class="tech-chip"><i class="fas fa-bug"></i> Burp Suite (OWASP Top 10)</span>
        <span class="tech-chip"><i class="fas fa-microchip"></i> Ghidra (Decompilation ELF)</span>
        <span class="tech-chip"><i class="fas fa-terminal"></i> GDB / Peda / GEF</span>
        <span class="tech-chip"><i class="fas fa-network-wired"></i> Nmap & Recon</span>
        <span class="tech-chip"><i class="fas fa-satellite"></i> Canaux Couverts C2</span>
        <span class="tech-chip"><i class="fas fa-lock"></i> Cryptographie (AES-GCM, PBKDF2)</span>
        <span class="tech-chip"><i class="fas fa-search"></i> OSINT & Forensics</span>
      </div>
    </div>

    <!-- CAT 3 -->
    <div class="stack-category">
      <div class="stack-cat-title"><i class="fas fa-cloud"></i> Infrastructure, DevOps & Systèmes</div>
      <div class="stack-items">
        <span class="tech-chip"><i class="fab fa-linux"></i> Linux (Ubuntu, Debian, Arch)</span>
        <span class="tech-chip"><i class="fab fa-docker" style="color: #2496ed;"></i> Docker & Compose</span>
        <span class="tech-chip"><i class="fas fa-code-branch" style="color: #2088ff;"></i> GitHub Actions (CI/CD)</span>
        <span class="tech-chip"><i class="fas fa-server"></i> Serveurs VPS & SSH Hardening</span>
        <span class="tech-chip"><i class="fab fa-git-alt" style="color: #f05032;"></i> Git & Versioning</span>
      </div>
    </div>

    <!-- CAT 4 -->
    <div class="stack-category">
      <div class="stack-cat-title"><i class="fas fa-chart-line"></i> Web & Data Science</div>
      <div class="stack-items">
        <span class="tech-chip"><i class="fab fa-node-js" style="color: #68a063;"></i> Node.js & Express</span>
        <span class="tech-chip"><i class="fas fa-key"></i> Authentification JWT</span>
        <span class="tech-chip"><i class="fab fa-react" style="color: #61dafb;"></i> React & Tailwind CSS</span>
        <span class="tech-chip"><i class="fas fa-chart-bar" style="color: #150458;"></i> Pandas & NumPy</span>
        <span class="tech-chip"><i class="fas fa-robot" style="color: #f7931e;"></i> Scikit-Learn</span>
        <span class="tech-chip"><i class="fas fa-desktop" style="color: #ff4b4b;"></i> Streamlit Dashboards</span>
      </div>
    </div>

  </section>

  <!-- CONTACT & RÉSEAUX -->
  <footer class="contact-footer">
    <h3 style="font-size: 1.35rem; font-weight: 800; color: #ffffff; margin-bottom: 8px;">
      Construisons des projets sécurisés ensemble
    </h3>
    <p style="color: var(--text-muted); max-width: 650px; margin: 0 auto; font-size: 0.92rem;">
      À la recherche d'un stage de 2 mois ou ouvert aux collaborations en cybersécurité, développement système et sécurité offensive.
    </p>

    <div class="social-icons-row">
      <a href="https://www.linkedin.com/in/foundhack/" target="_blank" class="social-circle" title="LinkedIn">
        <i class="fab fa-linkedin-in"></i>
      </a>
      <a href="https://github.com/foundhack" target="_blank" class="social-circle" title="GitHub">
        <i class="fab fa-github"></i>
      </a>
      <a href="mailto:chamss-dine.agbizounon@epitech.eu" class="social-circle" title="Email Direct">
        <i class="fas fa-envelope"></i>
      </a>
      <a href="https://discord.com/users/foundhack" target="_blank" class="social-circle" title="Discord">
        <i class="fab fa-discord"></i>
      </a>
      <a href="https://tryhackme.com/p/foundhack" target="_blank" class="social-circle" title="TryHackMe">
        <i class="fas fa-flag"></i>
      </a>
      <a href="https://app.hackthebox.com/profile/foundhack" target="_blank" class="social-circle" title="Hack The Box">
        <i class="fas fa-cube"></i>
      </a>
    </div>
  </footer>

</div>