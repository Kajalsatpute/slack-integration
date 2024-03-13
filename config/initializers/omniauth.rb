Rails.application.config.middleware.use OmniAuth::Builder do
  provider :slack, '6685838673383.6754572133394', '51767dbf1f33cc2dcb00397dd13e77bc', scope: 'team:read,users:read,identify,bot'
end
