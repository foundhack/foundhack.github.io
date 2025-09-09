---
layout: page
title: "Machines"
description: "Liste des machines pour la préparation OSCP"
icon: "fas fa-server"
order: 2
permalink: /machines/
---

<div class="machines-container">
  <div class="machines-header">
    <h1>
      <img src="https://i.ibb.co/4nqKzbkW/Hackthebox-cube.png" alt="HackTheBox Logo" width="50">
      <img src="https://i.ibb.co/nqH0T4w8/Untitled.png" alt="TryHackMe Logo" width="50">
      <img src="https://i.ibb.co/VpMLpFWc/j8m8atakekq1frdgg695.webp" alt="OffSec Logo" width="50">
      Machines
    </h1>
    <p class="machines-subtitle">
    Liste des machines pour mon entraînement à l'OSCP de la liste <strong>LainKusanagi</strong>
  </p>
  </div>

  <div class="stats">
    <span><i class="fas fa-server"></i> Total Machines: {{ site.data.machines | size }}</span>
    <span><i class="fas fa-check-circle"></i> Terminées: {{ site.data.machines | where: "todo", "2/2" | size }}</span>
    <span><i class="fab fa-linux"></i> Linux: {{ site.data.machines | where: "os", "Linux" | size }}</span>
    <span><i class="fab fa-windows"></i> Windows: {{ site.data.machines | where: "os", "Windows" | size }}</span>
    <span><i class="fab fa-windows"></i> Windows AD: {{ site.data.machines | where: "os", "Windows AD" | size }}</span>
  </div>

  <div class="filters">
    <div class="filter-group">
      <label for="platformFilter"><i class="fas fa-globe"></i> Plateforme:</label>
      <select id="platformFilter">
        <option value="all">Toutes</option>
        <option value="hackthebox">HackTheBox</option>
        <option value="tryhackme">TryHackMe</option>
        <option value="proving-grounds">Proving Grounds Practice</option>
        <option value="proving-grounds-labs">Proving Grounds Labs</option>
        <option value="virtual-hacking-labs">Virtual Hacking Labs</option>
        <option value="vulnlab">VulnLab</option>
      </select>
    </div>
    <div class="filter-group">
      <label for="osFilter"><i class="fas fa-laptop-code"></i> OS:</label>
      <select id="osFilter">
        <option value="all">Tous</option>
        <option value="linux">Linux</option>
        <option value="windows">Windows</option>
        <option value="windows ad">Windows AD</option>
      </select>
    </div>
    <div class="filter-group">
      <label for="difficultyFilter"><i class="fas fa-tachometer-alt"></i> Difficulté:</label>
      <select id="difficultyFilter">
        <option value="all">Toutes</option>
        <option value="easy">Easy</option>
        <option value="medium">Medium</option>
        <option value="hard">Hard</option>
        <option value="insane">Insane</option>
      </select>
    </div>
  </div>

  <div class="search-bar">
    <input type="text" id="searchInput" placeholder="Rechercher une machine..." />
    <button onclick="applyFiltersAndSearch()"><i class="fas fa-search"></i></button>
    <p>Machines trouvées: <span id="machineCount">{{ site.data.machines | size }}</span></p>
  </div>

  <div class="table-container">
    <table class="machines-table">
      <thead>
        <tr>
          <th>Nom</th>
          <th>Plateforme</th>
          <th>OS</th>
          <th>Difficulté</th>
          <th>Write-up</th>
          <th>Progression</th>
        </tr>
      </thead>
      <tbody>
        {% for machine in site.data.machines %}
        <tr class="machine-row">
          <td data-label="Nom">{{ machine.name }}</td>
          <td data-label="Plateforme" data-value="{{ machine.platform | downcase }}">{{ machine.platform }}</td>
          <td data-label="OS" data-value="{{ machine.os | downcase }}">
            {% if machine.os == "Linux" %}
              <i class="fab fa-linux"></i> {{ machine.os }}
            {% elsif machine.os == "Windows" or machine.os == "Windows AD" %}
              <i class="fab fa-windows"></i> {{ machine.os }}
            {% else %}
              {{ machine.os }}
            {% endif %}
          </td>
          <td data-label="Difficulté" data-value="{{ machine.difficulty | downcase }}">
            <span class="difficulty {{ machine.difficulty | downcase }}">{{ machine.difficulty }}</span>
          </td>
          <td data-label="Write-up">
            {% if machine.writeup and machine.writeup != "" %}
              <a href="{{ machine.writeup }}" class="writeup-link" target="_blank" rel="noopener noreferrer">Lire</a>
            {% else %}
              -
            {% endif %}
          </td>
          <td data-label="Progression" class="status-cell">
            {% assign progress = machine.todo %}
            <span class="status 
              {% if progress == '2/2' %}completed
              {% elsif progress == '0/2' %}not-started
              {% else %}pending{% endif %}
            ">
              {{ progress | default: "N/A" }}
            </span>
          </td>
        </tr>
        {% endfor %}
      </tbody>
    </table>
  </div>

  <div class="pagination">
    <button id="prevPage" class="pagination-btn" disabled>
      <i class="fas fa-chevron-left"></i> Précédent
    </button>
    <span id="pageInfo">Page 1 sur <span id="totalPages">1</span></span>
    <button id="nextPage" class="pagination-btn">
      Suivant <i class="fas fa-chevron-right"></i>
    </button>
    <select id="pageSize">
      <option value="10">10 par page</option>
      <option value="25" selected>25 par page</option>
      <option value="50">50 par page</option>
      <option value="100">100 par page</option>
    </select>
  </div>
