<%
String currentPage = request.getParameter("page");
if (currentPage == null) {
    currentPage = "dashboard";
}
%>

<!-- Sidebar -->
<aside class="min-w-[260px] bg-white border-r" id="sidebar">
  <div class="flex flex-col shrink-0 h-screen">
    <%@ include file="../components/logo.jsp" %>

    <!-- Menu -->
    <nav class="space-y-2 flex-1 px-2 py-2">
      <a
        href="app?page=dashboard"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300  <%= currentPage.equals("dashboard") ? "bg-alternative" : "hover:bg-alternative" %>"
      >
        <i class="fa-solid fa-house"></i>
        <span>Dashboard</span>
      </a>

      <a
        href="app?page=projects"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300  <%= currentPage.equals("projects") ? "bg-alternative" : "hover:bg-alternative" %>"
      >
        <i class="fa-solid fa-folder"></i>
        <span>Projects</span>
      </a>

      <a
        href="app?page=issues"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300  <%= currentPage.equals("issues") ? "bg-alternative" : "hover:bg-alternative" %>"
      >
        <i class="fa-solid fa-bug"></i>
        <span>Issues</span>
      </a>

      <a
        href="app?page=settings"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300  <%= currentPage.equals("settings") ? "bg-alternative" : "hover:bg-alternative" %>"
      >
        <i class="fa-solid fa-cog"></i>
        <span>Settings</span>
      </a>
    </nav>

    <!-- Footer -->
    <div class="mt-auto border-t">
      <!-- User info -->
      <div class="p-4 flex flex-col gap-y-2">
        <%@ include file="../components/user.jsp" %>
        <a
          class="py-2 rounded-md font-semibold flex justify-center items-center gap-x-2 border-2 border-gray-300"
          href="logout"
        >
          <i class="fa-solid fa-arrow-right-from-bracket"></i>
          <span>Log out</span>
        </a>
      </div>
      <!-- Creator info -->
      <%@ include file="../components/creator.jsp" %>
    </div>
  </div>
</aside>
<!-- End Sidebar -->
