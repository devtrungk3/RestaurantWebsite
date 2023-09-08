subHeader = document.querySelector('.sub-header');
openSearch = document.querySelector('.search_open-btn');
closeSearch = document.querySelector('.search_close-btn');
categories_list = document.querySelector('.categories_container');
searchBarContainer = document.querySelector('.search-bar_container');
searchBar = document.querySelector('.search-bar');

window.onscroll = () => {
    if (window.scrollY > 500) {
        subHeader.style.transform = 'translateY(0)';
        subHeader.style.zIndex = '999';
    } else {
        subHeader.style.transform = 'translateY(-45px)';
        subHeader.style.zIndex = '998';
    }
}

openSearch.onclick = () => {
    categories_list.style.display = 'none';
    searchBarContainer.style.display = 'flex';
    openSearch.style.display = 'none';
}
closeSearch.onclick = () => {
    categories_list.style.display = 'flex';
    searchBarContainer.style.display = 'none';
    searchBar.value = '';
    openSearch.style.display = 'block';
}