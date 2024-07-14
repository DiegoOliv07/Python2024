-- Times
INSERT INTO team (name, motto, established_year, description) VALUES
('Seirin', 'Lutar até o fim', 2010, 'Um novo time que visa o topo.'),
('Shutoku', 'Visando o ápice', 2008, 'Conhecido por seu artilheiro, Midorima Shintarou.'),
('Kaijo', 'Nunca desistir', 2009, 'Um time com o jogador de destaque Kise Ryouta.'),
('Touou', 'O time mais forte', 2007, 'Um time poderoso com Aomine Daiki.'),
('Rakuzan', 'Rei absoluto', 2006, 'O time campeão atual com Akashi Seijuro.'),
('Kirisaki Daiichi', 'Vencer a qualquer custo', 2006, 'Conhecido por suas táticas sujas e jogo físico.');

-- Personagens principais e secundários
INSERT INTO player (name, age, height, weight, position, skills, biography, description, team_id) VALUES
-- Seirin High School
('Kuroko Tetsuya', 16, 173, 64, 'Armador', 'Desvio de atenção, Passe invisível', 'O sexto homem fantasma da Geração dos Milagres.', 'Um membro do time de basquete da Seirin High School.', 1),
('Kagami Taiga', 16, 190, 82, 'Ala-pivô', 'Poder de salto, Enterrada meteórica', 'Um jogador talentoso que voltou dos Estados Unidos.', 'Um membro do time de basquete da Seirin High School.', 1),
('Hyuuga Junpei', 17, 178, 68, 'Ala-armador', 'Liderança, Arremesso de três pontos', 'Capitão da Seirin.', 'Um membro do time de basquete da Seirin High School.', 1),
('Kiyoshi Teppei', 18, 193, 85, 'Pivô', 'Versatilidade, Ganchos', 'O Coração de Ferro.', 'Um membro do time de basquete da Seirin High School.', 1),
('Izuki Shun', 17, 174, 64, 'Armador', 'Visão de Águia', 'Conhecido por sua excelente visão de jogo.', 'Um membro do time de basquete da Seirin High School.', 1),
('Mitobe Rinnosuke', 17, 186, 78, 'Pivô', 'Trabalho árduo e determinação', 'Um membro calado mas dedicado do time.', 'Um membro do time de basquete da Seirin High School.', 1),
('Koganei Shinji', 17, 178, 67, 'Ala', 'Versatilidade', 'Um jogador versátil que pode jogar em várias posições.', 'Um membro do time de basquete da Seirin High School.', 1),
('Furihata Kouki', 16, 170, 60, 'Armador', 'Resiliência', 'Um jogador de reserva que cresce em momentos críticos.', 'Um membro do time de basquete da Seirin High School.', 1),

-- Shutoku High School
('Midorima Shintarou', 17, 195, 79, 'Ala-armador', 'Precisão de três pontos 100%', 'Um dos integrantes da Geração dos Milagres.', 'Um membro do time de basquete da Shutoku High School.', 2),
('Takao Kazunari', 17, 176, 62, 'Armador', 'Visão de falcão', 'Parceiro de Midorima.', 'Um membro do time de basquete da Shutoku High School.', 2),
('Miyaji Kiyoshi', 17, 193, 83, 'Ala-pivô', 'Experiência e força', 'Um jogador experiente e sério.', 'Um membro do time de basquete da Shutoku High School.', 2),
('Kimura', 17, 180, 68, 'Ala', 'Determinação', 'Um membro dedicado do time.', 'Um membro do time de basquete da Shutoku High School.', 2),
('Otsubo Taisuke', 18, 201, 98, 'Pivô', 'Força e presença na área', 'O capitão do time.', 'Um membro do time de basquete da Shutoku High School.', 2),

-- Kaijo High School
('Kise Ryouta', 16, 189, 77, 'Ala', 'Habilidade de cópia', 'Um dos integrantes da Geração dos Milagres.', 'Um membro do time de basquete da Kaijo High School.', 3),
('Kasamatsu Yukio', 17, 178, 66, 'Armador', 'Liderança', 'O capitão de Kaijo e mentor de Kise.', 'Um membro do time de basquete da Kaijo High School.', 3),
('Moriyama Yoshitaka', 17, 180, 70, 'Ala-armador', 'Arremesso de três pontos', 'Conhecido por seu amor pelas garotas.', 'Um membro do time de basquete da Kaijo High School.', 3),
('Hayakawa Mitsuhiro', 17, 191, 85, 'Ala-pivô', 'Rebotes', 'Um jogador enérgico e dedicado.', 'Um membro do time de basquete da Kaijo High School.', 3),
('Nakamura Teppei', 17, 190, 78, 'Pivô', 'Defesa sólida', 'Um defensor robusto.', 'Um membro do time de basquete da Kaijo High School.', 3),

-- Touou Academy
('Aomine Daiki', 17, 192, 85, 'Ala-pivô', 'Drive imparável', 'Um dos integrantes da Geração dos Milagres.', 'Um membro do time de basquete da Touou Academy.', 4),
('Imayoshi Shoichi', 18, 180, 70, 'Armador', 'Calma e controle', 'O capitão estrategista da Touou.', 'Um membro do time de basquete da Touou Academy.', 4),
('Sakurai Ryo', 17, 178, 65, 'Ala', 'Arremesso rápido', 'Um jogador apologético e modesto.', 'Um membro do time de basquete da Touou Academy.', 4),
('Wakamatsu Kosuke', 18, 193, 90, 'Pivô', 'Força e resistência', 'Um jogador forte e determinado.', 'Um membro do time de basquete da Touou Academy.', 4),
('Susa Yoshinori', 18, 185, 78, 'Ala-armador', 'Defesa e arremesso', 'Um defensor dedicado.', 'Um membro do time de basquete da Touou Academy.', 4),

