// materia.js — Inside TuP

import { initNavToggle } from './global.js';

// Initialize nav toggle
initNavToggle();


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
