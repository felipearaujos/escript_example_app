# Dockerfile

FROM elixir:1.13.3-alpine

RUN mkdir /app

WORKDIR /app

# Installs hex, rebar
RUN mix local.hex --force && \
    mix local.rebar --force

# Elixir's dependencies
COPY mix.exs ./
RUN mix deps.get
RUN mix deps.compile

# Compilation and release
COPY . .
ENV MIX_ENV prod
RUN mix compile
RUN mix escript.build

ENTRYPOINT [ "./example_app" ]