-- Yosen High School
('Murasakibara Atsushi', 17, 208, 99, 'Pivô', 'Força esmagadora', 'Um dos integrantes da Geração dos Milagres.', 'Um membro do time de basquete da Yosen High School.', 6),
('Himuro Tatsuya', 17, 183, 70, 'Ala-armador', 'Arremesso preciso', 'Um jogador talentoso e rival de Kagami.', 'Um membro do time de basquete da Yosen High School.', 6),
('Okamura Kenichi', 18, 202, 115, 'Pivô', 'Força bruta', 'Um jogador imponente e forte.', 'Um membro do time de basquete da Yosen High School.', 6),
('Liu Wei', 17, 195, 80, 'Ala-pivô', 'Técnica e altura', 'Um jogador talentoso com habilidades diversas.', 'Um membro do time de basquete da Yosen High School.', 6),

-- Rakuzan High School
('Akashi Seijuro', 17, 173, 64, 'Armador', 'Olho do Imperador', 'O capitão da Geração dos Milagres.', 'Um membro do time de basquete da Rakuzan High School.', 5),
('Nebuya Eikichi', 18, 198, 110, 'Pivô', 'Força e resistência', 'Um jogador forte e imponente.', 'Um membro do time de basquete da Rakuzan High School.', 5),
('Mibuchi Reo', 18, 186, 77, 'Ala-armador', 'Arremesso preciso', 'Conhecido por seu estilo elegante de jogo.', 'Um membro do time de basquete da Rakuzan High School.', 5),
('Hayama Kotaro', 17, 182, 67, 'Ala', 'Velocidade e agilidade', 'Um jogador rápido e ágil.', 'Um membro do time de basquete da Rakuzan High School.', 5),

-- Kirisaki Daiichi High School
('Hanamiya Makoto', 17, 179, 67, 'Armador', 'Jogo sujo e manipulação', 'Conhecido por suas táticas sujas.', 'O capitão do time de Kirisaki Daiichi.', 7),
('Seto Kentaro', 17, 187, 80, 'Pivô', 'Defesa sólida', 'Um defensor robusto.', 'Um membro do time de basquete da Kirisaki Daiichi.', 7),
('Hara Kazuya', 17, 178, 65, 'Ala', 'Provocação e desestabilização', 'Um jogador irritante e provocador.', 'Um membro do time de basquete da Kirisaki Daiichi.', 7),
('Yamazaki Hiroshi', 18, 185, 75, 'Ala-pivô', 'Jogo físico', 'Um jogador agressivo e físico.', 'Um membro do time de basquete da Kirisaki Daiichi.', 7),
('Furuhashi Koujirou', 17, 177, 63, 'Ala-armador', 'Velocidade e furtividade', 'Um jogador rápido e sorrateiro.', 'Um membro do time de basquete da Kirisaki Daiichi.', 7);

-- Jogos (Partidas)
INSERT INTO match (team_a_id, team_b_id, date, score_team_a, score_team_b) VALUES
(1, 2, '2022-01-15', 78, 76), -- Seirin vs. Shutoku
(1, 3, '2022-01-20', 82, 80), -- Seirin vs. Kaijo
(1, 4, '2022-01-25', 77, 75), -- Seirin vs. Touou
(1, 5, '2022-01-30', 83, 81), -- Seirin vs. Rakuzan
(1, 6, '2022-02-05', 79, 78), -- Seirin vs. Yosen
(1, 7, '2022-02-10', 84, 82), -- Seirin vs. Kirisaki Daiichi
(2, 3, '2022-02-15', 76, 78), -- Shutoku vs. Kaijo
(2, 4, '2022-02-20', 80, 81), -- Shutoku vs. Touou
(2, 5, '2022-02-25', 74, 75), -- Shutoku vs. Rakuzan
(2, 6, '2022-03-01', 78, 77), -- Shutoku vs. Yosen
(3, 4, '2022-03-05', 81, 83), -- Kaijo vs. Touou
(3, 5, '2022-03-10', 77, 78), -- Kaijo vs. Rakuzan
(3, 6, '2022-03-15', 79, 80), -- Kaijo vs. Yosen
(4, 5, '2022-03-20', 80, 82), -- Touou vs. Rakuzan
(4, 6, '2022-03-25', 76, 77), -- Touou vs. Yosen
(5, 6, '2022-03-30', 78, 79), -- Rakuzan vs. Yosen
(1, 7, '2022-04-05', 88, 85), -- Seirin vs. Kirisaki Daiichi
(2, 7, '2022-04-10', 79, 78), -- Shutoku vs. Kirisaki Daiichi
(3, 7, '2022-04-15', 83, 82), -- Kaijo vs. Kirisaki Daiichi
(4, 7, '2022-04-20', 77, 76), -- Touou vs. Kirisaki Daiichi
(5, 7, '2022-04-25', 81, 80), -- Rakuzan vs. Kirisaki Daiichi
(6, 7, '2022-04-30', 78, 77); -- Yosen vs. Kirisaki Daiichi
