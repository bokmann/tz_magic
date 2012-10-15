require 'test_helper'

class TzMagicTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, TzMagic
  end

  test "getting main#index shoudl redirect to tx_magic#new" do
    assert true
  end

end
