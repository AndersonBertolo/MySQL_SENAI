USE bd_vsconnect;




INSERT INTO tb_usuario VALUES (

UUID_TO_BIN (UUID()),
"Jessica",
"jessica@email.com",
"senai@134",
"Rua Amandis,50",
"04221000",
0
);


INSERT INTO tb_usuario VALUES (

UUID_TO_BIN (UUID()),
"Thiago",
"thiago@email.com",
"senai@134",
"Rua das industrias,50",
"04221000",
0
);


INSERT INTO tb_tech VALUES (UUID_TO_BIN (UUID()), "html");
INSERT INTO tb_tech VALUES (UUID_TO_BIN (UUID()), "css");


SELECT * FROM tb_usuario;

SELECT BIN_TO_UUID(id), nome From tb_usuario;

SELECT * FROM tb_usuario WHERE id = UUID_TO_BIN("3ae245b2-6ed4-11ee-8d5f-601895503ef4");

DELETE FROM tb_usuario WHERE id = UUID_TO_BIN("3ae245b2-6ed4-11ee-8d5f-601895503ef4");

UPDATE tb_usuario SET tipoUsuario = 1 WHERE id = UUID_TO_BIN("401b2bda-6ed4-11ee-8d5f-601895503ef4");


INSERT INTO tb_servico VALUES 
    (UUID_TO_BIN(UUID()), "Dashboard", "Desenvolver uma dashboard com informações importantes do nosso controle de vendas.", "3000", "Concluído", UUID_TO_BIN("401b2bda-6ed4-11ee-8d5f-601895503ef4"), NULL),
    (UUID_TO_BIN(UUID()), "Desenvolvimento de site institucional - Gateway de Pagamento / Fintech", "Desenvolver um site responsivo que seja utilizado como uma plataforma de apresentação do nosso gateway de pagamento. O objetivo principal deste projeto é criar um site atraente e informativo, que demonstre as funcionalidades e benefícios do nosso gateway de pagamento para potenciais clientes.", "1300", "Em andamento", UUID_TO_BIN("401b2bda-6ed4-11ee-8d5f-601895503ef4"), NULL),
    (UUID_TO_BIN(UUID()), "Preciso da estrutura de uma HomePage", "Preciso fazer uma tela somente estruturada em HTML para minha empresa.", "1000", "Pendente", UUID_TO_BIN("401b2bda-6ed4-11ee-8d5f-601895503ef4"), NULL);
    
    
SELECT * FROM tb_servico;
    
    
SELECT BIN_TO_UUID(id), nome, tipoUsuario From tb_usuario;       
SELECT BIN_TO_UUID(id), nome From tb_tech;
SELECT BIN_TO_UUID(id), titulo From tb_servico;    
 
    
SELECT * FROM tb_tech;     
SELECT * FROM tb_servico; 
SELECT * FROM tb_tech_servico;   

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("7c0b8de1-6ed3-11ee-8d5f-601895503ef4"),  UUID_TO_BIN("5db830e3-6ede-11ee-8d5f-601895503ef4")
    )

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("7c0b8de1-6ed3-11ee-8d5f-601895503ef4"),  UUID_TO_BIN("5db83562-6ede-11ee-8d5f-601895503ef4")
    )

INSERT INTO tb_tech_servico VALUES (
	UUID_TO_BIN("7c0b8de1-6ed3-11ee-8d5f-601895503ef4"),  UUID_TO_BIN("5db83625-6ede-11ee-8d5f-601895503ef4")
    )


SELECT * FROM tb_dev_tech;  

INSERT INTO tb_dev_tech VALUES (
	UUID_TO_BIN("401b2bda-6ed4-11ee-8d5f-601895503ef4"),  UUID_TO_BIN("7c0b8de1-6ed3-11ee-8d5f-601895503ef4")
    )


SELECT BIN_TO_UUID(id), nome, tipoUsuario From tb_usuario;       
SELECT BIN_TO_UUID(id), nome From tb_tech;
SELECT BIN_TO_UUID(id), titulo From tb_servico;   


SELECT * FROM tb_cotacao;  


INSERT INTO tb_cotacao VALUES (
	UUID_TO_BIN(UUID()),
	UUID_TO_BIN("401b2bda-6ed4-11ee-8d5f-601895503ef4"),  
    UUID_TO_BIN("5db830e3-6ede-11ee-8d5f-601895503ef4"),
    
    5000.00
    )



