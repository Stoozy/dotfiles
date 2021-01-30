console.log("Loaded js!");

function getDay(num){
    switch(num){
        case 0:
            return "Sunday"
        case 1:
            return "Monday"
        case 2:
            return "Tuesday"
        case 3:
            return "Wednesday"
        case 4:
            return "Thursday"
        case 5:
            return "Friday"
        case 6:
            return "Saturday"
        default:
            return "NA"
    }
}

var ct = new Date();
//var time = ct.getHours() + ":" + ct.getMinutes();
var hours, minutes;
if(ct.getHours()<10){
    hours = `0${ct.getHours()}`;
} else hours = ct.getHours();

if(ct.getMinutes()<10){
    minutes  = `0${ct.getMinutes()}`;
} else minutes = ct.getMinutes();

var time = hours+":"+minutes;

var time_el = document.getElementById("hm");
time_el.innerHTML = time;

var day_el = document.getElementById("day");
day_el.innerHTML = getDay(ct.getDay());

var search = document.getElementById("search");
var ddurl = "https://duckduckgo.com/?q=";
document.addEventListener('keydown', (event)=>{
    if(event.keyCode == 13 ) {
        var query = search.value; 
        var finalurl = ddurl+query;
        window.location.replace(finalurl);
    }
})



