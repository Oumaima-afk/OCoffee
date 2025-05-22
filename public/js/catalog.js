document.addEventListener('DOMContentLoaded', () => {
    const button = document.getElementById('see-all-products-button');
    const articles = document.querySelectorAll('#articles-list article');
  
    button.addEventListener('click', () => {
      const showAllCoffees = button.dataset.state === 'collapsed';
  
      articles.forEach((article, index) => {
        if (index >= 3) {
          if (showAllCoffees) {
            article.classList.add('visible');
          } else {
            article.classList.remove('visible');
          }
        }
      });
  
      button.dataset.state = showAllCoffees ? 'expanded' : 'collapsed';
      button.textContent = showAllCoffees ? 'Voir moins' : 'Voir tous les produits';
    });
  });
  