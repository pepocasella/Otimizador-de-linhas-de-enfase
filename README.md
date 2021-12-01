# Otimizador-de-linhas-de-enfase
 A calculadora de ponto ótimo é um software desenvolvido pelo grupo em MatLab  que, quando alimentada com valores reais de MTTR e MTBF, retorna ao usuário as  velocidades e sobrevelocidades ideias para balancear a linha de envase. Ou seja, a  calculadora devolve valores que aumentam a eficiência da linha, permitindo que ela  trabalhe de maneira mais fluida e, ao mesmo tempo, faz isso retornando os valores  de velocidade mais baixos para cumprir esta função. Desta maneira, para uma  máxima eficiência a calculadora aponta as velocidades com o menor custo de  produção possíveis. 
![fotos_main_window_dialogboxes](https://user-images.githubusercontent.com/11545292/60849579-ceb15900-a1c1-11e9-8847-f0f66c6cf515.jpg)


## Otimizador Executable

1. Prerequisites for Deployment 

Verify that version 9.3 (R2017b) of the MATLAB Runtime is installed.   

If the MATLAB Runtime is not installed, you can run the MATLAB Runtime installer.
To find its location, enter
  
    >>mcrinstaller
      
at the MATLAB prompt.

Alternatively, download and install the Windows version of the MATLAB Runtime for R2017b 
from the following link on the MathWorks website:

    http://www.mathworks.com/products/compiler/mcr/index.html
   
For more information about the MATLAB Runtime and the MATLAB Runtime installer, see 
Package and Distribute in the MATLAB Compiler documentation  
in the MathWorks Documentation Center.    

NOTE: You will need administrator rights to run the MATLAB Runtime installer. 


2. Files to Deploy and Package

Files to Package for Standalone 
================================
-Otimizador.exe
-MCRInstaller.exe 
    Note: if end users are unable to download the MATLAB Runtime using the
    instructions in the previous section, include it when building your 
    component by clicking the "Runtime downloaded from web" link in the
    Deployment Tool.
-This readme file 

3. Definitions

For information on deployment terminology, go to
http://www.mathworks.com/help and select MATLAB Compiler >
Getting Started > About Application Deployment >
Deployment Product Terms in the MathWorks Documentation
Center.
