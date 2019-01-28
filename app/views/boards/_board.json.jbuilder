json.extract! board, :id, :image, :category, :status, :user_id, :created_at, :updated_at
json.url board_url(board, format: :json)
