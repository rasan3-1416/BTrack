/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./**/*.jsp", // scans all JSP files inside webapp folder
  ],
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
        primary: "#2c0b6e",
        secondary: "#f89521",
      },
    },
  },
  plugins: [],
};
