json.extract! transaction, :id, :txn_hash, :validator_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
