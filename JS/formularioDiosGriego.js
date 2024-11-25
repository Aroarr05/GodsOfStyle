document.getElementById('quizForm').addEventListener('submit', function(event) {
  event.preventDefault();
  const form = event.target;
  const resultDiv = document.getElementById('result');
  const q1 = form.q1.value;
  const q2 = form.q2.value;
  const q3 = form.q3.value;

  let resultText = "Eres ";

  if (q1 === "fuego" && q2 === "pelear" && q3 === "verano") {
      resultText += "Ares, el dios de la guerra.";
  } else if (q1 === "agua" && q2 === "navegar" && q3 === "invierno") {
      resultText += "Poseidón, el dios del mar.";
  } else if (q1 === "tierra" && q2 === "cultivar" && q3 === "primavera") {
      resultText += "Deméter, la diosa de la agricultura.";
  } else if (q1 === "aire" && q2 === "viajar" && q3 === "otoño") {
      resultText += "Hermes, el dios mensajero.";
  } else {
      resultText += "una combinación única de varios dioses.";
  }

  // Mostrar el resultado al usuario
  resultDiv.textContent = resultText;
  resultDiv.style.display = 'block';

  // Enviar los datos del formulario al servidor
  const formData = new FormData(form);
  fetch('PHP/formularioDiosGriego.php', {
      method: 'POST',
      body: formData
  })
  .then(response => {
      if (!response.ok) {
          throw new Error('Hubo un problema al enviar los datos del formulario.');
      }
      return response.text();
  })
  .then(data => {
      console.log(data); // Aquí puedes manejar la respuesta del servidor si es necesario
  })
  .catch(error => {
      console.error('Error:', error);
  });
});
