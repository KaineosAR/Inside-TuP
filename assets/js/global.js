// global.js — Inside TuP
// Shared functionality for all pages.

// ============================================================
// NAV TOGGLE (mobile hamburger)
// ============================================================

export function initNavToggle() {
  const navBtn = document.querySelector('nav button');
  const navMenu = document.querySelector('nav ul');

  if (navBtn && navMenu) {
    navBtn.addEventListener('click', () => {
      const isOpen = navBtn.getAttribute('aria-expanded') === 'true';
      navBtn.setAttribute('aria-expanded', String(!isOpen));
      navMenu.classList.toggle('is-open', !isOpen);
    });

    // Close when a link is tapped
    navMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => {
        navBtn.setAttribute('aria-expanded', 'false');
        navMenu.classList.remove('is-open');
      });
    });

    // Close when clicking outside the nav
    document.addEventListener('click', (e) => {
      if (!navBtn.contains(e.target) && !navMenu.contains(e.target)) {
        navBtn.setAttribute('aria-expanded', 'false');
        navMenu.classList.remove('is-open');
      }
    });
  }
}
