<script>
    window.onload =function() {setLight()};
    function setLight(){
        let dark = $state(false);
    }
    function toggle() {
        window.document.body.classList.toggle('dark-mode')
    }
</script>
<div>
    <input onclick={toggle} type="checkbox" id="theme-toggle" />
    <label for="theme-toggle"></label>
    <button onclick={toggle}>
    {@render parent()}
    
</button>
</div>
    
<style lang="postcss">
    @reference "tailwindcss";
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


