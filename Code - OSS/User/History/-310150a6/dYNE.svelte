<script>
  let { children } = $props();
  import "../app.css";
	import { page } from '$app/state';
  let darkMode = $state(false);

    function handleSwitchDarkMode() {
        darkMode = !darkMode;

        darkMode
            ? document.documentElement.classList.add('dark')
            : document.documentElement.classList.remove('dark');
    }
    window.onload = function(){
        if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
            document.documentElement.classList.add('dark');
            darkMode = true;
        } else {
            document.documentElement.classList.remove('dark');
            darkMode = false;
        }
    }
</script>
<div class="flex h-screen flex-row mx-auto mt-20 max-w-8/10 flex-center">
  <div class="flex-item grow border-2 rounded-t-md border-gray-700 dark:border-orange-100 max-w-1/1  mr-0">
    <div class="p-4 grow h-full mt-0 pt-0 top-0">
      {@render children()}
    </div>
  </div>
  <div class="flex flex-col mt-10 h-10">
    {#if page.url.pathname =="/"}<div class=""><a href="/"> <p class="tab border-2 border-l-5 rounded-r-lg static border-gray-700 p-1" style="margin-left:-0.1em; border-left-color: #ffedd4;">Home</p></a></div>{:else}
    <div class=""><a href="/"> <p class="tab border-2 border-l-0 rounded-r-lg static border-gray-700 dark:border-orange-100 p-1">Home</p></a></div>
    {/if}
    {#if page.url.pathname =="/about"}<div class=""><a href="/about"><p class="tab border-2 border-l-5 rounded-r-lg static border-gray-700 p-1" style="margin-left:-0.1em; border-left-color: #ffedd4;">About</p></a></div>{:else}
    <div class=""><a href="/about"><p class="tab border-2 border-l-0 rounded-r-lg static border-gray-700 dark:border-orange-100 p-1">About</p></a></div>
    {/if}
    {#if page.url.pathname =="/titanfall"}<div class=""><a href="/titanfall"><p class="tab  border-2 border-l-5 rounded-r-lg static border-gray-700 p-1 " style="margin-left:-0.1em; border-left-color: #ffedd4;">Titanfall</p></a></div>{:else}
    <div class=""><a href="/titanfall"><p class="tab  border-2 border-l-0 rounded-r-lg static border-gray-700 dark:border-orange-100 p-1 ">Titanfall</p></a></div>
    {/if}
    
  </div>
    <div>
      <input type="checkbox" id="theme-toggle" checked={darkMode} onclick={handleSwitchDarkMode} />
      <label for="theme-toggle"></label>
  </div>



  </div>

<style lang="postcss">
    @reference "tailwindcss";
    @custom-variant dark (&:where(.dark, .dark *));
    p {
        @apply bg-white dark:bg-black text-black dark:text-white text-center;
      }
    #theme-toggle {
          @apply invisible;
      }

      #theme-toggle + label {
          @apply inline-block cursor-pointer h-12 w-12 absolute top-6 right-24 rounded-full duration-300 content-[''];
      }

      #theme-toggle:not(:checked) + label {
          @apply bg-amber-400;
      }

      #theme-toggle:checked + label {
          @apply bg-transparent;
          box-shadow: inset -18px -16px 1px 1px #ddd;
      }
</style>