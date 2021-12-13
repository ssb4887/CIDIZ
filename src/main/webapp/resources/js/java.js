window.addEventListener('load', function(){
    var navBox = document.getElementsByClassName('navBox')[0];

    for(var i = 0; i < navBox.children.length; i++){
        if(navBox.children[i].tagName == 'UL'){
            var navBoxUl = navBox.children[i];
        }
        else if(navBox.children[i].tagName == 'A'){
            var handle = navBox.children[i];
        }
    }
    handle.addEventListener('click', function(e){
        e.preventDefault();
        navBoxUl.classList.toggle('on');
    });
});