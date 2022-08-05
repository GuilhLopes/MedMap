import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor() {}

  resultado: string = "0";
  memoria: string = "0";
  termo_1: string = "";
  termo_2: string = "";
  operador_ativo: Boolean = false;
  operador_selecionado: string = "";
  calculo_ativo: Boolean = false;

  calcular() {
    let termo1 = parseInt(this.termo_1);
    let termo2 = parseInt(this.termo_2);

    this.memoria = this.resultado + "=";

    if (this.operador_selecionado == "+") {
      this.resultado = (termo1 + termo2).toString();
    }
   
    if (this.operador_selecionado == "-") {
      this.resultado = (termo1 - termo2).toString();
    }
   
    if (this.operador_selecionado == "*") {
      this.resultado = (termo1 * termo2).toString();
    }

   
    if (this.operador_selecionado == "/") {
      this.resultado = (termo1 / termo2).toString();
    }

    this.operador_ativo = false;
    this.calculo_ativo = true;

    this.memoria = this.memoria + this.resultado;
  }

  digito(valor) {
    if (this.operador_ativo == false) {
      if(this.calculo_ativo == true) {
        this.calculo_ativo = false;
        //this.resultado = valor;
        this.limpar();
      }
      if (this.resultado == "0") {
        this.resultado = valor;
      }
      else {
        this.resultado = this.resultado + valor;
      }
    }
    else {
      this.resultado = this.resultado + valor;
      this.termo_2 = this.termo_2 + valor;
    }
       
    console.log("termo 1:", this.termo_1);
    console.log("termo 2:", this.termo_2);
  }

  limpar() {
    this.resultado = "0";
    this.operador_ativo = false;
    this.termo_1 = "";
    this.termo_2 = "";
    this.memoria = "0";
  }

  operador(operacao) {
    this.termo_1 = this.resultado;
    this.resultado = this.resultado + operacao;
    this.operador_ativo = true;
    this.operador_selecionado = operacao;
    if (operacao == "+") {
     
    }
   
    if (operacao == "-") {
     
    }

   
    if (operacao == "*") {
     
    }

   
    if (operacao == "/") {
     
    }

  }

 

}