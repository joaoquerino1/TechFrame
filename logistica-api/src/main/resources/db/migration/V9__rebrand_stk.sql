-- V9: rebrand TechFrame -> STK
-- A V5 ja foi aplicada e nao pode ser editada (o Flyway valida o checksum),
-- entao os emails do seed sao migrados aqui.
-- Emails ficam em minusculas: o login normaliza o email com toLowerCase().

UPDATE usuarios
SET email = replace(email, '@techframe.com', '@stk.com')
WHERE email LIKE '%@techframe.com';

UPDATE audit_log
SET usuario_email = replace(usuario_email, '@techframe.com', '@stk.com')
WHERE usuario_email LIKE '%@techframe.com';

UPDATE audit_log
SET detalhes = replace(detalhes, '@techframe.com', '@stk.com')
WHERE detalhes LIKE '%@techframe.com%';
