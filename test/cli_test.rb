require 'test_helper'

class CLI < Minitest::Test
  def setup
    @cli = Miniman::CLI.new
  end

  def test_cli_output
    assert_equal "cli", @cli.output
  end

  def teardown
  end
end
