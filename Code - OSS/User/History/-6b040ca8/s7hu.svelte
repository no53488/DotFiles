<script>
    function toggle() {
        window.document.body.classList.toggle('dark-mode')
    }
</script>
<div>
    <label for="light" id="light"></label>
    <input on:click={toggle} type="checkbox" id="theme-toggle" />
    <label for="theme-toggle"></label>
    <label for="theme-toggle"></label>
    <button on:click={toggle}>
    <slot/>
    
</button>
</div>
    
<style lang="postcss">
    @reference "tailwindcss";
        #theme-toggle {
            @apply invisible;
        }
    
        #theme-toggle + label{
            @apply inline-block cursor-pointer h-12 w-12 absolute top-6 right-24 rounded-full duration-300 content-[''];

        }
        #light{
            @apply inline-block cursor-pointer h-6 w-8 absolute top-2 right-24 rounded-xs duration-300 content-[''];
        }
    
        #theme-toggle:not(:checked) + label {
            @apply bg-amber-400;
        }
    
        #theme-toggle:checked + label {
            @apply bg-transparent;
            box-shadow: inset -182px -16px 1px 1px #ddd;
        }
    </style>


