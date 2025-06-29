<script>
    
    function toggle() {
        window.document.body.classList.toggle('dark-mode')
    }
</script>
<div>
    <label for=""></label>
    <input on:click={toggle} type="checkbox" id="theme-toggle" />
    <label for="theme-toggle"></label>
    <label for="theme-toggle" class="bottom"></label>
    <button on:click={toggle}>
    <slot/>
    
</button>
</div>
    
<style lang="postcss">
    @reference "tailwindcss";
        #theme-toggle {
            @apply invisible;
        }
    
        #theme-toggle + label {
            @apply inline-block cursor-pointer border-gray-300 h-12 w-12 absolute top-7 right-24 rounded-full duration-300 content-[''];
        }
        .bottom{
            @apply visible bg-gray-700 border-gray-300 inline-block cursor-pointer h-6 w-8 absolute top-2 right-26 rounded-t-lg duration-300 content-[''];
        }

    
        #theme-toggle:not(:checked) + label {
            @apply bg-amber-400 border-gray-300;
        }
    
        #theme-toggle:checked + label {
            @apply bg-transparent visible border-8 border-gray-300;
        }
    </style>


