-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jun-2019 às 03:02
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `games`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogo` int(255) NOT NULL,
  `console` varchar(15) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ano` int(4) NOT NULL,
  `descricao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id_jogo`, `console`, `categoria`, `nome`, `ano`, `descricao`) VALUES
(1, 'psp', 'corrida', 'Crash Team Racing', 1999, 'E o primeiro jogo de Crash Bandicoot no genero de corrida. A historia do jogo foca nos esforcos de uma equipe de personagens da serie Crash Bandicoot, que devem correr contra o Nitros Oxide para salvar seu planeta da destruicao. No jogo, os jogadores podem assumir o controle de um dos quinze personagens da serie Crash Bandicoot, embora apenas oito estao disponiveis em desde o inicio. Durante as corridas, itens de impulso pode ser usado para ganhar vantagem.'),
(2, 'psp', 'acao', 'Pepsiman', 1999, 'Pepsiman e o mascote da versao japonesa empresa de refrigerantes Pepsi. Ele surgiu pela primeira vez em comerciais da decada de 90 embora nunca fora divulgado fora do Japao. O personagem era um super-heroi ao estilo Surfista Prateado que tinha a habilidade de correr bem veloz entregando as garrafas Pepsi nas casas das pessoas. Porem, era extremamente atrapalhado, acabando sempre por se machucar de algum jeito na maioria de seus comerciais,e e claro que no jogo nao e diferente.\r\n\r\n'),
(3, 'psp', 'luta', 'Tekken', 1995, 'Tekken 3 e o terceiro jogo da serie Tekken. Inicialmente desenvolvido para Arcades, foi levado ao Playstation e para Windows, onde se tornou um dos maiores sucessos do console, considerado o melhor game de luta para a plataforma.'),
(4, 'psp', 'RPG', 'Final Fantasy', 1987, 'Final Fantasy e um jogo eletronico de RPG criado por Hironobu Sakaguchi, desenvolvido e publicado pela Square no Japao pela primeira vez em 1987. E o primeiro titulo da serie Final Fantasy. Lancado originalmente para o Nintendo Entertainment System, Final Fantasy foi refeito para varios outros consoles e eh frequentemente juntado com sua sequencia Final Fantasy II em colecoes. A historia segue quatro jovens chamados de Guerreiros da Luz, com cada um carregando uma das quatro orbes elementais de seu mundo que foram escurecidas por quatro demonios. Eles partem juntos para derrotar as forcas do mal, restaurar a luz das orbes e salvar seu mundo.'),
(5, 'psp', 'Plataforma', 'Tarzan', 1999, 'O jogador jogara com o protagonista Tarzan que durante sua jornada na selva africana encontrara varios inimigos como aguias, babuinos, javalis e etc. Alem de enfrentar chefes como a Sabor e Clayton. Em certas partes o jogador podera jogar com Jane Porter e Terk. Existem tres dificuldades no jogo. O jogo apresenta minigames tambem.'),
(6, 'psp', 'Aventura', 'Metal Gear Solid', 1998, 'A historia de Metal Gear Solid se passa em 2005, a sudoeste do Alasca no mar de Bering. Ela se foca em Solid Snake, um soldado ex-aposentado que se infiltra numa instalacao de eliminacao de armas nucleares para neutralizar uma ameaca terrorista da FOXHOUND, uma unidade de forcas especiais. Snake deve resgatar dois refens: o chefe da DARPA e o presidente de uma fabricante de armas, alem de enfrentar os terroristas e impedi-los de lancar um ataque nuclear.'),
(7, 'psp', 'Terror', 'Resident Evil 2', 1998, 'Resident Evil, conhecido no Japao como Biohazard, e um jogo eletronico de survival horror feito pela Capcom. Lancado originalmente para o PlayStation em 1996, fora no ano seguinte convertido para PC e Sega Saturn e relancado no PlayStation e em outras plataformas em versoes especiais. Tambem recebeu um remake para o Nintendo GameCube.'),
(8, 'psp', 'Plataforma', 'Crash Bandicoot', 1996, 'Crash Bandicoot e uma serie de jogos criada por Andy Gavin e Jason Rubin que sao inclusive os fundadores da Naughty Dog. A serie consiste basicamente nas aventuras do bandicoot geneticamente alterado Crash, que luta para impedir o planos do cientista do mal Neo Cortex e seus lacaios.'),
(9, 'psp', 'Aventura', 'Castlevania: Symphony of the Night', 1997, 'Como elemento classico da serie Castlevania, Symphony of the Night e um jogo em 2D side-scrolling. Ele segue um estilo nao-linear de jogo: no inicio, Alucard so pode acessar certas areas do castelo, mas ao obter as tres formas nas quais ele pode se transformar (lobo, morcego e neblina) ele gradualmente podera acessar areas antes inacessiveis. Um mapa carregado por Alucard vai sendo automaticamente atualizado com intuito de mostrar ao jogador seu progresso no castelo.'),
(10, 'psp', 'Quebra cabecas', 'Tetris', 1984, 'O jogo consiste em empilhar tetraminos que descem a tela de forma que completem linhas horizontais. Quando uma linha se forma, ela se desintegra, as camadas superiores descem, e o jogador ganha pontos.Quando a pilha de pecas chega ao topo da tela, a partida se encerra.'),
(11, 'atari', 'Aventura', 'E.T', 1982, 'The Extra-terrestrial foi um jogo de Video game lancado pela Atari, em 1982, para Atari 2600. Nele, o jogador controla o famoso alienigena do filme original, que tem por objetivo encontrar as pecas de sua nave espacial, e assim voltar para casa.'),
(12, 'atari', 'Acao', 'Super Breakout', 1978, 'Super Breakout foi lancado nos arcades em setembro de 1978 como a sequela de Atari, Inc.\'s Breakout de 1976. Foi desenhado por Ed Rotberg, que mais tarde projetado Battlezone para Atari. O jogo usa a mesma mecanica do Breakout , mas permite a selecao de tres modos de jogo distintos atraves de um botao no gabinete e introduziu varias bolas simultaneas na serie'),
(13, 'atari', 'Labirinto', 'Pac Man', 1981, 'Assim como no fliperama, na versao de Pac-Man para o Atari 2600 voce comanda a personagem titular do jogo com o joystick. O objetivo continua sendo atravessar os corredores do labirinto consumindo todos os biscoitos, sempre esquivando dos fantasmas.'),
(14, 'atari', 'Tiro', 'Space Invaders', 1978, 'Space Invaders e um jogo de videogame de arcade desenhado por Tomohiro Nishikado e lancado em 1978. Foi originalmente construído pela Taito Corporation e um tempo depois foi licenciado para producao nos Estados Unidos pela Midway Games. Space Invaders foi um dos primeiros jogos de tiro com grafico bidimensional. O objetivo e destruir ondas de naves com uma espaconave humana para ganhar o maior numero de pontos possivel. Para construir o jogo, Nishikado se inspirou na midia popular, como Guerra dos Mundos e Star Wars.'),
(15, 'atari', 'Atirador multi-direc', 'Asteroids', 1979, 'Asteroids e um jogo de arcade com graficos vetoriais muito popular lancado em 1979 pela Atari. O objetivo do jogo e destruir asteroides sem se deixar ser atingido por seus fragmentos.'),
(16, 'atari', 'Aventura', 'Jungle Hunt', 1983, 'Jungle Hunt e um jogo de aventura lancado para Atari em 1983. Em Jungle Hunt, o jogador colocava- se na pele de um aventureiro, bem ao estilo Indiana Jones, que desbravava varios cenarios na selva, enfrentando crocodilos, pulando cipos e desviando de pedras rolantes.\r\n\r\n'),
(17, 'atari', 'Tiro', 'Galaxian', 1979, 'Galaxian era um tipico jogo de tiro lancado pela Namco em 1979. Nele voce e uma nave que tem que atirar em um exercito de aliens da esquerda para direita, e quando terminava vinha outro exercito mais desafiador.'),
(18, 'atari', 'Arcade', 'Video Pinball', 1977, 'O Video Pinball permite 7 jogos - 4 variacoes de pinball, um jogo de basquete e duas versoes de Breakout ( Breakout e uma variante chamada Break Away ) - para um a dois jogadores. A unidade oferece pontuacao digital na tela, saques automaticos e graficos coloridos.'),
(19, 'atari', 'Esporte', 'Baseball', 1978, 'Baseball coloca jogadores no controle de um time de beisebol de nove homens competindo em um jogo padrao de nove entradas'),
(20, 'atari', 'Tabuleiro', 'Tic Tac Toe', 1980, 'O jogo e baseado no tradicional jogo da velha, basicamente uma versao computadorizada do jogo de tabuleiro Qubic, o qual e constituido por uma matriz 4x4x4 (quatro conjuntos de grades dispostas verticalmente, cada qual formada por quatro linhas e colunas de quadrados). '),
(21, 'xbox', 'Multijogador online', 'Roblox', 2005, 'Roblox e um MMORPG e MMOSG baseado em mundo aberto, multiplataforma e simulacao do multiverso, que permite jogadores criarem seus proprios mundos virtuais (places) e projetar seus proprios jogos dentro da plataforma digital.'),
(22, 'xbox', 'Construcao e aventur', 'Minecraft', 2009, 'Minecraft e um jogo eletronico tipo sandbox e independente de mundo aberto que permite a construcao usando blocos dos quais o mundo e feito.'),
(23, 'xbox', 'Tiro', 'Borderlands', 2007, 'Borderlands e um jogo eletronico de tiro em primeira pessoa com elementos de ficcao cientifica e RPG eletronico produzido pela Gearbox Software para o Windows, Xbox 360 e PlayStation 3.'),
(24, 'xbox', 'aventura', 'Red Dead Redemption', 2010, 'Red Dead Redemption e um jogo eletronico de acao-aventura western desenvolvido pela Rockstar San Diego e publicado pela Rockstar Games. Ele foi lancado em maio de 2010 para PlayStation 3 e Xbox 360, sendo um sucessor espiritual de Red Dead Revolver lancado em 2004. O jogo se passa em 1911 durante o declinio do Velho Oeste e segue a historia de John Marston, um antigo fora da lei cuja esposa e filho foram tomados como refens pelo governo para forca-lo a trabalhar como seu pistoleiro contratado. Sem escolhas, Marston parte em uma jornada para levar tres membros de sua antiga gangue ate a justica.'),
(25, 'xbox', 'Luta', 'Dead or Alive', 2001, 'Dead or Alive era unico em sua estreia que apresentavas escolhas regularmente diferentes na jogabilidade do que outros jogos de luta 3D. A maior parte de suas caracteristicas de definicao foram a sua velocidade e o sistema de contra-ataque. Dead or Alive poe enfase na velocidade, e se baseia mais em comandos simples e tempo de reacao. Alem disso, o seu sistema de contra-ataque foi o primeiro no genero de luta a utilizar ordens diferentes que correspondiam a cada tipo de ataque'),
(26, 'nintendo', 'Tiro', '1942', 1984, '1942 e ambientado na Guerra do Pacifico durante a Segunda Guerra Mundial. O objetivo e chegar a Toquio e destruir toda a frota aerea japonesa. O jogador pilota um aviao conhecido como o \"Super Ace\" (mas sua aparencia e claramente a de um Lockheed P-38 Lightning). O jogador tem que derrubar avioes inimigos e evitar o fogo inimigo.'),
(27, 'nintendo', 'Plataforma', 'Kirby\'s Adventure', 1993, 'Depois de acordar de sua soneca depois do almoco sem ter qualquer sonho, Kirby vai para a Fountain of Dreams (Fonte dos Sonhos) investigar. Ao chegar la, ele descobre que o Rei Dedede roubou a Star Rod, a fonte de energia da Fountain of Dreams, e a quebrou em sete pedacs, dando seis fragmentos a seus aliados, Whispy Woods, Paint Roller, Mr. Shine e Mr. Bright, Kracko, Heavy Mole, e Meta Knight, ficando com o ultimo pedaco consigo. Sem a Star Rod, todos os habitantes da Dream Land acabam perdendo a capacidade de sonhar. Nisso Kirby decide se aventurar atras fragmentos da Star Rod e traze-los de volta para a Fountain of Dreams, a fim de restaurar os sonhos de todos'),
(28, 'nintendo', 'Plataforma', 'Mario is Missing', 1993, 'No enredo deste jogo, Mario e capturado e Luigi, entao, entra em cena resgata-lo. Controlando Luigi, o jogador vaga por cidades do mundo e deve responder perguntas sobre geografia para avancar para os proximos estagios.'),
(29, 'nintendo', 'Plataforma', 'Mega Man II', 1988, 'Dr. Light criou um robo-androide chamado Mega Man, com a esperanca de acabar com os planos do Dr. Willy de dominar o mundo novamente. Alem de saltar e atirar, Mega Man possui a habilidade de aprender a usar as armas de seus inimigos, assim que os derrota. Dr. Willy tambem criava varias especies de robos em seu laboratorio, e os espalhou em diversas regioes com o proposito de dominar o planeta Terra. Cabe a Mega Man a tarefa de encontrar portanto oito dos principais robos do cientista malvado, alem de capturar o proprio Dr. Willy dentro de seu castelo.'),
(30, 'nintendo', 'Plataforma', 'Super Mario Bros. 2', 1988, 'Super Mario Bros. 2, lancado no Japao como Super Mario USA, e um jogo eletronico lancado para o Nintendo Entertainment System. Mais tarde foi relancado na coletanea Super Mario All-Stars para Super Nintendo Entertainment System.'),
(31, 'nintendo', 'Plataforma', 'Super Mario Bros. 3', 1988, 'Super Mario Bros. 3 mostrou tudo que o console da Nintendo podia oferecer - uma trilha sonora afinada, jogabilidade perfeita, graficos bonitos e cenarios bem trabalhados. O resultado foi um grande sucesso comercial. Super Mario Bros. 3 vendeu quase 18 milhoes de copias no mundo todo, sendo assim o jogo individual (sem ser vendido junto com um console) mais vendido da história dos videogames.'),
(32, 'nintendo', 'Plataforma', 'Super Mario Bros', 1985, 'Apos os acontecimentos de The Super Mario Bros. Super Show!, a Princesa Cogumelo finalmente recuperou seu reino das maos do Bowser. Como vinganca para tentar novamente dominar o Reino dos Cogumelos, Bowser sequestra a Princesa Cogumelo e transforma os Toads em tijolos, pois cabe ao Mario e Luigi salvar a Princesa Cogumelo para que o Reino dos Cogumelos nao caia novamente nas maos de Bowser.'),
(33, 'nintendo', 'Estrategia', 'Bomberman', 1983, 'O objetivo principal, em todos os jogos da serie, e completar as fases depositando bombas em ordens e lugares estrategicos para destruir obstaculos e inimigos.'),
(34, 'nintendo', 'Plataforma', 'Bubble Bobble', 1993, 'Para as versoes NES e Game Boy, a jogabilidade permanece praticamente inalterada em relacao aos outros jogos da serie. No entanto, o jogador pode se tornar capaz de flutuar em plataformas mais altas e em paredes, pressionando o botao B. No lancamento do NES, ao contrario do Bubble Bobble original e de muitos outros jogos da serie, o modo para 2 jogadores faz com que os jogadores alternem os niveis, em vez de jogar cooperativamente atraves deles simultaneamente.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(255) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `login` varchar(10) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usu`, `nome`, `login`, `senha`) VALUES
(10, 'teste', 'teste', 'teste'),
(11, 'isa', 'isawurth', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id_jogo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`),
  ADD UNIQUE KEY `loginConstraint` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
