ActionController::Renderers.add :csv do |csv, options|
  csv = csv.respond_to?(:to_csv) ? csv.to_csv() : csv
  self.content_type ||= Mime::CSV
  self.response_body = csv
end
