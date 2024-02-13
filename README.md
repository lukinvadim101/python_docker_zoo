#### Docker Aliases for Easy Management
To simplify Docker command usage, add these aliases to your `.bashrc` file:

```bash

alias dcbuild='docker build  -t py_app:dev --no-cache .'
alias dirm='docker image rm py_app:dev'

alias dcu='docker compose -f docker-compose-dev.yml up -d'
alias dcps='docker compose -f docker-compose-dev.yml ps -a'
alias dcl='docker compose -f docker-compose-dev.yml logs'
alias dcd='docker compose -f docker-compose-dev.yml down'


```

Reload your `.bashrc` or open a new terminal session to activate these aliases.

#### Not Necessary, if You Want to Synchronize After Starting Containers 
To copy the `node_modules` directory from the container to your local machine, use the following command:

```bash
docker cp app:/usr/src/app/ ./app.py
```
