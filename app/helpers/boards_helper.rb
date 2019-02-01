module BoardsHelper
  extend self
  def get_category
    grouped_options = {
      'category' => [
        ['cat','cat'],
        ['dog','dog'],
        ['etc','etc']
      ]
    }
    return grouped_options
  end
end
