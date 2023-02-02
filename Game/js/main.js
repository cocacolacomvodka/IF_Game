"use strict";

// DECLARATION (VARIABLES)

const links = document.querySelectorAll('.header ul a');            // PEGA O ELEMENTO {HEADER UL A}
var topo = document.querySelector('.button-fixed');
var topContainer1 = document.querySelector('div.top-container-1');
var socialMidias = document.querySelector('div.social-midias');
var iconMenuMobile = document.querySelector('i.menu-icon-mobile');
var header = document.querySelector('header.header');
var logoContainer = document.querySelector('div.logoHeader');
var menuMobileContainer = document.querySelector('nav#menu-mobile-container');
var itensMobile = document.querySelector('div#itens-mobile-none');
var bar1 = document.querySelectorAll('span.bar')[0];
var bar2 = document.querySelectorAll('span.bar')[1];
var imgGalerry = document.querySelector('img.img-galerry');
var iconBarLeft = document.querySelector('i.icon-bar-left');
var iconBarRight = document.querySelector('i.icon-bar-right');
var aboutTitle = document.querySelectorAll('div.text-titulo-2')[0];
var galerryTitle = document.querySelectorAll('div.text-titulo-2')[1];
var articleTitle = document.querySelectorAll('div.text-titulo-2')[2];
var textCorpo1 = document.querySelector('div.text-corpo-1');
var imgContainer2 = document.querySelector('img.img-container-2');
var contactTitulo1 = document.querySelectorAll('fieldset.text-titulo-3')[0];
var contactTitulo2 = document.querySelectorAll('fieldset.text-titulo-3')[1];
var boxContainerContact1 = document.querySelectorAll('div.box-container-2')[0];
var boxContainerContact2 = document.querySelectorAll('div.box-container-2')[1];
var boxLog = document.querySelector('div.box-log');
var boxCad = document.querySelector('div.box-cad');
var footerCopy = document.querySelector('article.footer-copy');
var articleArr = [];
var formArr = [];
var footerArr = [];
var containerFormArr = [];
var contIcon=0;

// EVENTS

for(let i=0; i<2; i++){
    formArr.push(document.querySelectorAll('form.form-login')[i]);
    footerArr.push(document.querySelectorAll('article.footer-text')[i]);
    containerFormArr.push(document.querySelectorAll('div.container-body-5')[i]);
}

for(let i=0; i<5; i++){
    articleArr.push(document.querySelectorAll('div.article-box')[i]);
}

for (let link of links) {                                           // FAZ UM FOR PARA PERCORRER TODOS OS ("A" ou seja, "LINKS") DENTRO CONTAINER HEADER
    link.addEventListener("click", NavLinks);                       // SELECIONA O LINK CLICADO PELO USER
}

topo.addEventListener('click', ScrollToTop);

window.addEventListener("scroll", OnScroll);

iconMenuMobile.addEventListener('click', MenuMobileVersion);

window.addEventListener('resize',tamanhoDiv);

// FUNCTIONS

function NavLinks(e){                                               // REALIZA A FUNÇÃO DE IR ATÉ O PONTO LOCALIZADO A PARTIR DE UM ID
    e.preventDefault();                                             // CACELA QUALQUER HREF QUE O LINK POSSA TER, BASICAMENTE, NÃO DIRECIONA PARA LUGAR NENHUM
    const href = this.getAttribute("href");                         // CRIA UMA CONSTANTE HREF E OBTEM O ATRIBUTO HREF DO MENU
    const offsetTop = document.querySelector(href).offsetTop;       // CRIA UM ELEMENTO OFFSETTOP COM O HREF ACIMA INSTANCIANDO O MESMO OBJETO

    scroll({                                                        //  FAZ COM QUE AS PROPRIEDADES DO SCROLL AO SER CLICADO SEJAM ESSAS
      top: offsetTop,                                               //  FAZ O SCROLL DO USER IR ATÉ O ELEMENTO DA PAGINA A PARTIR DO CLICK
      behavior: "smooth"                                            //  DA UMA ANIMAÇÃO DE SUAVIDADE QUANDO O SCROOL É ROLADO ATÉ O DETALHE
    });   

    iconMenuMobile.setAttribute('class','fas fa-bars menu-icon-mobile');
    header.setAttribute('class','header');
    itensMobile.setAttribute('id','itens-mobile-none');
    logoContainer.style.display = "flex";
    iconMenuMobile.style.fontSize = "35px";
    contIcon--;
}

