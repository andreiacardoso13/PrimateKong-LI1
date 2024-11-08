{-|
Module      : Imagens
Description : Imagens do jogo
Copyright   : Andreia Alves Cardoso <a106915@alunos.uminho.pt>
              Cátia Alexandra Ribeiro da Eira <a107382@alunos.uminho.pt>

Módulo para importar as imagens utilizadas no projeto de LI1 em 2023/24.
-}
module Imagens where
import Graphics.Gloss
import Graphics.Gloss.Juicy
import Data.Maybe

-- | Conjunto das imagens que pertencem ao programa e utilizadas no jogo
data Imagem = Ladder | Trapdoor | Platform | Estrela | Coin | Hammer | GhostLeft1 | GhostLeft2 | GhostRight1 | GhostRight2 | GhostDefeated1 | GhostDefeated2 | GhostDefeated3 | GhostDefeated4 | GhostBlueLeft1 | GhostBlueLeft2 | GhostBlueRight1 | GhostBlueRight2 | MarioClimbing1 | MarioClimbing2 | MarioHammerLeft1 | MarioHammerLeft2 | MarioHammerLeft4 | MarioHammerRight1 | MarioHammerRight2 | MarioHammerRight4 | MarioJumpingLeft1 | MarioJumpingRight1 | MarioStandingBack | MarioStandingLeft | MarioStandingRight | MarioWalkingLeft1 | MarioWalkingRight1 | MarioDefeated1 | MarioDefeated2 | MarioDefeated3 | MarioDefeated4 | MarioDefeatedFinal | MonkeyArmLeft | MonkeyArmRight | MonkeyDefeated | MonkeyFalling | MonkeyStanding | MonkeyWalkingLeft | MonkeyWalkingRight | ZeroVidas | UmaVida | DuasVidas | TresVidas | Num0 | Num1 | Num2 | Num3 | Num4 | Num5 | Num6 | Num7 | Num8 | Num9 | A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z |Firework1 | Firework2 | Firework3 | Firework4 | Firework5 | Firework6 | Firework7 | Firework8 | Firework9 | Firework10 | PlTeuScore | PlHighScoreAtual | PlDerrotasteOPrimateKong | Pausa1 | Pausa2 | Pausa3 | Pausa4 | PausaControlos | PlPressEnter2 | PlParabens | PlEscreveNome | PrimateKong | PalavraJogar | PalavraHighScore | PlPressEnter | Gameover | PlPressP | AmareloHighScore | Ouro | Prata | Bronze | Pontos | Creditos | DicasPausa | ImEditorMapas | PlCriaMapa | InstrucoesEditor | InstrucoesJogoValido | PlJogarUltJogo | PlPressR | Quadrado | Score | Bonus | ImCreditos | DificuldadeFacil | DificuldadeNormal | DificuldadeDificil deriving (Eq)

-- | Tuplo utilizado para fazer a ligação entre uma imagem e a sua picture correspondente
type Imagens = [(Imagem, Picture)]

-- | Recebe uma imagem e devolve a picture correspondente
getImagem :: Imagem -> Imagens -> Picture
getImagem im imgs = fromJust (lookup im imgs)

