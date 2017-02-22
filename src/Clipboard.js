"use strict";

exports.clipboard = function(element) {
  return function (text) {
    return function() {
      return new Clipboard(element, {
        text: text,
      })
    }
  }
}

exports.destroy = function(clipboard) {
  return function () {
    clipboard.destroy()
  }
}
