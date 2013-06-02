// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

if (jQuery) {  
    // jQuery is loaded  
   $(".role").change(function() {
     var role = $(this).val();
         user_id = $(this).closest('input').val();
    
     $.post('/users/change-role', {role_id: role, id: user_id}, function(data) {
 	alert("Role changed");
     });
   });

   $(".article-status").change(function() {
     var status = $(this).val();
         article_id = $(this).closest('input').val();
    
     $.post('/articles/publish', {id: article_id, status: "puclished"}, function(data) {
 	alert("Status changed");
     });
   });
} else {
    // jQuery is not loaded
}
