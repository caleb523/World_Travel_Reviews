json.extract! review, :id, :title, :rating, :comment, :created_at, :updated_at
json.url review_url(review, format: :json)
