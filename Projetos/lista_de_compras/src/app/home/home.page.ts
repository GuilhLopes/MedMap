import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor() {}

  variavel_lista = [];
  variavel_valor = [];
  texto: string = "";
  valor: string = "";
  soma: string = "0";

  Salvar(){
    let Numero = parseInt(this.valor);
    let adicao = parseInt(this.soma);
    
    
    if(!(this.texto == "")){
      this.variavel_lista.push(this.texto);
      
    }

    if(!(this.valor == "")){
      this.variavel_valor.push(this.valor);
      this.soma = (Numero + adicao).toString();
    }
    this.valor = "";
    this.texto = "";

  }

  Remover(indice){
    let Numero = parseInt(this.variavel_valor[indice])
    let remocao = parseInt(this.soma);

    this.soma = (remocao - Numero).toString()

    this.variavel_lista.splice(indice, 1);
    this.variavel_valor.splice(indice, 1);

  }

  //*ngFor = "let item of variavel_lista" no item
  //[(ngModel)]="texto" no input

}
