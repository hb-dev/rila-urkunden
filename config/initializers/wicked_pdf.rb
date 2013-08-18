if Rails.env.staging? || Rails.env.production?
  WickedPdf.config = {:exe_path => Rails.root.join('lib', 'wkhtmltopdf-amd64').to_s}
end