# encoding: UTF-8
class ParserController < ApplicationController
  # для получения контента через http
  require 'open-uri'

  require 'nokogiri'

  def index
    url = params[:url]
    url ||= 'https://www.google.com/'
    url.strip!
    regular =   /^<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)$/


    @doc = Nokogiri::HTML(open(url))
    @doc = @doc.to_s
    @doc = @doc.force_encoding("UTF-8")
    @doc = @doc.scan(regular)

  end

  # start = Time.now
  # finish = Time.now
end
