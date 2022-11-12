const products = [
  { nombre: "Sueter", precio: 250 , descripcion: "dsnjsdjkhkjsdnhb" },
  { nombre: "Botas", precio: 800, descripcion: "dsnjsdjkhkjsdnhb" },
  { nombre: "Reloj", precio: 400, descripcion: "dsnjsdjkhkjsdnhb" },
  { nombre: "Fundas para celular", precio: 200, descripcion: "dsnjsdjkhkjsdnhb" },
  { nombre: "Cangurera", precio: 150, descripcion: "dsnjsdjkhkjsdnhb" },
];

function filtrarproducto() {
  debugger;
  var filtroValor = products.filter((p) => p.nombre === $("#txtBuscar").val());
  
  $("#message").html("");
  alert(`${filtroValor[0]?.nombre} - ${filtroValor[0]?.precio}`);
  $("#txtBuscar").val("");
}
