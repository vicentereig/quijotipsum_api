An Interface to Quijotipsum.com written in Ruby
===============================================

(IT'S NOT WORKING YET... it's lunch time by the time I'm committing this thingy!)

It provides an API and a terminal command.


Installation
------------
``gem install quijotipsum_api``


Usage
-----
Requiring quijotipsum_api will add the next methods to any Fixnum:

*  QuijotipsumAPI#lipsum_words -> "En un lugar de la Mancha, de cuyo nombre no quiero acordarme"
*  QuijotipsumAPI#lipsum_paragraphs -> ["En un lugar de la Mancha, de cuyo nombre no quiero acordarme...", ...]

    require 'rubygems'
    require 'quijotipsum'

    puts 6.quijotipsum_words
    puts 2.quijotipsum_paragraphs