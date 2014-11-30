# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/ecb_target.yaml
class Ecb_targetDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_ecb_target
{Date.civil(2013,1,1) => 'New Year\'s Day',
 Date.civil(2013,5,1) => 'Labour Day',
 Date.civil(2013,3,29) => 'Good Friday',
 Date.civil(2013,4,1) => 'Easter Monday',
 Date.civil(2013,12,25) => 'Christmas Day',
 Date.civil(2013,12,26) => 'Christmas Holiday'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ecb_target)[0] || {})[:name]
end

assert_equal 'Good Friday', Date.civil(2013,3,29).holidays(:ecb_target)[0][:name]
assert_equal 'Easter Monday', Date.civil(2013,4,1).holidays(:ecb_target)[0][:name]

  end
end
