extends Node

var tsdialogcount = 0 #terreo tesla
var emdialogcount = 0 #elon musgo
var stdialogcount = 0 #steve trab
var dvdialogcount = 0 #dorothy van
var bpdialogcount = 0 #bill portas
var rtdialogcount = 0 #recrutadora tesla
var radialogcount = 0 #recrutadora apple
var apdialogcount = 0 #terreo apple
var msdialogcount = 0 #terreo microsoft
var rmdialogcount = 0 #recrutadora microsoft
var nsdialogcount = 0 #terreo nasa
var rndialogcount = 0 #recrutadora nasa
var goddialogcount = 0 #god
var pcdialogcount = 0 #placa
var bl1dialogcount = 0 #bibliotecario 1
var bl2dialogcount = 0 #bibliotecario 2

var startMinigamems = true #variavel de estado do inicio do minigame microsoft
var starMinigameap = true #variavel de estado do inicio do minigame apple
var starMinigamets = true #variavel de estado do inicio do minigame tesla
var starMinigamens = true #variavel de estado do inicio do minigame nasa

var starMs = true  #variavel de estado do tutorial do primeiro andar da microsoft
var starAp = true  #variavel de estado do tutorial do primeiro andar da apple
var starNa = true  #variavel de estado do tutorial do primeiro andar da nasa
var starts = true  #variavel de estado do tutorial do primeiro andar da tesla

var verticalSpeed = 0   #variavel da constante da velocidade no eixo y do player
var horizontalSpeed = 0 #variavel da constante da velocidade no eixo x do player

var tutorial = false #variavel de estado do tutorial do jogo

var god #variavel do deus do jogo
var select #variavel da seleção do player na tela de escolha de personagem

var firsttimeap = 0 #variavel de estado da liberação do elevador da apple
var firsttimens = 0 #variavel de estado da liberação do elevador da nasa
var firsttimems = 0 #variavel de estado da liberação do elevador da microsoft
var firsttimets = 0 #variavel de estado da liberação do elevador da tesla

var positionopenworld = Vector2.ZERO #vetor que armazena posição global na cena open world
var elevatorPosition = Vector2.ZERO #vetor que armazena posição global na cena terreo
var positionandar = Vector2.ZERO #vetor que armazena posição global na cena primeiro andar
var libraryPosition = Vector2.ZERO #vetor que armazena posição global na cena da biblioteca

var groundInterior 
var interiorFloor 
var minigame
var libraryHelp = true

var map = true #variável de estado do mapa para controle de exibição
