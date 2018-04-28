document.addEventListener("turbolinks:load", function(){
    $input = $("[data-behavior='autocomplete']")


    var options = {
        getValue: "name",
        url: function(phrase)
        {
            return "/search.json?q=" + phrase;
        },
        categories: [
            {
                listLocation: "products",
                header: "<strong style='color: #6a7fff'>Раздел Новостей</strong>",
            },

            {
                listLocation: "for_man",
                header: "<strong style='color: rgba(209,221,27,0.68)'>Раздел для Мужчин</strong>",
            },

            {
                listLocation: "for_woman",
                header: "<strong style='color: rgba(221,51,68,0.68)'>Раздел для Женщин</strong>",
            }

        ], theme: "dark",
        list: 	{
            onChooseEvent: function()
            {
                var url = $input.getSelectedItemData().url
                $input.val("")
                Turbolinks.visit(url)
                // console.log(url)
            }
        }
    }
    $input.easyAutocomplete(options)
}
);

