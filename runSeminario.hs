import Sound.Tidal.Context

main = do
  putStrLn "Starting TidalCycles..."
  tidal <- startTidal (superdirtTarget {oLatency = 0.1, oAddress = "127.0.0.1", oPort = 57120}) defaultConfig
  putStrLn "Loading Tidal file..."
  (putStrLn =<<) . readFile $ "seminario.tidal"
