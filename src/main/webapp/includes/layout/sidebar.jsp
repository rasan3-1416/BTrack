<!-- Sidebar -->
<aside
  class="min-w-[260px] border-r transition-all duration-500 ease-in-out ml-[-260px] md:ml-0"
  id="sidebar"
>
  <div class="flex flex-col h-screen bg-white shrink-0">
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
      <%@ include file="../components/user.jsp" %> <%@ include
      file="../components/creator.jsp" %>
    </div>
  </div>
</aside>
<!-- End Sidebar -->
