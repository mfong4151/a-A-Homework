document.addEventListener("DOMContentLoaded", function(){

    const canvas = document.getElementById("mycanvas")
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    const context = canvas.getContext("2d");
    //context.fillStyle ="blue";
    //context.fillRect(40, 60, 400, 400)

    context.beginPath();
    context.arc(250, 250, 100,0, 2*Math.PI, true);
    context.strokeStyle = "blue";
    context.lineWidth = 5;
    context.stroke()
    context.fillStyle = "blue";
    context.fill();

});
