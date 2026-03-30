<!-- Font Awesome CDN -->
<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
/>

<script src="https://cdn.tailwindcss.com"></script>
<script>
  window.tailwind = window.tailwind || {};
  window.tailwind.config = {
    theme: {
      container: {
        center: true,
        padding: {
          DEFAULT: "1rem",
          sm: "2rem",
          lg: "4rem",
          xl: "5rem",
          "2xl": "6rem",
        },
      },
      extend: {
        colors: {
          alternative: "#EDF1F5",
          primary: "#375dfb",
          secondary: "#f89521",
          sidebar: "#222e3c",
        },
      },
    },
  };
</script>
