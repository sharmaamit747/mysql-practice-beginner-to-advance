-- Create index on user_id
CREATE INDEX idx_user_id ON orders(user_id);

--- Create index on status
CREATE INDEX idx_status ON orders(status);

--- Drop index
DROP INDEX idx_status ON orders;

---note:

--- Primary key is automatically indexed

--- Foreign keys should usually be indexed