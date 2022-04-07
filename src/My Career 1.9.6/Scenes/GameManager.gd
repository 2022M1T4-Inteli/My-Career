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


var iniciominigamems = true #variavel de estado do inicio do minigame microsoft
var iniciominigameap = true #variavel de estado do inicio do minigame apple
var iniciominigamets = true #variavel de estado do inicio do minigame tesla
var iniciominigamens = true #variavel de estado do inicio do minigame nasa

var inicioms = true  #variavel de estado do tutorial do primeiro andar da microsoft
var inicioap = true  #variavel de estado do tutorial do primeiro andar da apple
var iniciona = true  #variavel de estado do tutorial do primeiro andar da nasa
var iniciots = true  #variavel de estado do tutorial do primeiro andar da tesla

var velocidadevertical = 500   #variavel da constante da velocidade no eixo y do player
var velocidadehorizontal = 500 #variavel da constante da velocidade no eixo x do player

var tutorial = false #variavel de estado do tutorial do jogo

var god #variavel do deus do jogo
var select #variavel da seleção do player na tela de escolha de personagem

var firsttimeap = 0 #variavel de estado da liberação do elevador da apple
var firsttimens = 0 #variavel de estado da liberação do elevador da nasa
var firsttimems = 0 #variavel de estado da liberação do elevador da microsoft
var firsttimets = 0 #variavel de estado da liberação do elevador da tesla

var positionopenworld = Vector2.ZERO #vetor que armazena posição global na cena open world
var positionelevador = Vector2.ZERO #vetor que armazena posição global na cena terreo
var positionandar = Vector2.ZERO #vetor que armazena posição global na cena primeiro andar

var interiorterreo 
var interiorandar 
var minigame

var bl1dialogcount = 0
var bl2dialogcount = 0

