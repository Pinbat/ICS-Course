def log block_description, &block
  puts "Beginning \"" + block_description + "\"..."
  value = block.call
  puts "...\"" + block_description + "\" finished, returning:"
  puts value.to_s
end

log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai food!"
  end

  false
end
