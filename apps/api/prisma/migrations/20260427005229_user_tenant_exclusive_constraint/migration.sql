-- Un user puede tener providerId, clientId, ambos null (futuro superadmin),
-- pero NUNCA ambos a la vez.
ALTER TABLE "user"
ADD CONSTRAINT user_tenant_exclusive
CHECK (
  NOT (provider_id IS NOT NULL AND client_id IS NOT NULL)
);