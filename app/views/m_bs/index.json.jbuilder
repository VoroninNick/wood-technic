json.array!(@m_bs) do |m_b|
  json.extract! m_b, :id
  json.url m_b_url(m_b, format: :json)
end
