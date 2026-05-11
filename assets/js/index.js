// index.js — Inside TuP


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


// ============================================================
// FAQ ACCORDION
// One item open at a time. Clicking an open item closes it.
// ============================================================

const faqItems = document.querySelectorAll('.faq-item');

faqItems.forEach(item => {
  const trigger = item.querySelector('.faq-trigger');

  trigger.addEventListener('click', () => {
    const isOpen = item.classList.contains('is-open');

    // Close all items and reset aria-expanded
    faqItems.forEach(i => {
      i.classList.remove('is-open');
      i.querySelector('.faq-trigger').setAttribute('aria-expanded', 'false');
    });

    // If it wasn't open, open it
    if (!isOpen) {
      item.classList.add('is-open');
      trigger.setAttribute('aria-expanded', 'true');
    }
  });
});


// ============================================================
// HERO DOT WAVE
//
// Grid of dots fills the hero section.
// A diagonal wave travels from top-right to bottom-left, forever.
// Each dot grows and shifts to accent color as the wave passes.
// ============================================================

const canvas = document.getElementById('hero-dots');

if (canvas) {
  const ctx            = canvas.getContext('2d');
  const prefersReduced = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  const GAP        = 26;
  const RADIUS_MIN = 1.5;
  const RADIUS_MAX = 5.0;
  const WAVE_SPEED = 12;
  const WAVE_HALF  = 6;

  const BASE   = { r: 255, g: 255, b: 255, a: 0.10 };
  const ACCENT = { r: 125, g: 211, b: 176, a: 0.80 };

  let cols, rows, dots, diagMax;

  const buildGrid = () => {
    cols = Math.ceil(canvas.width  / GAP) + 1;
    rows = Math.ceil(canvas.height / GAP) + 1;
    diagMax = (cols - 1) + (rows - 1);
    dots = [];

    for (let r = 0; r < rows; r++) {
      for (let c = 0; c < cols; c++) {
        dots.push({
          x: c * GAP,
          y: r * GAP,
          diag: c + (rows - 1 - r), // high value = top-right
        });
      }
    }
  };

  const resize = () => {
    canvas.width  = canvas.offsetWidth;
    canvas.height = canvas.offsetHeight;
    buildGrid();
  };

  resize();

  let resizeTimer;
  window.addEventListener('resize', () => {
    clearTimeout(resizeTimer);
    resizeTimer = setTimeout(resize, 100);
  });

  const lerp = (a, b, t) => a + (b - a) * t;

  const draw = (waveCrest) => {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    dots.forEach(dot => {
      const dist      = Math.abs(dot.diag - waveCrest);
      const influence = Math.max(0, 1 - dist / WAVE_HALF);
      const t         = influence * influence * (3 - 2 * influence); // smoothstep

      const radius = lerp(RADIUS_MIN, RADIUS_MAX, t);
      const r = Math.round(lerp(BASE.r, ACCENT.r, t));
      const g = Math.round(lerp(BASE.g, ACCENT.g, t));
      const b = Math.round(lerp(BASE.b, ACCENT.b, t));
      const a = lerp(BASE.a, ACCENT.a, t);

      ctx.beginPath();
      ctx.arc(dot.x, dot.y, radius, 0, Math.PI * 2);
      ctx.fillStyle = `rgba(${r},${g},${b},${a})`;
      ctx.fill();
    });
  };

  if (prefersReduced) {
    draw(-999);
  } else {
    let waveCrest = diagMax + WAVE_HALF;
    let lastTime  = null;

    const animate = (time) => {
      if (lastTime === null) lastTime = time;
      const delta = (time - lastTime) / 1000;
      lastTime = time;

      waveCrest -= WAVE_SPEED * delta;
      if (waveCrest < -WAVE_HALF) waveCrest = diagMax + WAVE_HALF;

      draw(waveCrest);
      requestAnimationFrame(animate);
    };

    requestAnimationFrame(animate);
  }
}
