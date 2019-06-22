#include <Wire.h>
#include <SoftwareSerial.h>
#include <SD.h>

File file;

int Pino_CS = 10;

int up = 0;
int port_sensor = 3;
long skuh = 0;
long contagem_periodo = 0;



void setup() {
  
  pinMode(port_sensor, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(port_sensor),borda_de_subida,RISING); //borda de subida do pino 3 aciona a funcao borda_de_subida
  Serial.begin(9600);

  //Inicia o cartao SD
  Serial.println("Iniciando cartao SD...");
  if (!SD.begin(Pino_CS))
  {
    Serial.println("Falha na inicializacao do SD!");
    return;
  }
  Serial.println("Cartao SD iniciado. OK");
  Serial.println();

  SD.remove("OPERACAO.txt");
  SD.remove("PARADA.txt");

}


void borda_de_subida(){
 up = up + 1; //logica de contagem de bordas de subida
 //Serial.println(up);
}

void grava_cartao_SD()
{
  //Abre arquivo no SD para gravacao
  file = SD.open("OPERACAO.txt", FILE_WRITE);
  //Grava os dados no cartao SD
  file.println(skuh);
  //Fecha arquivo
  file.close();
}

void loop() {
  
  delay(10000);
  contagem_periodo = up;
  Serial.println(contagem_periodo);
  skuh = contagem_periodo*3600/10;
  grava_cartao_SD();
  Serial.println(skuh);
  up = 0;
  
}
