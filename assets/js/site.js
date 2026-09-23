const button = document.querySelector('.nav-toggle');
const nav = document.querySelector('.main-nav');
if (button && nav) {
  button.addEventListener('click', () => {
    const open = nav.classList.toggle('open');
    button.setAttribute('aria-expanded', String(open));
  });
}


// During migration, use the legacy image only if a local copy is not yet present.
document.querySelectorAll('img[data-fallback-src]').forEach((img) => {
  img.addEventListener('error', () => {
    const fallback = img.dataset.fallbackSrc;
    if (fallback && img.src !== fallback) {
      img.removeAttribute('data-fallback-src');
      img.src = fallback;
    }
  }, { once: true });
});
