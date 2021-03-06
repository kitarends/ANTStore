<div class="ui divider" style="margin-top: 20px"></div>
<div style="background: black;padding-top:10px;padding-bottom: 50px">
    <div class="ui container">
        <div class="ui inverted secondary menu stackable three column grid">
            <div class="column">
                <p class="ui dividing header item"><strong>Copyright</strong></p>
                <p class="item"> ANTStore © 2018. All Rights Reserved.</p>
            </div>
            <div class="column">
                <p class="ui dividing header item"><strong>Contact</strong></p>
                <p class="item" >Email: {{Setting::get('email','not_set@gmail.com')}}</p>
                <p class="item" >Phone: {{Setting::get('phone','000000')}}</p>
            </div>
            <div class="column">
                <p class="ui  dividing header item"><strong>More links</strong></p>
                @foreach(Setting::get('more_links',[]) as $label=>$link)
                    <a class="item" href="{{$link}}">{{$label}}</a>
                @endforeach
            </div>
        </div>
        <h1 style="color: white;text-align: center">
            <span style="border: solid 2px white;padding: 10px">ANTStore.shop</span></h1>
    </div>
</div>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-118994300-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-118994300-1');
</script>
