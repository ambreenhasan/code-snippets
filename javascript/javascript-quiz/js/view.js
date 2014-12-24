// the view will display the results

var View = {
  renderResult: function(result) {
    document.getElementById("questions").innerHTML = " ";
    var resultDiv = document.createElement("div");
    resultDiv.className += " result";
    document.getElementById("questions").appendChild(resultDiv);

    var taglineDiv = document.createElement("div");
    taglineDiv.className += " tagline";
    document.getElementById("questions").appendChild(taglineDiv);

    if (result == 5) {
      var tagline = "Oh you a badass."
    } else if (result >= 3) {
      var tagline = "You kinda a badass."
    } else if (result <= 2) {
      var tagline = "You ain't an English major"
    }

    var message = "Your score was " + result + " out of 5.";

    resultDiv.innerHTML = message;
    taglineDiv.innerHTML = tagline;
  }
}