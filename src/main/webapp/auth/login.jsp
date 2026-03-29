<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Tailwind CDN & Custom Config -->
    <%@ include file="../includes/core/tailwind.jsp" %>
    <title>BTrack - log in</title>
  </head>
  <body class="bg-alternative">
    <section class="flex justify-center items-center h-[100vh]">
      <div class="w-[320px] sm:w-[400px] bg-white rounded-md">
        <div class="bg-black px-4 py-4 rounded-t-md">
          <img
            class="h-[30px] md:h-[40px]"
            src="<%= request.getContextPath() %>/img/logo.png"
            alt="BTrack Logo"
          />
        </div>
        <div class="p-4 space-y-4">
          <h2 class="text-2xl font-bold">Log in</h2>
          <form
            class="space-y-4"
            action="<%= request.getContextPath() %>/login"
            method="post"
          >
            <input
              type="email"
              name="email"
              placeholder="Email"
              class="w-full p-2 border rounded"
            />

            <input
              type="password"
              name="password"
              placeholder="Password"
              class="w-full p-2 border rounded"
            />

            <button class="bg-secondary text-white px-4 py-2 rounded-md">
              Log in
            </button>
            <div class="flex space-x-2 text-sm">
              <p>Don't have an account?</p>
              <a class="underline" href="<%= request.getContextPath() %>/signup"
                >Sign up</a
              >
            </div>
          </form>
        </div>
        <div
          class="bg-black px-4 py-4 flex justify-between text-xs text-white/50 rounded-b-md"
        >
          <p>Powered by @rasan3.1416 2026</p>
          <p>v 1.0.0</p>
        </div>
      </div>
    </section>
  </body>
</html>
