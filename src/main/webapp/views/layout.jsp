<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Tailwind CDN & Custom Config -->
    <%@ include file="../includes/core/assets.jsp" %>
    <title>BTrack - App</title>
  </head>
  <body class="bg-alternative">
    <section class="h-screen w-screen overflow-hidden">
      <div
        class="w-[calc(100vw+260px)] flex transition-all duration-500 ease-in-out ml-[-260px] md:ml-0"
        id="view"
      >
        <%@ include file="../includes/layout/sidebar.jsp" %>
        <main class="w-full" id="mainView">
          <%@ include file="../includes/layout/nav.jsp" %>

          <jsp:include page="${contentPage}" />
        </main>
        <%@ include file="../includes/components/ui/modal.jsp" %>
      </div>
    </section>
    <script src="<%= request.getContextPath() %>/js/main.js"></script>
  </body>
</html>
