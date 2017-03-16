# micro-docker-bug

A contrived example which demonstrates the inability to run `micro` services via Docker.

## Try it

```
$ docker build -t foo .
$ docker run -it -p 3000:3000 foo
```

## Output

```
∴ docker run -it -p 3000:3000 foo
npm info it worked if it ends with ok
npm info using npm@3.10.3
npm info using node@v6.5.0
npm info lifecycle @~prestart: @
npm info lifecycle @~start: @

> @ start /app
> micro --port 5000


   ┌────────────────────────────────────────────────┐
   │                                                │
   │   Micro is running!                            │
   │                                                │
   │   • Local:            http://localhost:5000    │
   │   • On Your Network:  http://172.17.0.2:5000   │
   │                                                │
   │   Copied local address to clipboard!           │
   │                                                │
   └────────────────────────────────────────────────┘


npm info lifecycle @~start: Failed to exec start script
npm ERR! Linux 4.9.12-moby
npm ERR! argv "/usr/local/bin/node" "/usr/local/bin/npm" "start"
npm ERR! node v6.5.0
npm ERR! npm  v3.10.3
npm ERR! code ELIFECYCLE
npm ERR! @ start: `micro --port 5000`
npm ERR! Exit status 141
npm ERR!
npm ERR! Failed at the @ start script 'micro --port 5000'.
npm ERR! Make sure you have the latest version of node.js and npm installed.
npm ERR! If you do, this is most likely a problem with the  package,
npm ERR! not with npm itself.
npm ERR! Tell the author that this fails on your system:
npm ERR!     micro --port 5000
npm ERR! You can get information on how to open an issue for this project with:
npm ERR!     npm bugs
npm ERR! Or if that isn't available, you can get their info via:
npm ERR!     npm owner ls
npm ERR! There is likely additional logging output above.

npm ERR! Please include the following file with any support request:
npm ERR!     /app/npm-debug.log
```
