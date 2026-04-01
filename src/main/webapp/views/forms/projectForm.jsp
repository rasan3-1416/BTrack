<form class="flex flex-col font-semibold">
  <h2 class="text-xl">Create New Project</h2>
  <p class="text-gray-500 mb-4 text-sm">
    Projects help you group bugs and manage your workflow.
  </p>
  <div class="flex flex-col gap-y-2">
    <div class="flex gap-x-1">
      <label for="projectName"> Name </label>
      <span class="text-red-500">*</span>
    </div>
    <input
      class="w-full p-2 border rounded-md bg-alternative outline-none"
      type="text"
      placeholder="Enter a project name"
      id="projectName"
    />
    <div class="flex gap-x-1">
      <label for="projectDescription"> Description </label>
      <span class="text-red-500">*</span>
    </div>
    <textarea
      class="w-full border rounded-md bg-alternative resize-none p-2 outline-none"
      placeholder="Enter a descriptive project description"
      rows="4"
      cols="50"
      id="projectDescription"
    ></textarea>
    <button
      type="submit"
      class="w-fit bg-primary text-white py-2 px-4 rounded mt-2"
    >
      Save Project
    </button>
  </div>
</form>
