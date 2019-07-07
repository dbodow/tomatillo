# tomatillo
A pomodoro app backed by Phoenix LiveView

## Dev Setup

### Non-NixOS
The project contains a `.tool-versions` file describing all required languages and versions via [asdf](https://asdf-vm.com/#/core-manage-asdf-vm?id=install-asdf-vm). 

```
# Get any branch of asdf and update it to the latest version.
# asdf will manage installing the correct versions of every language we need.
which asdf || git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.2
asdf update

# Install the asdf plugins for the languages we need.
# We need Elixir of course since this is a Phoenix project,
# and we need Erlang because Elixir is built on it.
# We need Node because Phoenix will use webpack to bundle static assets.
asdf plugin-add elixir
asdf plugin-add erlang
asdf plugin-add nodejs
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# Install the project's language versions.
asdf install

# Get the latest version of Hex package manager.
# This will manage installation of Elixir libraries.
mix local.hex

# Install Phoenix framework globally for this Elixir version
# (will provide application generators & tooling)
mix archive.install hex phx_new 1.4.9
```

Install Postgres 11.4 for whichever system you prefer via the [official documentation](https://www.postgresql.org/download/), or just [pull a conatiner](https://hub.docker.com/_/postgres) and map it to port 5432. Postgres will be the database for the app.

Install `inotify-tools`, which will allow Phoenix to live-reload code.
Installation instructions are maintained [here](https://github.com/rvoicilas/inotify-tools/wiki).
[Hot loading code](https://blog.appsignal.com/2018/10/16/elixir-alchemy-hot-code-reloading-in-elixir.html) is one of the coolest benefits about Elixir.

### With NixOS
TBD

## Resources
- [asdf Extensible Version Manager](https://asdf-vm.com/#/core-manage-asdf-vm)
- [Elixir Documentation](https://hexdocs.pm/elixir/Kernel.html)
- [Phoenix Framework Documentation](https://hexdocs.pm/phoenix/overview.html)