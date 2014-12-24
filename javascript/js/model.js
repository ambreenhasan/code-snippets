var Model = {
  calculateResults: function() {
    var input = document.getElementsByTagName("input");
    var result = 0

    for (var i = 0; i < input.length; i++) {
      if (input[i].checked && input[i].defaultValue == "1") {
        result++;
      }
    };
    return result
  }
}

