<script>
  let { children } = $props();
  import "../app.css";
	import { page } from '$app/state';
  import Button from '../lib/Button.svelte';
</script>

<div class="flex h-screen flex-row mx-auto mt-20 max-w-8/10 flex-center">
  <div class="flex-item grow border-2 rounded-t-md border-gray-700 max-w-1/1 mr-0">
    <div class="p-4 grow h-full mt-0 pt-0 top-0">
      {@render children()}
    </div>
  </div>
  <div class="flex flex-col mt-10 h-10">
    {#if page.url.pathname =="/"}<div class=""><a href="/"> <p class="tab border-2 border-l-5 rounded-r-lg static border-gray-700 p-1" style="margin-left:-0.1em; border-left-color: #ffedd4;">Home</p></a></div>{:else}
    <div class=""><a href="/"> <p class="tab border-2 border-l-0 rounded-r-lg static border-gray-700 p-1">Home</p></a></div>
    {/if}
    {#if page.url.pathname =="/about"}<div class=""><a href="/about"><p class="tab border-2 border-l-5 rounded-r-lg static border-gray-700 p-1" style="margin-left:-0.1em; border-left-color: #ffedd4;">About</p></a></div>{:else}
    <div class=""><a href="/about"><p class="tab border-2 border-l-0 rounded-r-lg static border-gray-700 p-1">About</p></a></div>
    {/if}
    {#if page.url.pathname =="/titanfall"}<div class=""><a href="/titanfall"><p class="tab  border-2 border-l-5 rounded-r-lg static border-gray-700 p-1 " style="margin-left:-0.1em; border-left-color: #ffedd4;">Titanfall</p></a></div>{:else}
    <div class=""><a href="/titanfall"><p class="tab  border-2 border-l-0 rounded-r-lg static border-gray-700 p-1 ">Titanfall</p></a></div>
    {/if}
    
  </div>
</div>


<style lang="postcss">
    @reference "tailwindcss";
    :global(html) {
      background-color: theme(--color-orange-100);
    }
    :global(h1){
      font-size: 20px;
      font-family: "Syne Mono", monospace;
      font-weight: 400;
      font-style: bold;
    }
</style>