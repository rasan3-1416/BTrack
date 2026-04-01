<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Tailwind CDN & Custom Config -->
    <%@ include file="../includes/core/assets.jsp" %>
    <title>BTrack - sign up</title>
  </head>
  <body class="bg-alternative">
    <section class="flex justify-center items-center h-[100vh]">
      <div class="w-[320px] sm:w-[400px] bg-white rounded-md overflow-hidden">
        <%@ include file="../includes/components/ui/logo.jsp" %>
        <div class="p-4 space-y-4">
          <% String error = (String) request.getAttribute("error");
          String nameValue = (String) request.getAttribute("name");
          String emailValue = (String) request.getAttribute("email");
          if (error != null) { %>
          <div class="bg-red-100 text-red-700 p-2 rounded">
            <%= error %>
          </div> <% } %>
          <h2 class="text-2xl font-bold">Sign up</h2>
          <form
            class="space-y-4"
            action="<%= request.getContextPath() %>/signup"
            method="post"
          >
            <input
              type="text"
              name="name"
              placeholder="Full Name"
              value="<%= nameValue != null ? nameValue : "" %>"
              class="w-full p-2 border rounded"
            />

            <input
              type="email"
              name="email"
              placeholder="Email"
              value="<%= emailValue != null ? emailValue : "" %>"
              class="w-full p-2 border rounded"
            />

            <input
              type="password"
              name="password"
              placeholder="Password"
              class="w-full p-2 border rounded"
            />

            <input
              type="password"
              name="confirmPassword"
              placeholder="Confirm Password"
              class="w-full p-2 border rounded"
            />

            <button
              class="bg-primary text-white px-4 py-2 rounded-md"
              type="submit"
            >
              Sign Up
            </button>
            <div class="flex space-x-2 text-sm">
              <p>Already have an account?</p>
              <a class="underline" href="<%= request.getContextPath() %>/login"
                >Log in</a
              >
            </div>
          </form>
        </div>
        <%@ include file="../includes/components/ui/creator.jsp" %>
      </div>
    </section>
  </body>
</html>
