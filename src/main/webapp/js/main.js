// Side controls
let sidebar = document.getElementById("sidebar");
let sidebarToggle = document.getElementById("sidebarToggle");
let mainView = document.getElementById("mainView");

sidebarToggle.addEventListener("click", function () {
  if (window.innerWidth <= 768) {
    sidebar.classList.toggle("ml-0");
  } else {
    sidebar.classList.toggle("md:ml-[-260px]");
  }
  // mainView.classList.toggle("left-[260px]");
});
