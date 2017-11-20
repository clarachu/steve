=begin
song {Mary had a little lamb}
time-sig {4/4}
key-sig {C+}
tempo {60bpm}
let a [{{c4 1} {c4 1}  {dynamic piano} {g4 1} {g4 1}}
	  {{c3 1} {dynamic forte} {c3 1} {g3 1} {g3 1}}]

write {a a}

=end

class ExpressionParser
  def initialize(expression)
    @tokens = expression.scan /[{}]|\w+|".*?"|'.*?'/
  end

  def peek
    @tokens.first
  end

  def next_token
    @tokens.shift
  end

  def parse
    if (token = next_token) == '('
      parse_list
    elsif token =~ /['"].*/
      token[1..-2]
    elsif token =~ /\d+/
      token.to_i
    else
      token.to_sym
    end
  end

  def parse_list
    list = []
    list << parse until peek == ')'
    next_token
    list
  end
end