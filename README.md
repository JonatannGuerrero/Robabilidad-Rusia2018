# Robabilidad-Rusia2018
Programa que calcula la probabilidad de las eliminatorias a Rusia 2018, una vez jugada la fecha 15 de la eliminatoria
###Sequence Diagram
                    
```seq
Andrew->China: Says Hello 
Note right of China: China thinks\nabout it 
China-->Andrew: How are you? 
Andrew->>China: I am good thanks!
``` "Codigo de pruebas"

Code Blocks (Preformatted text):

    | First Header  | Second Header |
    | ------------- | ------------- |
    | Content Cell  | Content Cell  |
    | Content Cell  | Content Cell  |
#### Example

```javascript
(function() {

    var factory = function (exports) {

		var $ = jQuery;           // if using module loader(Require.js/Sea.js).

		exports.customMethod = function() {
		    //....
		};

		exports.fn.youPluginName = function() {
		    /*
			var _this       = this; // this == the current instance object of Editor.md
			var lang        = this.lang;
			var settings    = this.settings;
			var editor      = this.editor;
			var cursor      = cm.getCursor();
			var selection   = cm.getSelection();

			cm.focus();
            */

			//....
		};

	};

	// CommonJS/Node.js
	if (typeof require === "function" && typeof exports === "object" && typeof module === "object")
    {
        module.exports = factory;
    }
	else if (typeof define === "function")  // AMD/CMD/Sea.js
    {
		if (define.amd) { // for Require.js

			define(["editormd"], function(editormd) {
                factory(editormd);
            });

		} else { // for Sea.js
			define(function(require) {
                var editormd = require("./../../editormd");
                factory(editormd);
            });
		}
	} 
	else
	{
        factory(window.editormd);
	}

})();
``` 