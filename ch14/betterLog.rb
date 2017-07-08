$depth = 0

def log block_description, &block
  indent = "  " * $depth
  puts indent + "Beginning \"" + block_description + "\"..."
  $depth += 1
  value = block.call
  $depth -= 1
  puts indent + "...\"" + block_description + "\" finished, returning:"
  puts indent + value.to_s
end

log "outer block" do
  log "some little block" do
    5
  end
  log "another block" do
    "I like Thai food!"
  end
  log "yet another block" do
    7
    log "tiny block" do
      "hi"
    end
  end

  false
end
