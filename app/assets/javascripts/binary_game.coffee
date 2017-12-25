# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

loadPageHandler =-> 
  highNumberBox = document.querySelector '#top-limit-number'
  highNumberLabel = document.querySelector '#number-label'
  attempsLabel = document.querySelector '#attemps-label'
  numberGuessedLabel = document.querySelector '#guess-label'
  guessDiv = document.querySelector '#div-guess'
  numberGuessDiv = document.querySelector '#number-guess'
  guessAttempsLabel = document.querySelector '#label-attemps-used'
  
  attempsTotal = 0;
  attempsUsed = 0;
  high = 0;
  mid = 0;
  low = 0;
  
  startGame =->
    # calculate how many available attemps
    attempsTotal = Math.ceil(Math.log(highNumberBox.value)/Math.log(2))
    # set high variable
    high = Number(highNumberBox.value)
    
    # print how many ordered numbers to choose from
    highNumberLabel.textContent = high
    # print how many available attemps
    attempsLabel.textContent = attempsTotal
    
    # show text to show how many numbers and no of attemps
    guessDiv.style.display = 'block'
    return
  
  guess =->
    numberGuessDiv.style.display = 'block'
    numberGuessedLabel.textContent = binarySearch(low, high)
    guessAttempsLabel.textContent = ++attempsUsed
    
  binarySearch =->
    mid = Math.ceil((low+high)/2)
    
  guessAgain =(event)->
    console.log(event.srcElement.id)
    if('btn-no-greater' == event.srcElement.id)
      low = mid
    else
      high = mid
    return

  finishGame =(event)->
    alert("well done!")

  document.querySelector('#btn-start').addEventListener('click', startGame);
  document.querySelector('#btn-guess').addEventListener('click', guess);
  document.querySelector('#btn-yes').addEventListener('click', finishGame);
  document.querySelector('#btn-no-greater').addEventListener('click', guessAgain);
  document.querySelector('#btn-no-less').addEventListener('click', guessAgain);
  
  return
  
  

document.addEventListener('DOMContentLoaded', loadPageHandler)