-- | Responsável por carregar todas as imagens para o data type "Imagens"
getImages :: IO Imagens
getImages = do
               -- Blocos e colecionaveis    
               Just escada                    <- loadJuicyPNG "lib/imagens/ladder.png"
               Just alcapao                   <- loadJuicyPNG "lib/imagens/alcapao.png"
               Just plataforma                <- loadJuicyPNG "lib/imagens/plataforma.png"
               Just estrela                   <- loadJuicyPNG "lib/imagens/estrela.png"
               Just moeda                     <- loadJuicyPNG "lib/imagens/coin.png"
               Just martelo                   <- loadJuicyPNG "lib/imagens/hammer.png"
               -- Fantasmas
               Just ghostLeft1                <- loadJuicyPNG "lib/imagens/ghostLeft1.png"
               Just ghostLeft2                <- loadJuicyPNG "lib/imagens/ghostLeft2.png"
               Just ghostRight1               <- loadJuicyPNG "lib/imagens/ghostRight1.png"
               Just ghostRight2               <- loadJuicyPNG "lib/imagens/ghostRight2.png"
               Just ghostDefeated1            <- loadJuicyPNG "lib/imagens/ghostDefeated1.png"
               Just ghostDefeated2            <- loadJuicyPNG "lib/imagens/ghostDefeated2.png"
               Just ghostDefeated3            <- loadJuicyPNG "lib/imagens/ghostDefeated3.png"
               Just ghostDefeated4            <- loadJuicyPNG "lib/imagens/ghostDefeated4.png"
               Just ghostBlueLeft1            <- loadJuicyPNG "lib/imagens/ghostBlueLeft1.png"
               Just ghostBlueLeft2            <- loadJuicyPNG "lib/imagens/ghostBlueLeft2.png"
               Just ghostBlueRight1           <- loadJuicyPNG "lib/imagens/ghostBlueRight1.png"
               Just ghostBlueRight2           <- loadJuicyPNG "lib/imagens/ghostBlueRight2.png"
               -- Jogadores
               Just marioClimbing1            <- loadJuicyPNG "lib/imagens/marioClimbing1.png"
               Just marioClimbing2            <- loadJuicyPNG "lib/imagens/marioClimbing2.png"
               Just marioHammerLeft1          <- loadJuicyPNG "lib/imagens/marioHammerLeft1.png"
               Just marioHammerLeft2          <- loadJuicyPNG "lib/imagens/marioHammerLeft2.png"
               Just marioHammerLeft4          <- loadJuicyPNG "lib/imagens/marioHammerLeft4.png"
               Just marioHammerRight1         <- loadJuicyPNG "lib/imagens/marioHammerRight1.png"
               Just marioHammerRight2         <- loadJuicyPNG "lib/imagens/marioHammerRight2.png"
               Just marioHammerRight4         <- loadJuicyPNG "lib/imagens/marioHammerRight4.png"
               Just marioJumpingLeft1         <- loadJuicyPNG "lib/imagens/marioJumpingLeft1.png"
               Just marioJumpingRight1        <- loadJuicyPNG "lib/imagens/marioJumpingRight1.png"
               Just marioStandingBack         <- loadJuicyPNG "lib/imagens/marioStandingBack.png"
               Just marioStandingLeft         <- loadJuicyPNG "lib/imagens/marioStandingLeft.png"
               Just marioStandingRight        <- loadJuicyPNG "lib/imagens/marioStandingRight.png"
               Just marioWalkingLeft1         <- loadJuicyPNG "lib/imagens/marioWalkingLeft1.png"
               Just marioWalkingRight1        <- loadJuicyPNG "lib/imagens/marioWalkingRight1.png"
               Just marioDefeated1            <- loadJuicyPNG "lib/imagens/marioDefeated1.png" 
               Just marioDefeated2            <- loadJuicyPNG "lib/imagens/marioDefeated2.png"
               Just marioDefeated3            <- loadJuicyPNG "lib/imagens/marioDefeated3.png"
               Just marioDefeated4            <- loadJuicyPNG "lib/imagens/marioDefeated4.png"
               Just marioDefeatedFinal        <- loadJuicyPNG "lib/imagens/marioDefeatedFinal.png"
               -- MacacoMalvado
               Just monkeyArmLeft             <- loadJuicyPNG "lib/imagens/monkeyArmLeft.png"
               Just monkeyArmRight            <- loadJuicyPNG "lib/imagens/monkeyArmRight.png"
               Just monkeyDefeated            <- loadJuicyPNG "lib/imagens/monkeyDefeated.png"
               Just monkeyFalling             <- loadJuicyPNG "lib/imagens/monkeyFalling.png"
               Just monkeyStanding            <- loadJuicyPNG "lib/imagens/monkeyStanding.png"
               Just monkeyWalkingLeft         <- loadJuicyPNG "lib/imagens/monkeyWalkingLeft.png"
               Just monkeyWalkingRight        <- loadJuicyPNG "lib/imagens/monkeyWalkingRight.png" 
               -- Vidas
               Just zeroVidas                 <- loadJuicyPNG "lib/imagens/vida0.png"
               Just umaVida                   <- loadJuicyPNG "lib/imagens/vida1.png"
               Just duasVidas                 <- loadJuicyPNG "lib/imagens/vida2.png"
               Just tresVidas                 <- loadJuicyPNG "lib/imagens/vida3.png"
               -- Números
               Just num0                      <- loadJuicyPNG "lib/imagens/num0.png"
               Just num1                      <- loadJuicyPNG "lib/imagens/num1.png"
               Just num2                      <- loadJuicyPNG "lib/imagens/num2.png"
               Just num3                      <- loadJuicyPNG "lib/imagens/num3.png"
               Just num4                      <- loadJuicyPNG "lib/imagens/num4.png"
               Just num5                      <- loadJuicyPNG "lib/imagens/num5.png"
               Just num6                      <- loadJuicyPNG "lib/imagens/num6.png"
               Just num7                      <- loadJuicyPNG "lib/imagens/num7.png"
               Just num8                      <- loadJuicyPNG "lib/imagens/num8.png"
               Just num9                      <- loadJuicyPNG "lib/imagens/num9.png"
               -- Letras
               Just a                         <- loadJuicyPNG "lib/imagens/A.png"
               Just b                         <- loadJuicyPNG "lib/imagens/B.png"
               Just c                         <- loadJuicyPNG "lib/imagens/C.png"
               Just d                         <- loadJuicyPNG "lib/imagens/D.png"
               Just e                         <- loadJuicyPNG "lib/imagens/E.png"
               Just f                         <- loadJuicyPNG "lib/imagens/F.png"
               Just g                         <- loadJuicyPNG "lib/imagens/G.png"
               Just h                         <- loadJuicyPNG "lib/imagens/H.png"
               Just i                         <- loadJuicyPNG "lib/imagens/I.png"
               Just j                         <- loadJuicyPNG "lib/imagens/J.png"
               Just k                         <- loadJuicyPNG "lib/imagens/K.png"
               Just l                         <- loadJuicyPNG "lib/imagens/L.png"
               Just m                         <- loadJuicyPNG "lib/imagens/M.png"
               Just n                         <- loadJuicyPNG "lib/imagens/N.png"
               Just o                         <- loadJuicyPNG "lib/imagens/O.png"
               Just p                         <- loadJuicyPNG "lib/imagens/P.png"
               Just q                         <- loadJuicyPNG "lib/imagens/Q.png"
               Just r                         <- loadJuicyPNG "lib/imagens/R.png"
               Just s                         <- loadJuicyPNG "lib/imagens/S.png"
               Just t                         <- loadJuicyPNG "lib/imagens/T.png"
               Just u                         <- loadJuicyPNG "lib/imagens/U.png"
               Just v                         <- loadJuicyPNG "lib/imagens/V.png"
               Just w                         <- loadJuicyPNG "lib/imagens/W.png"
               Just x                         <- loadJuicyPNG "lib/imagens/X.png"
               Just y                         <- loadJuicyPNG "lib/imagens/Y.png"
               Just z                         <- loadJuicyPNG "lib/imagens/Z.png"
               -- Fogo de artifico
               Just firework1                 <- loadJuicyPNG "lib/imagens/firework1.png"
               Just firework2                 <- loadJuicyPNG "lib/imagens/firework2.png"
               Just firework3                 <- loadJuicyPNG "lib/imagens/firework3.png"
               Just firework4                 <- loadJuicyPNG "lib/imagens/firework4.png"
               Just firework5                 <- loadJuicyPNG "lib/imagens/firework5.png"
               Just firework6                 <- loadJuicyPNG "lib/imagens/firework6.png"
               Just firework7                 <- loadJuicyPNG "lib/imagens/firework7.png"
               Just firework8                 <- loadJuicyPNG "lib/imagens/firework8.png"
               Just firework9                 <- loadJuicyPNG "lib/imagens/firework9.png"
               Just firework10                <- loadJuicyPNG "lib/imagens/firework10.png"
               -- Menu Pausa
               Just pausa1                    <- loadJuicyPNG "lib/imagens/pausa1.png"
               Just pausa2                    <- loadJuicyPNG "lib/imagens/pausa2.png"
               Just pausa3                    <- loadJuicyPNG "lib/imagens/pausa3.png"
               Just pausa4                    <- loadJuicyPNG "lib/imagens/pausa4.png"
               Just pausaControlos            <- loadJuicyPNG "lib/imagens/pausaControlos.png"
               -- Palavras e frases
               Just plPressEnter2             <- loadJuicyPNG "lib/imagens/plPressEnter2.png"
               Just plDerrotasteOPrimateKong  <- loadJuicyPNG "lib/imagens/derrotaPrimateKong.png"
               Just plTeuScore                <- loadJuicyPNG "lib/imagens/scoreGanhou.png"
               Just plHighScoreAtual          <- loadJuicyPNG "lib/imagens/highScoreGanhou.png"
               Just plpressEnter              <- loadJuicyPNG "lib/imagens/pressEnter.png"
               Just plEscreveNome             <- loadJuicyPNG "lib/imagens/plEscreveNome.png"
               Just primateKong               <- loadJuicyPNG "lib/imagens/primateKong.png"
               Just plParabens                <- loadJuicyPNG "lib/imagens/parabens.png"
               Just palavraJogar              <- loadJuicyPNG "lib/imagens/jogar.png"
               Just palavraHighScore          <- loadJuicyPNG "lib/imagens/highScore.png"
               Just gameover                  <- loadJuicyPNG "lib/imagens/gameover.png"
               Just plPressP                  <- loadJuicyPNG "lib/imagens/PlPressP.png"
               Just amareloHighScore          <- loadJuicyPNG "lib/imagens/AmareloHighScore.png"
               Just ouro                      <- loadJuicyPNG "lib/imagens/ouro.png"
               Just prata                     <- loadJuicyPNG "lib/imagens/prata.png"
               Just bronze                    <- loadJuicyPNG "lib/imagens/bronze.png"
               Just pontos                    <- loadJuicyPNG "lib/imagens/pontos.png"
               Just creditos                  <- loadJuicyPNG "lib/imagens/creditos.png"
               Just dicasPausa                <- loadJuicyPNG "lib/imagens/dicasPausa.png"
               Just editorMapas               <- loadJuicyPNG "lib/imagens/editorMapas.png"
               Just plCriaMapa                <- loadJuicyPNG "lib/imagens/PlCriaMapa.png"
               Just instrucoesEditor          <- loadJuicyPNG "lib/imagens/instrucoesEditor.png"
               Just instrucoesJogoValido      <- loadJuicyPNG "lib/imagens/instrucoesJogoValido.png"
               Just plJogarUltJogo            <- loadJuicyPNG "lib/imagens/PlJogarUltJogo.png"
               Just plPressR                  <- loadJuicyPNG "lib/imagens/PlPressR.png"
               -- Outros
               Just quadrado                  <- loadJuicyPNG "lib/imagens/quadrado.png"
               Just score                     <- loadJuicyPNG "lib/imagens/score.png"
               Just bonus                     <- loadJuicyPNG "lib/imagens/bonus.png"
               Just imCreditos                <- loadJuicyPNG "lib/imagens/ImCreditos.png"
               Just dificuldadeFacil          <- loadJuicyPNG "lib/imagens/dificuldadeFacil.png"
               Just dificuldadeNormal         <- loadJuicyPNG "lib/imagens/dificuldadeNormal.png"
               Just dificuldadeDificil        <- loadJuicyPNG "lib/imagens/dificuldadeDificil.png"

               -- | Devolve uma lista de 'Imagens' 
               let images = [(Ladder,escada), (Trapdoor,alcapao), (Platform,plataforma), (Estrela,estrela),
                             (Coin,moeda), (Hammer,martelo), (GhostLeft1,ghostLeft1), (GhostLeft2,ghostLeft2),
                             (GhostRight1,ghostRight1), (GhostRight2,ghostRight2),  (GhostDefeated1,ghostDefeated1),
                             (GhostDefeated2,ghostDefeated2), (GhostDefeated3,ghostDefeated3), (GhostDefeated4,ghostDefeated4),
                             (GhostBlueLeft1,ghostBlueLeft1), (GhostBlueLeft2,ghostBlueLeft2), (GhostBlueRight1,ghostBlueRight1), 
                             (GhostBlueRight2,ghostBlueRight2),(MarioClimbing1,marioClimbing1), (MarioClimbing2,marioClimbing2), 
                             (MarioHammerLeft1,marioHammerLeft1), (MarioHammerLeft2,marioHammerLeft2),
                             (MarioHammerLeft4,marioHammerLeft4), (MarioHammerRight1,marioHammerRight1),
                             (MarioHammerRight2,marioHammerRight2), (MarioHammerRight4,marioHammerRight4), 
                             (MarioJumpingLeft1,marioJumpingLeft1), (MarioJumpingRight1,marioJumpingRight1), 
                             (MarioStandingBack,marioStandingBack), (MarioStandingLeft,marioStandingLeft), 
                             (MarioStandingRight,marioStandingRight), (MarioWalkingLeft1,marioWalkingLeft1), 
                             (MarioWalkingRight1,marioWalkingRight1), (MarioDefeated3,marioDefeated3),
                             (MarioDefeated4,marioDefeated4), (MarioDefeatedFinal,marioDefeatedFinal), (MonkeyArmLeft,monkeyArmLeft), 
                             (MonkeyArmRight,monkeyArmRight), (MonkeyDefeated,monkeyDefeated), (MonkeyFalling,monkeyFalling), 
                             (MonkeyStanding,monkeyStanding), (MonkeyWalkingLeft,monkeyWalkingLeft), (MonkeyWalkingRight,monkeyWalkingRight), 
                             (ZeroVidas,zeroVidas), (UmaVida,umaVida), (DuasVidas,duasVidas), (TresVidas,tresVidas), 
                             (Num0,num0), (Num1,num1), (Num2,num2), (Num3,num3), (Num4,num4), (Num5,num5), (Num6,num6), 
                             (Num7,num7), (Num8,num8), (Num9,num9), (A,a), (B,b), (C,c), (D,d), (E,e), (F,f), (G,g), 
                             (H,h), (I,i), (J,j), (K,k), (L,l), (M,m), (N,n), (O,o), (P,p), (Q,q), (R,r), (S,s), (T,t), 
                             (U,u), (V,v), (W,w), (X,x), (Y,y), (Z,z), (Firework1,firework1), (Firework2,firework2), 
                             (Firework3,firework3), (Firework4,firework4), (Firework5,firework5), (Firework6,firework6), 
                             (Firework7,firework7), (Firework8,firework8), (Firework9,firework9), (Firework10,firework10),
                             (Pausa1,pausa1), (Pausa2,pausa2),(Pausa3,pausa3), (Pausa4,pausa4), (PausaControlos,pausaControlos),  
                             (PlPressEnter2,plPressEnter2), (PlTeuScore,plTeuScore), (PlHighScoreAtual,plHighScoreAtual),
                             (PlDerrotasteOPrimateKong,plDerrotasteOPrimateKong), (PlPressEnter,plpressEnter), (PlEscreveNome,plEscreveNome),
                             (PrimateKong,primateKong), (PlParabens,plParabens), (PalavraJogar,palavraJogar), (PalavraHighScore,palavraHighScore),
                             (MarioDefeated1,marioDefeated1), (MarioDefeated2,marioDefeated2),  (Gameover, gameover), (PlPressP,plPressP), 
                             (AmareloHighScore,amareloHighScore), (Ouro,ouro), (Prata,prata), (Bronze,bronze), (Pontos,pontos),
                             (Creditos,creditos), (DicasPausa,dicasPausa), (ImEditorMapas,editorMapas), (PlCriaMapa,plCriaMapa), 
                             (InstrucoesEditor,instrucoesEditor), (InstrucoesJogoValido,instrucoesJogoValido), (PlJogarUltJogo,plJogarUltJogo), 
                             (PlPressR,plPressR), (Quadrado,quadrado), (Score,score), (Bonus,bonus), (ImCreditos,imCreditos),
                             (DificuldadeFacil, dificuldadeFacil), (DificuldadeNormal,dificuldadeNormal), (DificuldadeDificil,dificuldadeDificil)]
               return images