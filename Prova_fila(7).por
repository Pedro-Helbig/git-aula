programa {
  inclua biblioteca Util
  inclua biblioteca Matematica

  const inteiro t=25
  cadeia equipamento[t], nome[t], data[t], problema[t], equipamento2[t], nome2[t], data2[t], problema2[t], busca
  inteiro  ponteiro=0, n=0 , ponteiro2=0
  caracter op
  real valor[t]
  caracter sn
  logico enco=falso
  funcao inicio() {
    menu()
  }
 
 funcao menu(){
    limpa()
    escreva("==========MENU GEEKS TECH==========\n")
    escreva("1- Cadastrar novo equipamento\n")
    escreva("2- Executar manutençao\n")
    escreva("3- Fila de atendimento\n")
    escreva("4- Consultar o proximo da fila\n")
    escreva("5- Buscar equipamento\n")
    escreva("6- Exibir status da fila\n")
    escreva("7- Exibir equipamentos ja consertados\n")
    escreva("8- Buscar equipamentos ja consertados\n")
    escreva("0- Sair\n")
    leia(op)
    escolha(op) {
      caso '1':{
        cadastro()
        pare
      }
          caso '2':{
        manutencao()
        pare
      }
      caso '3':{
        lista()
        pare
      }
      caso '4':{
        proximo()
        pare
      }
      caso '5':{
        busca()
        pare
      }
       caso '6':{
        status()
        pare
      }
         caso '7':{
         lista2()
        pare
      }
      caso'8':{
        busca2()
        pare
      }
      caso'0':{
        sair()
        pare
      }
      caso contrario:{
        limpa()
        escreva("ERRO: A opção que escolheu é invalida!")
        Util.aguarde(3000)
        menu()
      }
    }

  }
  funcao cadastro(){
    se(ponteiro>=t+1){
      limpa()
      escreva("ERRO: A fila de manuntenção está cheia!")
       Util.aguarde(3000)
       menu()
    }
    senao{
    limpa()
    escreva("Informe a data de entrada(ex:10/9/24)\n")
    leia(data[ponteiro])
    limpa()
    escreva("Informe o nome do cliente(ex: Paulo Henrique)\n")
    leia(nome[ponteiro])
    limpa()
    escreva("Informe o equipamento(Celular)\n")
    leia(equipamento[ponteiro])
    limpa()
    escreva("informe o problema(Parou de ligar)\n")
    leia(problema[ponteiro])
    limpa()
     escreva("Data de entrada-",data[ponteiro],"\n")
        escreva("Nome do proprietário-", nome[ponteiro],"\n")
        escreva("Equipamento-", equipamento[ponteiro],"\n")
        escreva("problema-", problema[ponteiro],"\n")

          escreva("As informações estão corretas?\n")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          escreva("Cadastro realizado com sucesso!")
          ponteiro++
          Util.aguarde(2000)
          menu()
          pare
        }
        caso'2':{
          cadastro()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          lista()
          pare
        }
      }
    }
  }
  funcao manutencao(){
    limpa()
    se(ponteiro2>=t){
      escreva("ERRO:O registro de manutenção está cheio.")
      menu()
    }
    escreva("Informe o valor da manutençao\n")
    leia(valor[ponteiro2]) 
    se(valor[ponteiro2]<=0){
      escreva("ERRO: O valor que informou é invalido")
      manutencao()
    }
     data2[ponteiro2]=data[0]
    equipamento2[ponteiro2]=equipamento[0]
    problema2[ponteiro2]= problema[0]
    nome2[ponteiro2]= nome[0]
    ponteiro2++
    para(n=0; n<ponteiro; n++){
      equipamento[n]=equipamento[n+1]
      nome[n]=nome[n+1]
      data[n]=nome[n+1]
      problema[n]=problema[n+1]    
    }
    ponteiro--
    escreva("A manutenção foi realizda com sucesso!")
    Util.aguarde(2000)
     limpa()  
     menu()
  }
  
  funcao lista(){
    limpa()
    se(ponteiro<=0){
      escreva("ERRO: Não ha oque listar")
      Util.aguarde(2000)
      menu()
    }
      para(n=0;n<ponteiro;n++){
        escreva(n+1, "-equipamento\n")
        escreva("Data de entrada-",data[n],"\n")
        escreva("Nome do proprietário-", nome[n],"\n")
        escreva("Equipamento-", equipamento[n],"\n")
        escreva("problema-", problema[n],"\n")
        Util.aguarde(1000)
      }
      escreva("Deseja retornar ao menu?")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          menu()
          pare
        }
        caso'2':{
          lista()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          lista()
          pare
        }
      }
      
    
  }
  funcao proximo(){
    limpa()
    se(ponteiro<=1){    
      escreva("ERRO: Nenhum valor adicionado")
      Util.aguarde(2000)
      menu()
    }
        escreva("proximo equipamento\n")
        escreva("Data de entrada-",data[1],"\n")
        escreva("Nome do proprietário-", nome[1],"\n")
        escreva("Equipamento-", equipamento[1],"\n")
        escreva("problema-", problema[1],"\n")
        Util.aguarde(2000)
        menu()
  }
  funcao busca(){
    limpa()
    se(ponteiro<=0){
      escreva("ERRO: Nenhum valor adicionado")
      Util.aguarde(2000)
      menu()
      }
    escreva("informe o nome do equipamento a buscar\n")
    leia(busca)
     para(n=0;n<ponteiro;n++){
      se(equipamento[n]==busca){
        escreva("Data de entrada-",data[n],"\n")
        escreva("Nome do proprietário-", nome[n],"\n")
        escreva("Equipamento-", equipamento[n],"\n")
        escreva("problema-", problema[n],"\n")
        enco=verdadeiro
        pare
      }    
        se(nome[n]==busca){
        escreva("Data de entrada-",data[n],"\n")
        escreva("Nome do proprietário-", nome[n],"\n")
        escreva("Equipamento-", equipamento[n],"\n")
        escreva("problema-", problema[n],"\n")
        enco=verdadeiro
        pare
      }    
        se(data[n]==busca){
        escreva("Data de entrada-",data[n],"\n")
        escreva("Nome do proprietário-", nome[n],"\n")
        escreva("Equipamento-", equipamento[n],"\n")
        escreva("problema-", problema[n],"\n")
        enco=verdadeiro
        pare
      }    

    }
    se(enco==falso){
       escreva("equipamento nao encontrado\n")
     }
      escreva("Deseja retornar ao menu?\n")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          menu()
          pare
        }
        caso'2':{
          busca()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          busca()
          pare
        }
      }
    
  }
  funcao status(){
    limpa()
    se(ponteiro<=0){
      escreva("ERRO: Nenhum valor adicionado")
      Util.aguarde(2000)
      menu()
      }
    real totalt, total1, total2, a1, a2
    totalt=ponteiro+ponteiro2
    total1=(ponteiro*100)/totalt
    total2=(ponteiro2*100)/totalt  
    a1=Matematica.arredondar(total1, 2)
    a2=Matematica.arredondar(total2, 2)
    escreva("Há ainda ", ponteiro," equipamentos a serem atendidos\n E já foram atendidos ", ponteiro2, " equipamentos" )
    escreva("\n Há ", total1, "% há ser feito a manuntenção e ", total2, "% que já foi feito")
    escreva("\nDeseja retornar ao menu?\n")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          menu()
          pare
        }
        caso'2':{
          status()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          status()
          pare
        }
      }
    
  }
  funcao lista2(){
    limpa()
    se(ponteiro2<=0){
      escreva("ERRO: Não foi feita nehuma manutenção")
      Util.aguarde(2000)
      menu()
      }
    inteiro total=0  
    se(ponteiro2<=0){
      escreva("ERRO:Não houve nenhuma manutenção!")
    }
      para(n=0;n<ponteiro2;n++){
        escreva(n+1, "-equipamento\n")
        escreva("Data de entrada-",data2[n],"\n")
        escreva("Nome do proprietário-", nome2[n],"\n")
        escreva("Equipamento-", equipamento2[n],"\n")
        escreva("problema-", problema2[n],"\n")
      }
      para(n=0;n<ponteiro2;n++){
       total=total+valor[n]
      }
      escreva("A soma de todas as manutenções é de ", total)
      
        escreva("\nDeseja retornar ao menu?\n")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          menu()
          pare
        }
        caso'2':{
          lista2()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          lista2()
          pare
        }
      }
  }
  funcao busca2(){
     limpa()
     se(ponteiro2<=0){
      escreva("ERRO: Não foi feita a manutenção de nenhum item")
      Util.aguarde(2000)
      menu()
      }
    escreva("informe o nome do equipamento a buscar\n")
    leia(busca)
     para(n=0;n<ponteiro2;n++){
      se(equipamento2[n]==busca){
        escreva("Data de entrada-",data2[n],"\n")
        escreva("Nome do proprietário-", nome2[n],"\n")
        escreva("Equipamento-", equipamento2[n],"\n")
        escreva("problema-", problema2[n],"\n")
        enco=verdadeiro
        pare
      }    
       se(nome2[n]==busca){
        escreva("Data de entrada-",data[n],"\n")
        escreva("Nome do proprietário-", nome[n],"\n")
        escreva("Equipamento-", equipamento[n],"\n")
        escreva("problema-", problema[n],"\n")
        enco=verdadeiro
        pare
      }    
      se(data2[n]==busca){
        escreva("Data de entrada-",data[n],"\n")
        escreva("Nome do proprietário-", nome[n],"\n")
        escreva("Equipamento-", equipamento[n],"\n")
        escreva("problema-", problema[n],"\n")
        enco=verdadeiro
        pare
      }    
        
        
          

    }
    se(enco==falso){
       escreva("equipamento nao encontrado")
     }
    Util.aguarde(2000)
    
      escreva("Deseja retornar ao menu?\n")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          menu()
          pare
        }
        caso'2':{
          busca2()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          busca2()
          pare
        }
      }
  }
funcao  sair(){
  limpa()
            escreva("\nDeseja encerrar o menu?\n")
      escreva("1-SIM\n 2-NÃO\n")
      leia(sn)
      escolha(sn){
        caso '1':{
          limpa()
          escreva("Programa finalizado! Obrigado por usar!")
          pare
        }
        caso'2':{
          menu()
          pare
        }
        caso contrario:{
          escreva("ERRO: Valor invalido!")
          menu()
          pare
        }
      }
  }
}

