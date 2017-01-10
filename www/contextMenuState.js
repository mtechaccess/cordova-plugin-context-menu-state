var ContextMenuState = {

  hide: function(success, error) {
    cordova.exec(
      success,
      error,
      "ContextMenuState",
      "hide",
      []
    );
  }

};

module.exports = ContextMenuState;
