require 'trie'

class WordSearch

  attr_reader :db
  attr_reader :filter

  # Create a word searcher.
  #
  # @param [Array] Filter to only words that start with letters in this array.
  def initialize(filter = nil)
    @db = Trie.new
    @filter = filter
  end

  def init
    File.read("words.txt").split("\n").each do |word|

      word.downcase!
      next unless (@filter && @filter.any?{|l| word.start_with?(l) } )

      (1..word.size).to_a.each do |r|
        prefix = word.slice(0,r)
        @db.push( prefix, word)
      end
    end
    nil
  end

  def search(target)
    @db.wildcard(target + '*').map{|k| @db[k]}.slice(0,10).select{|w| w.start_with?(target) }
  end
end
