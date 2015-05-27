Rails.configuration.stripe = {
  :publishable_key => 'pk_test_7vwEJ8DfwfsyFiLWsiy3z8B3',
  :secret_key      => 'sk_test_L02krjeRayUUBCnYmMg1cRNS'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]