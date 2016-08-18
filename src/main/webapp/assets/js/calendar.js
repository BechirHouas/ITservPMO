$(document).ready(function() {
// Datepicker Popups calender to Choose date.
$(function() {
$("#datepicker").datepicker();
// Pass the user selected date format.
$("#datepicker").datepicker("option", "dateFormat", "yy-mm-dd");

$("#datepicker1").datepicker();
// Pass the user selected date format.
$("#datepicker1").datepicker("option", "dateFormat", "yy-mm-dd");
$("#datepicker2").datepicker();
// Pass the user selected date format.
$("#datepicker2").datepicker("option", "dateFormat", "yy-mm-dd");
});
});