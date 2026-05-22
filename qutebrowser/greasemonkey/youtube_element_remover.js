// ==UserScript==
// @name         Remove Elements with Text (MutationObserver)
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Remove elements in the sidebar and main section if they contain specified text(s)
// @author       You
// @match        *://www.youtube.com/*
// @grant        none
// ==/UserScript==

(function () {
  "use strict";
  console.log("HERE")

  // Function to remove elements in the sidebar if they contain specified text
  function removeSidebarElementsWithText(texts) {
    var elementsToRemove = document.querySelectorAll(
      "#items > ytd-guide-entry-renderer",
    );

    elementsToRemove.forEach(function (element) {
      texts.forEach(function (text) {
        if (element.innerText.includes(text)) {
          element.remove();
        }
      });
    });
  }

  // Function to remove elements in the main section if they contain specified text
  function removeMainSectionElementsWithText(texts) {
    var sections = document.querySelectorAll(
      "ytd-rich-section-renderer",
    );

  for (const s of sections) {
      const titleContainer = s.querySelector("#title-container")
        texts.forEach(function (text) {
          if (titleContainer.innerText.includes(text)) {
            s.remove();
          }
      });
    }
  }


  let blistSidebar = ["Home", "Shorts"];
  let blistMainSection= ["Shorts"];

  // Function to be called when mutations are observed
  function handleMutations(mutationsList, observer) {
    removeSidebarElementsWithText(blistSidebar); 
    removeMainSectionElementsWithText(blistMainSection); 
  }

  // Options for the observer (which mutations to observe)
  const observerConfig = { childList: true, subtree: true };

  // Create an observer instance linked to the callback function
  const observer = new MutationObserver(handleMutations);

  // Start observing the target node for configured mutations
  observer.observe(document.body, observerConfig);

  // Perform initial removal on page load
  removeElementsWithText(blist); // Adjust the texts as needed
})();
