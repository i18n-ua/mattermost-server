CREATE TABLE IF NOT EXISTS useraccesstokens (
    id VARCHAR(26) PRIMARY KEY,
    token VARCHAR(26) UNIQUE,
    userid VARCHAR(26),
    description VARCHAR(512)
);

ALTER TABLE useraccesstokens ADD COLUMN IF NOT EXISTS isactive boolean default true;
CREATE INDEX IF NOT EXISTS idx_user_access_tokens_token ON useraccesstokens(token);
CREATE INDEX IF NOT EXISTS idx_user_access_tokens_user_id ON useraccesstokens(userid);