# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    # IMPLEMENT THIS METHOD
    # Convert string to bytes and join to form an integer
    result = 0
    # Loop through each byte in string and convert to integer
    str.bytes.each do |byte|
      # Shift result to the left by 8 bits and add byte
      result = (result << 8) + byte
    end
    result
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  # packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    # IMPLEMENT THIS METHOD
    # Convert integer to bytes and join to form a string
    strs = []
    # Loop through integer and convert to bytes
    while packed.positive?
      # Add byte to front of array
      strs.unshift((packed & 0xFF).chr)
      # Shift integer to the right by 8 bits
      packed >>= 8
    end
    strs.join
  end
end
