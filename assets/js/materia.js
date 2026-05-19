// materia.js — Inside TuP


// ============================================================
// NAV TOGGLE (mobile hamburger)
// ============================================================

const navBtn  = document.querySelector('nav button');
const navMenu = document.querySelector('nav ul');

if (navBtn && navMenu) {
  navBtn.addEventListener('click', () => {
    const isOpen = navBtn.getAttribute('aria-expanded') === 'true';
    navBtn.setAttribute('aria-expanded', String(!isOpen));
    navMenu.classList.toggle('is-open', !isOpen);
  });

  navMenu.querySelectorAll('a').forEach(link => {
    link.addEventListener('click', () => {
      navBtn.setAttribute('aria-expanded', 'false');
      navMenu.classList.remove('is-open');
    });
  });

  document.addEventListener('click', (e) => {
    if (!navBtn.contains(e.target) && !navMenu.contains(e.target)) {
      navBtn.setAttribute('aria-expanded', 'false');
      navMenu.classList.remove('is-open');
    }
  });
}


// ============================================================
// COLLAPSIBLE FILES PER CLASS
// Each "Ver archivos" button toggles its own file list.
// Independent — opening one doesn't close others.
// ============================================================

const archivosToggles = document.querySelectorAll('.clase-archivos-trigger');

archivosToggles.forEach(trigger => {
  const bodyId = trigger.getAttribute('aria-controls');
  const body   = document.getElementById(bodyId);

  if (!body) return;

  trigger.addEventListener('click', () => {
    const isOpen = trigger.getAttribute('aria-expanded') === 'true';
    trigger.setAttribute('aria-expanded', String(!isOpen));
    body.classList.toggle('is-open', !isOpen);
  });
});
