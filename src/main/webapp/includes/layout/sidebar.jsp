<!-- Sidebar -->
<aside class="min-w-[260px] bg-white border-r" id="sidebar">
  <div class="flex flex-col shrink-0 h-screen">
    <%@ include file="../components/logo.jsp" %>

    <!-- Menu -->
    <nav class="space-y-2 flex-1 px-2 py-2">
      <a
        href="#"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300 hover:bg-alternative"
      >
        <i class="fa-solid fa-house"></i>
        <span>Dashboard</span>
      </a>

      <a
        href="#"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300 hover:bg-alternative"
      >
        <i class="fa-solid fa-folder"></i>
        <span>Projects</span>
      </a>

      <a
        href="#"
        class="flex items-center space-x-3 p-2 rounded-md transition-color duration-300 hover:bg-alternative"
      >
        <i class="fa-solid fa-bug"></i>
        <span>Issues</span>
      </a>
    </nav>

    <!-- Footer -->
    <div class="mt-auto border-t">
      <!-- User info -->
      <%@ include file="../components/user.jsp" %>
      <!-- Creator info -->
      <%@ include file="../components/creator.jsp" %>
    </div>
  </div>
</aside>
<!-- End Sidebar -->
