// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require lib/underscore
//= require lib/underscore-strings
//= require lib/backbone
//= require lib/backbone.marionette
//= require lib/moment.min
//= require lib/moment.timezone.min
//= require jquery_ujs
//= require turbolinks
//= require_tree ./config
//= require ./backbone/app

//= require_tree ./backbone/entities
//= require_tree ./backbone/apps

//$(document).ready(function(){
////    $(window).hashchange(hashchanged);
//
//    $(window).on('hashchange', hashchanged);
//
//    function hashchanged(){
//        var url_split = $(location).attr('href').split("#")[1]
//        $("li").removeClass("active")
//        switch (url_split) {
//            case "about":
//                $("li.about").addClass("active")
//                break;
//            case "like":
//                $("li.like").addClass("active")
//                break;
//            case "others":
//                $("li.others").addClass("active")
//                break;
//        }
//    }
//});