json.array!(@contact_forms) do |contact_form|
  json.extract! contact_form, :id, :email, :last_name,, :first_name,, :subject,, :description
  json.url contact_form_url(contact_form, format: :json)
end
