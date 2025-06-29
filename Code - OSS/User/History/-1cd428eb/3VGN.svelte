<style>
    #scrollAnimation{
        width:100%;
        height:100%;
        position: relative;
    }
    #expandingText{
        width:0%;
        height: auto;
        position: absolute;
    }
</style>
<div class=" m-3">
<h1>Welcome!</h1>
<div id="text-block" class="pl-10 pt-4">
    <p>
        Here lies the wit and whim of a computer science major.
    </p>
    <br>
    <p>
        The styling and theme of this webpage may vary drastically, and may trigger seizures. Discretion is advised.
    </p>
    <br>
<div id="scrollAnimation">
    <div id="expandingText"><p>TextTextTextTextTextTextTextTextTextTextTextTextTextTextText<br>TextTextTextTextTextTextTextTextText</p></div>
</div>
    
</div>
</div>
<script>
    let lastKnownScrollPosition = 0;
    let ticking = false;

    function expandText(pos =0){

        var text = document.getElementById("expandingText");
        if(text){text.style.width=pos+'%';}

    }

    document.addEventListener("scroll", (event) => {
    lastKnownScrollPosition = window.scrollY;

    if (!ticking) {
        window.requestAnimationFrame(() => {
        expandText(lastKnownScrollPosition);
        ticking = false;
        });

        ticking = true;
    }
    });

</script>