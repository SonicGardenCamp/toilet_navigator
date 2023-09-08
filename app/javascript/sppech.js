document.addEventListener('turbo:load', () => {
  const startBtn = document.querySelector('.js-startBtn');
  const search_form = document.forms.searchForm
  const addressInput = search_form.elements["q[address_cont]"];
  
  startBtn.addEventListener('click', () => {
    SpeechRecognition = webkitSpeechRecognition || SpeechRecognition;
    const recognition = new SpeechRecognition();
  
    recognition.start();
  
    recognition.onresult = (event) => {
      addressInput.value = event.results[0][0].transcript;
    }
  })
})