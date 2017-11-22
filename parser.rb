=begin
song {Mary had a little lamb}
time-sig {4/4}
key-sig {C+}
tempo {60bpm}
let a [{{c4 1} {c4 1}  {dynamic piano} {g4 1} {g4 1}}
	  {{c3 1} {dynamic forte} {c3 1} {g3 1} {g3 1}}]

write {a a}

=end
require 'player'
class ExpressionParser

  def initialize(filename)
          data = ''
          f = File.open(filename, "r")
          f.each_line do |line|
              data += line
        end
        @tokens = data.scan /[{}]|\w+|".*?"|'.*?'/
  end

  def peek
    @tokens.first
  end

  def next_token
    @tokens.shift
  end
  
  def findFreq(s)
      h = {"c4" => 261.6, "d4" => 293.665, "e4" => 329.628, "f4" =>349.228, "g4" =>392.00, "a4" =>440}
      h[s]
    end

  def parse
    if (token = next_token) == '{'
      :play parse_list
    elsif token =~ /['"].*/
      token[1..-2]
    elsif token =~ /\w\d/
          findFreq(token.to_str)
    elsif token =~ /\d+/
          token.to_f * 0.25
       else
      token.to_sym
    end
  end
  
  def parse_list
      list = []
    list << parse until peek == '}'
    next_token
    list
    parsed = []
    list.each do |(a,b)|
        puts "#{a} #{b}"
    end
    list
    end
end
  
