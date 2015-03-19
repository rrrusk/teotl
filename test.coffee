f = ""

switch
  when (/^./).test(f)
    console.log "."
  when (/^a/).test(f)
    console.log "a"
