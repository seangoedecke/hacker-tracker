# hacker-tracker

Track how your story is doing on hacker news. This little Ruby script will poll the HN api for your story's rank and notify you  - by printing to stdout and saying the new number - when your story goes _up_. Your story must be in the top stories for this to work.

## Installation

Clone the repo or copy `ht.rb`. Make sure you have Faraday installed (`gem install faraday`). You'll also need the json gem if you don't already have it.

## Usage

Run `ruby ht.rb 12345`, where `12345` is the id of the HN story you want to track. If you don't know how to find the id, you can see it in the URL.
