defmodule Accent.GraphQL.Types.Lint do
  use Absinthe.Schema.Notation

  enum :lint_check do
    value(:leading_spaces)
    value(:double_spaces)
    value(:first_letter_case)
    value(:three_dots_ellipsis)
    value(:same_trailing_character)
    value(:trailing_space)
    value(:placeholder_count)
    value(:url_count)
  end

  object :lint_translation_message_replacement do
    field(:value, non_null(:string))
    field(:label, non_null(:string))
  end

  object :lint_translation_message do
    field(:text, non_null(:string))
    field(:check, non_null(:lint_check))
    field(:replacement, :lint_translation_message_replacement)
  end
end
