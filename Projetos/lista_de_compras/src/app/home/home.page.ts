import { Component } from '@angular/core';
import { Storage } from '@ionic/storage-angular';


@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor(private storage:Storage) {
    this.storage.create();
  }

  ngOnInit(){
    this.atualizaLista();
  }

  variavel_lista = [[]];
  variavel_valor = [];
  texto: string = "";
  valor: string = "";
  soma: string = "0";
  aux = 0;

  async Salvar(){
    let Numero = parseInt(this.valor);
    let adicao = parseInt(this.soma);
    
    
    if(!(this.texto == "")){

      this.variavel_lista.forEach(item => {
        if(parseInt(item[0]) > this.aux){
          this.aux = parseInt(item[0]);
        }
      })

      this.aux = this.aux + 1;

      await this.storage.set(this.aux.toString(), this.texto);
      this.atualizaLista();
      this.texto = "";
      
    }

    if(!(this.valor == "")){
      this.variavel_valor.push(this.valor);
      
      this.soma = (Numero + adicao).toString();
    }
    this.valor = "";
    

  }

  atualizaLista(){
    this.variavel_lista = [];
    this.storage.forEach((valor, key, index ) =>{
    this.variavel_lista.push([key,valor])
  })
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
