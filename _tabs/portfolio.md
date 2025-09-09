---
layout: default
title: Portfolio
permalink: /portfolio/
icon: fas fa-briefcase
order: 2
---

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@300;400;600;700&family=Orbitron:wght@400;700&display=swap" rel="stylesheet">

<style>
  :root {
    --primary: #ff2a6d;
    --secondary: #00c2ff;
    --accent: #05d9e8;
    --dark: #0a0a1a;
    --light: #ffffff;
    --gray: #a1a1c2;
    --card-bg: rgba(20, 20, 40, 0.8);
  }
  
  .cyber-container {
    font-family: 'JetBrains Mono', monospace;
    background-color: var(--dark);
    color: var(--light);
    line-height: 1.6;
    overflow-x: hidden;
    padding: 15px;
    max-width: 1200px;
    margin: 0 auto;
  }
  
  .cyber-header {
    text-align: center;
    padding: 40px 15px;
    position: relative;
    margin-bottom: 30px;
  }
  
  .cyber-title {
    font-family: 'Orbitron', sans-serif;
    font-size: 2.2rem;
    margin-bottom: 0.8rem;
    background: linear-gradient(45deg, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;
  }
  
  .cyber-subtitle {
    font-size: 1.1rem;
    color: var(--gray);
    margin-bottom: 1.5rem;
  }
  
  .cyber-section {
    margin: 40px 0;
    padding: 20px;
    background: var(--card-bg);
    border-radius: 8px;
    border: 1px solid rgba(255, 255, 255, 0.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
  }
  
  .cyber-section:hover {
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(0, 194, 255, 0.15);
  }
  
  .section-title {
    font-family: 'Orbitron', sans-serif;
    font-size: 1.6rem;
    margin-bottom: 1.5rem;
    color: var(--secondary);
    text-align: center;
    position: relative;
    padding-bottom: 10px;
  }
  
  .section-title::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 60px;
    height: 2px;
    background: linear-gradient(90deg, transparent, var(--primary), transparent);
  }
  
  .cyber-table {
    width: 100%;
    border-collapse: collapse;
    margin: 15px 0;
    font-size: 0.9rem;
  }
  
  .cyber-table th, .cyber-table td {
    padding: 12px 10px;
    text-align: left;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  }
  
  .cyber-table th {
    background-color: rgba(0, 194, 255, 0.1);
    color: var(--secondary);
    font-weight: 600;
  }
  
  .cyber-table tr {
    transition: background-color 0.2s ease;
  }
  
  .cyber-table tr:hover {
    background-color: rgba(255, 42, 109, 0.03);
  }
  
  .skills-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(70px, 1fr));
    gap: 15px;
    margin: 20px 0;
  }
  
  .skill-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    transition: transform 0.2s ease;
  }
  
  .skill-item:hover {
    transform: translateY(-3px);
  }
  
  .skill-item img {
    width: 40px;
    height: 40px;
    object-fit: contain;
    margin-bottom: 8px;
    filter: grayscale(70%);
    transition: filter 0.2s ease;
  }
  
  .skill-item:hover img {
    filter: grayscale(0%);
  }
  
  .skill-item span {
    font-size: 0.75rem;
    color: var(--gray);
    text-align: center;
  }
  
  .contact-links {
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
    margin: 20px 0;
  }
  
  .contact-link {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background: rgba(20, 20, 40, 0.8);
    border: 1px solid rgba(255, 255, 255, 0.1);
    color: var(--light);
    font-size: 1.2rem;
    transition: all 0.2s ease;
  }
  
  .contact-link:hover {
    transform: translateY(-3px);
    background: linear-gradient(45deg, var(--primary), var(--secondary));
    color: white;
    box-shadow: 0 3px 10px rgba(0, 194, 255, 0.2);
  }
  
  .intro-text {
    text-align: center;
    color: var(--gray);
    margin-bottom: 30px;
    line-height: 1.6;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
  }
  
  @media (max-width: 768px) {
    .cyber-title {
      font-size: 1.8rem;
    }
    
    .cyber-subtitle {
      font-size: 1rem;
    }
    
    .cyber-section {
      padding: 15px;
      margin: 30px 0;
    }
    
    .section-title {
      font-size: 1.4rem;
    }
    
    .cyber-table {
      font-size: 0.85rem;
    }
    
    .cyber-table th, .cyber-table td {
      padding: 10px 8px;
    }
    
    .skills-grid {
      grid-template-columns: repeat(auto-fill, minmax(60px, 1fr));
      gap: 12px;
    }
    
    .skill-item img {
      width: 35px;
      height: 35px;
    }
  }
  
  @media (max-width: 480px) {
    .cyber-container {
      padding: 10px;
    }
    
    .cyber-header {
      padding: 30px 10px;
    }
    
    .cyber-title {
      font-size: 1.6rem;
    }
    
    .section-title {
      font-size: 1.3rem;
    }
    
    .cyber-table {
      display: block;
      overflow-x: auto;
    }
  }

  /* Animations subtiles */
  @keyframes fadeInUp {
    from {
      opacity: 0;
      transform: translateY(20px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }
  
  .animate-on-scroll {
    opacity: 0;
    animation: fadeInUp 0.6s ease forwards;
  }
  
  .delay-1 { animation-delay: 0.1s; }
  .delay-2 { animation-delay: 0.2s; }
  .delay-3 { animation-delay: 0.3s; }
  .delay-4 { animation-delay: 0.4s; }
</style>

<div class="cyber-container">
  <div class="cyber-header">
    <h1 class="cyber-title animate-on-scroll">Bonjour, je suis Chamss-Dine Adedoyi AGBIZOUNON (foundhack)</h1>
    <h3 class="cyber-subtitle animate-on-scroll delay-1">Passionné de cybersécurité offensive et joueur de CTF</h3>
    
    <p class="intro-text animate-on-scroll delay-2">Bienvenue sur mon espace en ligne ! Je documente ici mes labs, mes challenges CTF et tout ce qui m'aide à préparer mes certifications professionnelles. Vous trouverez également mon parcours, mes expériences et mes certifications.</p>
  </div>

  <div class="cyber-section animate-on-scroll delay-1">
    <h2 class="section-title">Formation</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Mes diplômes et parcours académiques.</p>
    
    <table class="cyber-table">
      <tr>
        <th>Programme / Diplôme</th>
        <th>Institution</th>
        <th>Date</th>
        <th>Description</th>
      </tr>
      <tr>
        <td>DT IMI (Technicien en Installation et Maintenance Informatique)</td>
        <td>Lycée Technique Professionnel De Porto Novo</td>
        <td>2024 – 2025</td>
        <td>Diplôme de technicien en IMI, avec des compétences en installation et maintenance informatique. Formation axée sur la théorie et la pratique.</td>
      </tr>
      <tr>
        <td>BEPC</td>
        <td>Lycée Behanzin - Porto-Novo</td>
        <td>2021</td>
        <td>Diplôme de l'enseignement général.</td>
      </tr>
    </table>
  </div>

  <div class="cyber-section animate-on-scroll delay-2">
    <h2 class="section-title">Expérience Professionnelle</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Mes contributions et stages en cybersécurité et informatique.</p>
    
    <table class="cyber-table">
      <tr>
        <th>Rôle</th>
        <th>Organisation</th>
        <th>Date</th>
        <th>Missions / Réalisations</th>
      </tr>
      <tr>
        <td>Mentor CTF / Cybersécurité</td>
        <td>CERADEI – EPAC-GIT</td>
        <td>09/2024 – En ligne</td>
        <td> Accompagnement des étudiants sur les bases de la sécurité informatique.</td>
      </tr>
      <tr>
        <td>Stagiaire Technicien Informatique</td>
        <td>3D Telecoms Business Center</td>
        <td>07/2023</td>
        <td>Réparation et maintenance d'ordinateurs, sertissage de câbles réseau, installation de systèmes d'exploitation (Windows/Linux).</td>
      </tr>
      <tr>
        <td>Chall Maker</td>
        <td>BJSEC</td>
        <td>Actuel</td>
        <td>Création de challenges dans les catégories OSINT, STEGANO, CRYPTO.</td>
      </tr>
    </table>
  </div>

  <div class="cyber-section animate-on-scroll delay-3">
    <h2 class="section-title">Récompenses</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Les prix obtenus lors des diverses compétitions de CTF (Capture The Flag).</p>
    
    <table class="cyber-table">
      <tr>
        <th>Année</th>
        <th>Prix</th>
        <th>Détails</th>
      </tr>
      <tr>
        <td>2025</td>
        <td>1ère place – HACKERLAB</td>
        <td>Équipe : BJ_S3C</td>
      </tr>
      <tr>
        <td>2025</td>
        <td>Plus Jeune Hacker – HACKERLAB</td>
        <td>Distinction individuelle</td>
      </tr>
      <tr>
        <td>2025</td>
        <td>4ème place – The Phoenix Quest CTF</td>
        <td>Individuel</td>
      </tr>
      <tr>
        <td>2024</td>
        <td>1ère place – Christmas CTF</td>
        <td>Individuel</td>
      </tr>
    </table>
  </div>

  <div class="cyber-section animate-on-scroll delay-4">
    <h2 class="section-title">Certifications</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Cette section regroupe mes certifications professionnelles en cybersécurité ainsi que mes attestations de participation aux CTF.</p>
    
    <table class="cyber-table">
      <tr>
        <th>Certification</th>
        <th>Organisme</th>
        <th>Statut</th>
        <th>Description</th>
      </tr>
      <tr>
        <td>CNSP</td>
        <td>Certified Network Security Practitioner</td>
        <td>En cours</td>
        <td>Certification professionnelle en cybersécurité axée sur la défense des réseaux.</td>
      </tr>
      <tr>
        <td>CAP</td>
        <td>Certified AppSec Practitioner</td>
        <td>En cours</td>
        <td>Certification professionnelle orientée sécurité offensive et audit d'applications.</td>
      </tr>
    </table>
  </div>

  <div class="cyber-section">
    <h2 class="section-title">Compétences Techniques</h2>
    
    <div class="skills-grid">
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="Python">
        <span>Python</span>
      </div>
      <div class="skill-item">
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/linux/linux-original.svg" alt="Linux">
        <span>Linux</span>
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
        <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/bash/bash-original.svg" alt="Bash">
        <span>Bash</span>
      </div>
      
    </div>
  </div>

  <div class="cyber-section">
    <h2 class="section-title">Me Contacter</h2>
    <p style="text-align: center; margin-bottom: 20px; color: var(--gray);">Envie d'échanger sur la cybersécurité, les CTF ou collaborer sur un projet ? Je suis toujours ouvert aux discussions et partages d'expériences.</p>
    
    <div class="contact-links">
      <a href="https://www.linkedin.com/in/foundhack/" target="_blank" class="contact-link">
        <i class="fab fa-linkedin-in"></i>
      </a>
      <a href="https://discord.com/users/foundhack" target="_blank" class="contact-link">
        <i class="fab fa-discord"></i>
      </a>
      <a href="https://github.com/foundhack" target="_blank" class="contact-link">
        <i class="fab fa-github"></i>
      </a>
      <a href="https://tryhackme.com/p/foundhack" target="_blank" class="contact-link">
        <i class="fas fa-flag"></i>
      </a>
      <a href="https://app.hackthebox.com/profile/foundhack" target="_blank" class="contact-link">
        <i class="fas fa-cube"></i>
      </a>
    </div>
  </div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Animation au défilement
    const animatedElements = document.querySelectorAll('.animate-on-scroll');
    
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.style.animationPlayState = 'running';
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.1 });
    
    animatedElements.forEach(element => {
      observer.observe(element);
    });
    
    // Effet de survol pour les lignes des tableaux
    const tableRows = document.querySelectorAll('.cyber-table tr');
    tableRows.forEach(row => {
      row.addEventListener('mouseenter', () => {
        row.style.backgroundColor = 'rgba(255, 42, 109, 0.03)';
      });
      row.addEventListener('mouseleave', () => {
        row.style.backgroundColor = '';
      });
    });
  });
</script>