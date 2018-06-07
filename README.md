calc_examples
=============

## Rquirements:
* __jq__     : for parsing json arrays
* __curl__   : for contacting server
* __dialog__ : for showing dialog in terminal environment

## Setup:
Install Python 2.7 or more
Instal BAL
Change setting in the rest-forward.py accordingly


`cd quantum-switching`

`make install`

## Arguments
``` 
  -h|--help:
        Showing the help
    -n|--network
        If this option is entered, the worker process would be over net and you must enter ip and port of the worker. otherwise it is local.
    -P|--Port: port number of worker (xinetd)
        port number of worker
    -H|--Host: host address of worker (xinetd)
        host address of worker
    -p|--qport: 
        This option indicate port number of the rest-forward app. Usually, It is 8080.
    -I|--Input method: 
        enter G for GUI, and T for TUI. IMPORTANT: THIS OPTION SHOULD BE THE LAST ONE SINCE THERE IS NO THREAD.
```

## Example
Here is the example command to run. It is assumed that the `rest-forward` program is listening on port `8080` and the internal port for communication with the network core is `9090`. (If you do not know what is the -P option, just enter the 9090 as default vale.)


`LANG=fa_IR.UTF-8 qswitch -n -P 9090 -H localhost -p 8080`

