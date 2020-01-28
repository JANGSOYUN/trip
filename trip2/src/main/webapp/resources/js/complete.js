$(function() {

    var availableCity = ["서울","부산","대구","광주","울산","인천","대전",
       "경기도", "강원도", "충청도", "경상도", "전라도", "제주도"];

    $("#city").autocomplete({
        source: availableCity,
        select: function(event, ui) {
            console.log(ui.item);
        },
        focus: function(event, ui) {
            return false;
        }
    });
});