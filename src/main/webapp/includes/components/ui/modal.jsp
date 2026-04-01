<div
  id="modal"
  class="fixed inset-0 bg-black/50 opacity-0 pointer-events-none flex items-center justify-center transition-all duration-500 ease-in-out"
>
  <div
    id="modalBox"
    class="bg-white rounded-lg p-6 w-[320px] sm:w-[400px] relative transform scale-95 transition-all duration-500 ease-in-out"
  >
    <!-- Close button -->
    <button class="absolute top-2 right-2" onclick="closeModal()">
      <i class="fa-solid fa-xmark"></i>
    </button>

    <!-- Dynamic content -->
    <div id="modalContent"></div>
  </div>
</div>
