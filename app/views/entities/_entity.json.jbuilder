json.set! 'id', "#{request.protocol}#{request.host_with_port}#{entity.url_path}.json"
json.set! 'type', entity.e_type
json.set! 'label', entity.label
json.set! 'description', entity.short_display
