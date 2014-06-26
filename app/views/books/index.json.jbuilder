json.array!(@books) do |book|
  json.extract! book, :id, :title, :asin, :node_id, :browsenode, :author, :manufacture, :url, :amount, :contents, :pre_processed_contents
  json.url book_url(book, format: :json)
end
