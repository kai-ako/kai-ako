// Release 0
$(".bold").on("mouseover", function() {
 $( this ).css("width", "1000px",
                "opacity", "0.5")
});


// Release 1 (Rolling Stone magazine)
$('.rs-logo-big').find("img").attr(
  {src: "http://www.online-image-editor.com//styles/2014/images/example_image.png"})

// Release 2 (Rolling Stone magazine (not the super famous up and comming travel blog))
$(".primary-nav.clearfix").children().animate(
    {width: [ "toggle", "swing" ],
    height: [ "toggle", "swing" ],
    opacity: "toggle"}, 2000)

//Release 3 (Rolling Stone magazine)
$('.primary-nav.clearfix').children().on("mouseup", function(){
  $(this).append("<li>New Lunk</li>").css({color: 'white'}).on('click', function(){
    $('.rs-logo-big').find('img').attr(
      {src: "http://johngushue.typepad.com/photos/uncategorized/2007/05/05/dude_abides_tshirt.gif"})
    })
})
