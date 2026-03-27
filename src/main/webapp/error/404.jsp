<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <!-- Tailwind CDN & Custom Config -->
    <%@ include file="../includes/core/tailwind.jsp" %>
    <title>404 - Not Found</title>
  </head>
  <body class="bg-alternative">
    <section
      class="container h-screen flex justify-center items-center bg-alternative"
    >
      <div
        class="flex flex-col md:flex-row gap-y-4 md:gap-x-16 items-center py-6"
      >
        <img class="w-[280px]" src="./img/404.png" alt="404 Icon" />
        <div class="flex flex-col items-center md:items-start gap-y-3">
          <h1 class="text-[5rem] font-bold">404</h1>
          <p class="font-semibold">
            The page is missing or the link incorrect.
          </p>

          <a
            class="text-primary"
            href="<%= request.getContextPath() %>/index.jsp"
          >
            Go to website
          </a>
        </div>
      </div>
    </section>
  </body>
</html>
