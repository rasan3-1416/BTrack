<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Tailwind CDN & Custom Config -->
    <%@ include file="../includes/core/assets.jsp" %>
    <title>BTrack - Dashboard</title>
  </head>
  <body class="bg-alternative">
    <section class="h-screen w-screen overflow-hidden">
      <div
        class="w-[calc(100vw+260px)] flex transition-all duration-500 ease-in-out ml-[-260px] md:ml-0"
        id="view"
      >
        <%@ include file="../includes/layout/sidebar.jsp" %>
        <main class="w-full" id="mainView">
          <!-- Navigation -->
            <nav class="h-[60px] md:h-[65px] bg-white border-b">
              <div
                class="px-4 md:px-6 lg:px-8 flex justify-between items-center h-full"
              >
                <!-- Hamburger Btn -->
                <button id="sidebarToggle" type="button" class="text-[1.5rem]">
                  <i class="fa-solid fa-bars"></i>
                </button>
                <!-- Hamburger btn -->
                <div class="flex flex-col">
                  <span>${user.name}</span>
                  <span>${user.email}</span>
                </div>
              </div>
            </nav>
            <!-- End Navigation -->
        </main>
      </div>
    </section>
    <script src="<%= request.getContextPath() %>/js/main.js"></script>
  </body>
</html>
