# statics server

This program serves files from the location it is run.

Going to http://localhost:80/ will give you an index of the files.

Ideal for local webdevelopment.

## commandline arguments

**-dir** can be used to specify a specific directory, absolute or relative. By default content is served from where the program is executed. Double click on mac-os executes it from the ~ user directory. Run the application from the terminal to have reliable results.

**-port** can be used to specify a specific port to use. The default port is 80.

e.g. ```./statics-server.exe "-dir=statics" "-port=2000"```