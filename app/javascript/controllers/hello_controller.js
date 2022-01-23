import {Controller} from "stimulus";
export default class extends Controller{

    static targets = ["name","output"]

    connect() {
        // alert("entraste al stimulus!")
        this.nameTarget.value = 0

    }

    greet(){
        this.outputTarget.textContent = `El numero es: ${this.hereSum()}`
    }

    hereSum(){
        var a = 1
        return a + this.nameTarget.value++
    }


    // static values = {number: Number}

    // connect(){
    //     this.numberValueChanged()
    // }
    //
    // greet(){
    //     this.numberValue ++
    // }
    //
    // numberValueChanged(){
    //     this.outputTarget.textContent = this.numbervalue
    // }


}

