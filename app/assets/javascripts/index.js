document.addEventListener('DOMContentLoaded', function() {
    const sideNav = document.querySelectorAll('.sidenav');
    M.Sidenav.init(sideNav, {});
    
    const innerLink = Array.from(document.getElementsByClassName("forSurvivorsLink"));
    const closeSection = Array.from(document.getElementsByClassName("close-nested-section"));
    
    innerLink.forEach(link => link.addEventListener("click", () => {
      link.nextElementSibling.classList.toggle("hidden");
    }))
    
    closeSection.forEach(button => button.addEventListener("click", () => {
      button.parentElement.classList.add("hidden");
    }))
  });