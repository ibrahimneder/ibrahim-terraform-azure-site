// Simple JS for mobile menu and footer year
const menuBtn = document.getElementById('menuBtn');
const nav = document.getElementById('nav');
menuBtn?.addEventListener('click', () => nav.classList.toggle('open'));
document.getElementById('year').textContent = new Date().getFullYear();