</div>

<style>
  .machines-container { max-width: 1200px; margin: 0 auto; padding: 0 20px; }
  .machines-header { text-align: center; margin-bottom: 30px; }
  .machines-header h1 { color: var(--link-color); font-size: 2.5em; display: flex; justify-content: center; align-items: center; gap: 10px; margin: 0; }
  .stats { display: flex; justify-content: center; gap: 15px; margin-bottom: 20px; flex-wrap: wrap; }
  .stats span { background: var(--card-bg); padding: 10px 15px; border-radius: 5px; color: var(--text-color); font-size: 0.9em; display: flex; align-items: center; gap: 5px; }
  .filters { display: flex; justify-content: center; gap: 20px; margin-bottom: 20px; flex-wrap: wrap; }
  .filter-group { display: flex; align-items: center; gap: 5px; }
  .filters label { color: var(--text-color); font-size: 0.9em; }
  .filters select { padding: 8px; background: var(--card-bg); color: var(--text-color); border: 1px solid var(--border-color); border-radius: 5px; font-size: 0.9em; transition: border-color 0.3s; }
  .filters select:hover { border-color: var(--link-color); }
  .search-bar { display: flex; justify-content: center; align-items: center; gap: 10px; margin-bottom: 30px; }
  .search-bar input { padding: 12px; width: 100%; max-width: 450px; font-size: 1em; background: var(--card-bg); color: var(--text-color); border: 1px solid var(--border-color); border-radius: 5px; transition: border-color 0.3s; }
  .search-bar input:focus { border-color: var(--link-color); outline: none; }
  .search-bar button { padding: 12px; background: var(--link-color); color: #fff; border: none; border-radius: 5px; cursor: pointer; font-size: 1em; transition: background 0.3s; }
  .search-bar button:hover { background: var(--link-hover-color); }
  .search-bar p { color: var(--text-color); margin: 0; font-size: 0.9em; }
  .table-container { overflow-x: auto; }
  .machines-table { width: 100%; border-collapse: separate; border-spacing: 0; background: var(--card-bg); color: var(--text-color); border-radius: 10px; overflow: hidden; box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); }
  .machines-table th, .machines-table td { padding: 12px; text-align: left; border-bottom: 1px solid var(--border-color); font-size: 0.95em; vertical-align: middle; }
  .machines-table th { background: var(--card-header-bg); font-weight: bold; }
  .machines-table tr:hover { background: var(--card-hover-bg); transition: background 0.3s; }
  .difficulty.easy { color: #28a745; }
  .difficulty.medium { color: #f28c38; }
  .difficulty.hard { color: #dc3545; }
  .difficulty.insane { color: #6f42c1; }
  .writeup-link { color: var(--link-color); text-decoration: none; font-size: 0.9em; transition: color 0.3s; }
  .writeup-link:hover { color: var(--link-hover-color); text-decoration: underline; }
  .status { padding: 5px 10px; border-radius: 5px; font-size: 0.9em; font-weight: bold; min-width: 40px; text-align: center; }
  .status.completed { background-color: #28a745; color: white; }
  .status.pending { background-color: #f28c38; color: white; }
  .status.not-started { background-color: #6c757d; color: white; }
  .pagination { display: flex; justify-content: center; align-items: center; gap: 15px; margin-top: 20px; padding: 15px; background: var(--card-bg); border-radius: 8px; flex-wrap: wrap; }
  .pagination-btn { padding: 8px 16px; background: var(--link-color); color: white; border: none; border-radius: 5px; cursor: pointer; transition: background 0.3s; }
  .pagination-btn:hover:not(:disabled) { background: var(--link-hover-color); }
  .pagination-btn:disabled { background: var(--border-color); cursor: not-allowed; }
  #pageInfo { color: var(--text-color); font-weight: bold; }
  #pageSize { padding: 8px; background: var(--card-bg); color: var(--text-color); border: 1px solid var(--border-color); border-radius: 5px; }
  @media (max-width: 768px) {
    .machines-container { padding: 0 10px; }
    .machines-table { display: block; box-shadow: none; }
    .machines-table thead { display: none; }
    .machines-table tbody, .machines-table tr { display: block; margin-bottom: 20px; background: var(--card-bg); border-radius: 8px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); }
    .machines-table td { display: flex; justify-content: space-between; padding: 10px; border-bottom: 1px solid var(--border-color); }
    .machines-table td:before { content: attr(data-label); font-weight: bold; color: var(--link-color); flex: 0 0 100px; }
    .search-bar input { width: 100%; }
    .filters { flex-direction: column; align-items: stretch; }
    .filter-group { width: 100%; margin-bottom: 10px; }
    .filters select { width: 100%; }
    .stats { flex-direction: column; gap: 10px; }
    .pagination { flex-direction: column; gap: 10px; }
  }
  .machines-subtitle {
  font-size: 1.1em;
  color: var(--text-color);
  margin-top: 10px;
  font-style: italic;
}

</style>

<script>
  let currentPage = 1;
  let pageSize = 25;
  let filteredRows = [];

  function filterRows() {
    const platformFilter = document.getElementById("platformFilter");
    const platformFilterValue = platformFilter.value;
    const platformFilterText = platformFilter.options[platformFilter.selectedIndex].text.toLowerCase();
    const osFilter = document.getElementById("osFilter").value;
    const difficultyFilter = document.getElementById("difficultyFilter").value;
    const searchTerm = document.getElementById("searchInput").value.toLowerCase();
    
    const allRows = document.querySelectorAll(".machine-row");
    filteredRows = [];

    allRows.forEach((row) => {
      const name = row.cells[0].textContent.toLowerCase();
      const platform = row.cells[1].textContent.toLowerCase(); // Utilise le texte affiché
      const os = row.cells[2].getAttribute("data-value") || "";
      const difficulty = row.cells[3].getAttribute("data-value") || "";

      const matchesSearch = name.includes(searchTerm);
      
      // Pour la plateforme, on compare soit avec la valeur, soit avec le texte
      let matchesPlatform = platformFilterValue === "all";
      if (!matchesPlatform) {
        // Essayer d'abord avec la valeur (pour HackTheBox, TryHackMe)
        if (platformFilterValue === "hackthebox" || platformFilterValue === "tryhackme") {
          matchesPlatform = platform.includes(platformFilterValue);
        } else {
          // Pour les autres, utiliser le texte complet
          matchesPlatform = platform.includes(platformFilterText);
        }
      }
      
      const matchesOs = osFilter === "all" || os === osFilter;
      const matchesDifficulty = difficultyFilter === "all" || difficulty === difficultyFilter;

      if (matchesSearch && matchesPlatform && matchesOs && matchesDifficulty) {
        filteredRows.push(row);
      }
    });
    return filteredRows;
  }

  function showCurrentPage() {
    const allRows = document.querySelectorAll(".machine-row");
    
    allRows.forEach(row => { row.style.display = "none"; });

    const startIndex = (currentPage - 1) * pageSize;
    const endIndex = startIndex + pageSize;
    
    for (let i = startIndex; i < endIndex && i < filteredRows.length; i++) {
      if (filteredRows[i]) {
        filteredRows[i].style.display = "";
      }
    }

    const totalPages = Math.ceil(filteredRows.length / pageSize) || 1;
    document.getElementById("pageInfo").textContent = `Page ${currentPage} sur `;
    document.getElementById("totalPages").textContent = totalPages;
    
    document.getElementById("prevPage").disabled = currentPage === 1;
    document.getElementById("nextPage").disabled = currentPage === totalPages;
    
    document.getElementById("machineCount").textContent = filteredRows.length;
  }

  function applyFiltersAndSearch() {
    currentPage = 1;
    filterRows();
    showCurrentPage();
  }

  document.getElementById("prevPage").addEventListener("click", () => {
    if (currentPage > 1) {
      currentPage--;
      showCurrentPage();
    }
  });

  document.getElementById("nextPage").addEventListener("click", () => {
    const totalPages = Math.ceil(filteredRows.length / pageSize);
    if (currentPage < totalPages) {
      currentPage++;
      showCurrentPage();
    }
  });

  document.getElementById("pageSize").addEventListener("change", (e) => {
    pageSize = parseInt(e.target.value);
    currentPage = 1;
    applyFiltersAndSearch();
  });

  document.getElementById("platformFilter").addEventListener("change", applyFiltersAndSearch);
  document.getElementById("osFilter").addEventListener("change", applyFiltersAndSearch);
  document.getElementById("difficultyFilter").addEventListener("change", applyFiltersAndSearch);
  document.getElementById("searchInput").addEventListener("input", applyFiltersAndSearch);

  window.addEventListener("load", () => {
    filteredRows = Array.from(document.querySelectorAll(".machine-row"));
    document.getElementById("pageSize").value = 25;
    pageSize = 25;
    showCurrentPage();
    document.getElementById("searchInput").focus();
  });
</script>