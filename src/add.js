console.log(JSON.stringify({
  time: Date.now(),
  file: String(process.argv[2]),
  found: JSON.parse(String(process.argv[3]))
}))
