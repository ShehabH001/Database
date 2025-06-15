CREATE TRIGGER update_otp_timestamp
BEFORE UPDATE  
ON otp
FOR EACH ROW
EXECUTE FUNCTION update_timestamp();