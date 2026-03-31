// view controls
let sidebarToggle = document.getElementById("sidebarToggle");
let view = document.getElementById("view");

if (window.innerWidth >= 768) {
  view.classList.remove("w-[calc(100vw+260px)]");
}
sidebarToggle.addEventListener("click", function () {
  if (window.innerWidth <= 768) {
    view.classList.toggle("ml-0");
  } else {
    view.classList.toggle("md:ml-[-260px]");
  }
});
