let Wrapper = document.getElementById("Wrapper");

Wrapper.addEventListener("focus", function (event) {
    event.target.style.background = "lightblue";
},
    true
);

Wrapper.addEventListener("blur", function (event) {
    event.target.style.background = "";
},
    true
);