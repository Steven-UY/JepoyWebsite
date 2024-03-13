document.getElementById('logo').addEventListener('click', function() {
    window.location.reload();
});

function toggleSideMenu(){
    var sideMenu = document.getElementById("mySidemenu");
    sideMenu.classList.toggle("open");
    document.getElementById("main-page-overlay").style.display = 'flex';
    document.body.style.overflow='hidden';
}

function closeSideMenu(){
    var sideMenu = document.getElementById("mySidemenu");
    sideMenu.classList.remove("open");
    document.getElementById("main-page-overlay").style.display = 'none';
    document.body.style.overflow='';
}



document.addEventListener('DOMContentLoaded', function() {
    function addElementIfNarrowScreen() {
        const menuButton = document.getElementById('menu-button');
        if (window.innerWidth < 600) {
            if (!menuButton) {
                const menuButton = document.createElement('button');
                menuButton.id = 'menu-button';
                menuButton.className = 'menu-button'; 

                const newImage = document.createElement('img');
                newImage.src = '/images/main-menu.png'; 
                newImage.alt = 'Menu';
                newImage.className = 'menu-image';

            
                menuButton.appendChild(newImage);

                
                const headerElement = document.querySelector('.navbar header');
                const logoElement = document.getElementById('logo');

                
                headerElement.insertBefore(menuButton, logoElement);

                menuButton.addEventListener('click', toggleSideMenu);
            }
        } else {
            if (menuButton) {
                closeSideMenu();
                menuButton.remove();
            }
            
        }
    }
    addElementIfNarrowScreen();
    window.addEventListener('resize', addElementIfNarrowScreen);
});

