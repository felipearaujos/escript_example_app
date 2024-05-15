defmodule ExampleApp.CLI do
  def main(args) do
    IO.puts("my args #{args}")

    input =
      case args do
        [] ->
          # Read input from stdin
          input = IO.read(:stdio, :all)

        input ->
          # Use input provided as argument
          input
      end

    # Process the input
    processed_input = process_input(input)

    # Output the processed result
    IO.puts(processed_input)
  end

  defp process_input(input) do
    # Your processing logic goes here
    # For simplicity, let's just convert input to uppercase
    IO.puts(" processing ")
    input
  end
end