function OnScroll(){            
    // REALIZA UMA FUNÇÃO DE DESAPARECIMENTO DO BOTÃO "TO TOP"
    if((window.scrollY <= 500) || (window.scrollY === 0)){                                      // SE O SCROLL FOR MENOR OU IGUAL A 700 PX ELE DESAPARECE
        topo.style.display = "none";
    } else {                                                         // SE NÃO, ELE FICA VISIVEL
        topo.style.display = "block";
    }

    // console.log(window.scrollY);

    if(window.scrollY < 10){
        topContainer1.style.animation = "leftToCenter 300ms ease-in";
        topContainer1.style.opacity = "1";
    } else {                                                        
        topContainer1.style.animation = "centerToLeft 400ms ease-out";
        topContainer1.style.opacity = "0";
    }

    if(window.scrollY >= 100 && window.scrollY < 117){
        socialMidias.style.opacity = "0";
    } else if(window.scrollY >= 190 && window.scrollY <= 792){                                                        
        socialMidias.style.animation = "bottomToCenter 400ms ease-in";
        socialMidias.style.opacity = "1";
    } else {
        socialMidias.style.animation = "centerToBottom 400ms ease-out";
        socialMidias.style.opacity = "0";
    }

    if(window.scrollY >= 600){
        aboutTitle.style.animation = "showAtWindow 800ms ease-in";
        aboutTitle.style.visibility = "visible";

        textCorpo1.style.animation = "leftToCenter 800ms ease-in";
        textCorpo1.style.visibility = "visible";

        imgContainer2.style.animation = "rightToCenter 800ms ease-in";
        imgContainer2.style.visibility = "visible";
    }
    
    if(window.scrollY >= 1500){
        galerryTitle.style.animation = "showAtWindow 800ms ease-in";
        galerryTitle.style.visibility = "visible";

        bar1.style.animation = "leftToCenter 1s ease-in";
        bar1.style.visibility = "visible";

        imgGalerry.style.animation = "showAtWindow 800ms ease-in";
        imgGalerry.style.visibility = "visible";

        bar2.style.animation = "rightToCenter 1s ease-in";
        bar2.style.visibility = "visible";
    }

    if(window.scrollY >= 2100){
        contactTitulo1.style.animation = "showAtWindow 1s ease-in";
        contactTitulo1.style.visibility = "visible";

        boxContainerContact1.style.animation = "leftToCenter 1s ease-in";
        boxContainerContact1.style.visibility = "visible";

        contactTitulo2.style.animation = "showAtWindow 1s ease-in";
        contactTitulo2.style.visibility = "visible";

        boxContainerContact2.style.animation = "rightToCenter 1s ease-in";
        boxContainerContact2.style.visibility = "visible";

    }

    if(window.scrollY >= 3200){
        articleTitle.style.animation = "showAtWindow 1s ease-in";
        articleTitle.style.visibility = "visible";

        for(let i=0; i<5; i++){
            articleArr[i].style.animation = "topToCenter 1s ease-in";
            articleArr[i].style.visibility = "visible";
        }
    }

    if(window.scrollY >= 4500){
        formArr[0].style.animation = "rightToCenter 1s ease-in";
        formArr[0].style.visibility = "visible";
        boxLog.style.animation = "showAtWindow 1s ease-in";
        boxLog.style.visibility = "visible";
    }

    if(window.scrollY >= 5000){
        formArr[1].style.animation = "leftToCenter 1s ease-in";
        formArr[1].style.visibility = "visible";
        formArr[1].style.textAlign = "right";
        boxCad.style.animation = "showAtWindow 1s ease-in";
        boxCad.style.visibility = "visible";
    }

    if(window.scrollY >= 5900){
        footerArr[0].style.animation = "bottomToCenter 1s ease-in";
        footerArr[0].style.visibility = "visible";

        footerArr[1].style.animation = "bottomToCenter 1.5s ease-in";
        footerArr[1].style.visibility = "visible";

        footerCopy.style.animation = "showAtWindow 1s ease-in";
        footerCopy.style.visibility = "visible";
    }
}

function ScrollToTop(){                                             // FUNÇÃO PARA O BOTÃO IR PARA O TOPO
    window.scroll({top:0, behavior: "smooth"});
}

function MenuMobileVersion(){
    if(contIcon === 0){     
        iconMenuMobile.setAttribute('class','fas fa-times menu-icon-mobile');
        header.setAttribute('class','header-mobile');
        itensMobile.setAttribute('id','itens-mobile-block');
        logoContainer.style.display = "none";
        iconMenuMobile.style.fontSize = "40px";
        contIcon++;
    } else {
        iconMenuMobile.setAttribute('class','fas fa-bars menu-icon-mobile');
        header.setAttribute('class','header');
        itensMobile.setAttribute('id','itens-mobile-none');
        logoContainer.style.display = "flex";
        iconMenuMobile.style.fontSize = "35px";
        contIcon--;
    }
}

function tamanhoDiv(){
    if(screen.width > 830){
        iconMenuMobile.setAttribute('class','fas fa-bars menu-icon-mobile');
        header.setAttribute('class','header');
        itensMobile.setAttribute('id','itens-mobile-none');
        logoContainer.style.display = "flex";
        iconMenuMobile.style.fontSize = "35px";
        contIcon=0;
    }

    if(screen.width <= 330){
        iconBarLeft.setAttribute('class','fas fa-chevron-up icon-bar-left');
        iconBarRight.setAttribute('class','fas fa-chevron-down icon-bar-right');

        containerFormArr[0].style.height = "80vh";
        containerFormArr[1].style.height = "140vh";
    }else{
        iconBarLeft.setAttribute('class','fas fa-chevron-left icon-bar-left');
        iconBarRight.setAttribute('class','fas fa-chevron-right icon-bar-right');

        containerFormArr[0].style.height = "100vh";
        containerFormArr[1].style.height = "140vh";
    }
}

var contImg=1;

bar2.addEventListener('click',function(){
    contImg++;
    if(contImg <= 3){  
        // imgGalerry.style.animation = "rightToCenter 1s linear";        
        imgGalerry.setAttribute('src','imagens/screenshot_game_'+contImg+'.jpg');
    } else {
        contImg=1;
        // imgGalerry.style.animation = "rightToCenter 1s linear"; 
        imgGalerry.setAttribute('src','imagens/screenshot_game_'+contImg+'.jpg');    
    }
    // imgGalerry.style.animation = "none";  
});

bar1.addEventListener('click',function(){
    if(contImg===1){
        contImg=3;
        imgGalerry.setAttribute('src','imagens/screenshot_game_'+contImg+'.jpg');
        imgGalerry.style.animation = "";
    } else {
        contImg--;
        imgGalerry.setAttribute('src','imagens/screenshot_game_'+contImg+'.jpg');
        imgGalerry.style.animation = "";
    }
});

// function showLogo(){
//     topContainer1.style.display = "flex";
//     topContainer1.style.animation = "showInWindow 500ms ease-in";
// }