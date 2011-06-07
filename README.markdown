An Interface to Quijotipsum.com written in Ruby
===============================================

It provides an API and a terminal command.


Installation
------------
``gem install quijotipsum_api``
$ quijotipsum paragraphs 2

Usage
-----
Requiring quijotipsum_api will add the next methods to any Fixnum:

*  QuijotipsumAPI#quijotipsum_words -> "En un lugar de la Mancha, de cuyo nombre no quiero acordarme"
*  QuijotipsumAPI#quijotipsum_paragraphs -> ["En un lugar de la Mancha, de cuyo nombre no quiero acordarme...", ...]
``
    require 'rubygems'
    require 'quijotipsum'

    puts 6.quijotipsum_words
    puts 2.quijotipsum_paragraphs
``