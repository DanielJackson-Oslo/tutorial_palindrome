# frozen_string_literal: true

require "test_helper"

class DanieljacksonLearningPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DanieljacksonLearningPalindrome::VERSION
  end

  def test_simple_palindrome
    assert "racecar".palindrome?
    refute "apple".palindrome?
  end

  def test_casing_palindrome
    assert "RaceCar".palindrome?
    refute "RaceCars".palindrome?
  end

  def test_int_palindrome
    assert 131.palindrome?
    refute 551.palindrome?
  end

  def test_float_palindrome
    assert 131.131.palindrome?
    refute 131.515.palindrome?
  end

  def test_punctuation_palindrome
    assert "-racecar!".palindrome?
    refute "-apple!".palindrome?
  end

  def test_that_utf_8_palindrome_works
    assert "åæå".palindrome?
    refute "ååaa".palindrome?
  end

  def test_complex_palindromes
    assert "Madam, I’m Adam.".palindrome?
    assert "A man, a plan, a canal — Panama!".palindrome?
  end

end
