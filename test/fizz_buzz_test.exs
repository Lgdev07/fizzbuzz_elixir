defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid input is submitted, retuns the converted list" do
      expected_result = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_result
    end

    test "when a invalid input is submitted, retuns the error" do
      expected_result = {:error, "Erro ao ler arquivo, mensagem: enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_result
    end
  end
end
