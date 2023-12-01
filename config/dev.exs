import Config

# DO NOT make it `:debug` or all Ecto logs will be shown for indexer
config :logger, :console, level: :info

config :logger_json, :backend, level: :none

config :logger, :ecto,
  level: :debug,
  path: Path.absname("logs/dev/ecto.log")

config :logger, :error, path: Path.absname("logs/dev/error.log")

config :logger, :account,
  level: :debug,
  path: Path.absname("logs/dev/account.log"),
  metadata_filter: [fetcher: :account]

config :logger, :explorer,
  level: :debug,
  path: Path.absname("logs/dev/explorer.log"),
  # rotation every 250mb, and keep only the last 1 log file (250mb * 2 = ~500mb)
  rotate: %{max_bytes: 262_144_000, keep: 1}

config :logger, :indexer,
  level: :debug,
  path: Path.absname("logs/dev/indexer.log"),
  # rotation every 250mb, and keep only the last 1 log file (250mb * 2 = ~500mb)
  rotate: %{max_bytes: 262_144_000, keep: 1}

config :logger, :api_v2,
  level: :debug,
  path: Path.absname("logs/dev/api_v2.log"),
  # rotation every 250mb, and keep only the last 1 log file (250mb * 2 = ~500mb)
  rotate: %{max_bytes: 262_144_000, keep: 1}

config :logger, :block_scout_web,
  level: :debug,
  path: Path.absname("logs/dev/block_scout_web.log"),
  # rotation every 250mb, and keep only the last 1 log file (250mb * 2 = ~500mb)
  rotate: %{max_bytes: 262_144_000, keep: 1}
