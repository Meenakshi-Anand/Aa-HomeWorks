document.addEventListener("DOMContentLoaded", function(){
  const el = document.getElementById("mycanvas");
  el.width = 500;
  el.height = 500;

  const ctx = el.getContext("2d");
  ctx.fillStyle = "purple";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "yellow";
  ctx.lineWidth = 7;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();

  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "orange";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "green";
  ctx.fill();
});
