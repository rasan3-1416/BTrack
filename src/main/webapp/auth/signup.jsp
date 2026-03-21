<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Tailwind CDN & Custom Config -->
    <%@ include file="../includes/core/tailwind.jsp" %>
    <title>BTrack</title>
  </head>
  <body class="bg-alternative">
    <section class="flex justify-center items-center h-[100vh]">
      <div class="w-[320px] md:w-[400px] bg-white rounded-md">
        <div class="bg-black px-4 py-4 rounded-t-md">
          <img
            class="h-[30px] md:h-[40px]"
            src="./img/logo.png"
            alt="BTrack Logo"
          />
        </div>
        <div class="p-4 space-y-4">
          <h2 class="text-2xl font-bold">Sign up</h2>
          <form class="space-y-4" action="signup" method="post">
            <input
              type="text"
              name="name"
              placeholder="Full Name"
              class="w-full p-2 border rounded"
            />

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

            <input
              type="password"
              name="confirmPassword"
              placeholder="Confirm Password"
              class="w-full p-2 border rounded"
            />

            <button class="bg-primary text-white px-4 py-2 rounded-md">
              Sign Up
            </button>
            <div class="flex space-x-2 text-sm">
              <p>Already have an account?</p>
              <a class="underline" href="./login">Log in</a>
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
