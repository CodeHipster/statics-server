#statics server
---------------

This program serves files from the location it is run.

Going to http://localhost:3000/ will give you an index of the files.

Ideal for local webdevelopment.

## commandline arguments
---------------

**-dir** can be used to specify a specific directory, absolute or relative. By default content is served from where the program is executed.

**-port** can be used to specify a specific port to use. The default port is 80.

e.g. ```./statics-server.exe "-dir=./html" "-port=2000"```