require 'rubygems'
require 'thor'
require 'lipsum'

class QuijotipsumApp < Thor

  map 'p' => :paragraphs
  map 'w' => :words

  desc "paragraphs AMOUNT", "Downloads an AMOUNT of paragraphs from Quijotipsum.com"
  def paragraphs(amount=0)
    amount.quijotipsum_paragraphs if amount > 0
  end

  desc "words AMOUNT", "Downloads an AMOUNT of words from Quijotipsum.com"
  method_options  :start_with_lorem, :type => :boolean
  def words(amount=0)
    amount.lquijotipsu_words if amount > 0
  end
end