class Trie

    attr_accessor :map_of_children, :end_of_word
    def initialize()
        @map_of_children = {}
        @end_of_word = false
    end


    # Inserts a word into the trie.
    # :type word: String
    # :rtype: Void

    def insert(word)
        trie_ptr = self
        word.each_char.with_index do |ch, idx|
            if !trie_ptr.map_of_children[ch]
                trie_ptr.map_of_children[ch] = Trie.new
            end
            if idx == word.length-1
                trie_ptr.map_of_children[ch].end_of_word = true
            end
            trie_ptr = trie_ptr.map_of_children[ch]
        end
    end

    # Returns if the word is in the trie.
    # :type word: String
    # :rtype: Boolean

    def search(word)
        trie_ptr = self
        word.each_char do |ch|
            if !trie_ptr.map_of_children[ch]
                return false
            end
            trie_ptr = trie_ptr.map_of_children[ch]
        end
        trie_ptr.end_of_word
    end



    # Returns if there is any word in the trie that starts with the given prefix.
    # :type prefix: String
    # :rtype: Boolean

    def starts_with(prefix)
        trie_ptr = self
        prefix.each_char do |ch|
            if !trie_ptr.map_of_children[ch]
                return false
            end
            trie_ptr = trie_ptr.map_of_children[ch]
        end
        return true
    end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)