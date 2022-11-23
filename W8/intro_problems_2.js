const printCallback= (s)=>{ 
    console.log(`Mx. ${s} Jingleheimer Schmidt`);
}

function titleize(arr, callback){

    arr.forEach((s) => {
        callback(s);
    })

}


//console.log(titleize(["Mary", "Brian", "Leo"], printCallback));


function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elephant goes phrRRRRRRRRRRR!!!!!!!`);
}

Elephant.prototype.grow = function(){
    this.height += 12;

}

Elephant.prototype.addTrick = function(trick){ 
    this.tricks.append(trick);
}

//Elephant.prototype.play(){
//    let choice = Math.random() * (this.tricks.length -1);
//    
//    console.log(`${this.name} is ${this.tricks.length[choice]}}!`);
//}
//



let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

ellie.trumpet()


function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);
  
    return function (food) {
      order = `${order.slice(0, order.length - 8)} and ${food} please.`;
      console.log(order);
    };
  };
  