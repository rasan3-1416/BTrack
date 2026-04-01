// sidebar controls
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

// Modal Controls
const modal = document.getElementById("modal");
const content = document.getElementById("modalContent");
const box = document.getElementById("modalBox");

function openModal(page) {
  modal.classList.remove("opacity-0", "pointer-events-none");
  modal.classList.add("opacity-100");

  box.classList.remove("scale-95");
  box.classList.add("scale-100");

  // Load JSP content into the modal dynamically
  fetch(page)
    .then((res) => {
      return res.text();
    })
    .then((html) => {
      content.innerHTML = html;
    })
    .catch((err) => {
      console.error("Fetch error:", err);
      content.innerHTML = "<p>Error loading form: " + err.message + "</p>";
    });
}

function closeModal() {
  modal.classList.remove("opacity-100");
  modal.classList.add("opacity-0", "pointer-events-none");

  box.classList.remove("scale-100");
  box.classList.add("scale-95");
}
