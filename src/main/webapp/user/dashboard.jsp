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
    <section class="flex h-screen w-screen overflow-hidden">

      <%@ include file="../includes/layout/sidebar.jsp" %>

      <main class="flex-1 relative transition-all duration-500 ease-in-out" id="mainView">
        <div class="w-full h-full " >
          <!-- Navigation -->
          <nav class="h-[60px] md:h-[65px] bg-white border-b">
              <div class="px-4 md:px-6 lg:px-8 flex justify-between items-center h-full">
                  <!-- Hamburger Btn -->
                <button
                  id="sidebarToggle"
                  type="button"
                  class="text-[1.5rem]"
                >
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
        </div>
      </main>
        
        
    </section>
    <script src="<%= request.getContextPath() %>/js/main.js"></script>
  </body>
</html>
