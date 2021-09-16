import React, { useState, useEffect } from "react";
import "./styles.css";

import fetchLight from "./fetch-light";

function App() {
  const [mode, setMode] = useState(true);

  useEffect(() => {
    if(mode === true){
      console.log(mode)
    }
    else {
      console.log(mode)
    }
  })

  return <div className="main">
      {/* <trafficLight /> */}
      <div className="traffic-light">
        <div className="red-light" />
        <div className="yellow-light" />
        <div className="green-light" />
      </div>
      <button className="toggle-mode-button" onClick={() => setMode(!mode)}>{mode === true ? "random light" : "ordered lights"}</button>
      <button className="change-button" onClick={changeLight}>
        Change!
      </button>
    </div>;
}

function trafficLight() {
  return <div className="traffic-light">
      <div className="red-light" />
      <div className="yellow-light" />
      <div className="green-light" />
    </div>;
}

function changeLight() {
  let color = fetchLight();
  color.then(function (result) {
    orderedColors(result);
  });
}

function randomColor(props) {
  let red = document.getElementsByClassName("red-light");
  let yellow = document.getElementsByClassName("yellow-light");
  let green = document.getElementsByClassName("green-light");
  if (props === "red") {
    red[0].style.background = props;
    yellow[0].style.background = "white";
    green[0].style.background = "white";
  } else if (props === "yellow") {
    red[0].style.background = "white";
    yellow[0].style.background = props;
    green[0].style.background = "white";
  } else {
    red[0].style.background = "white";
    yellow[0].style.background = "white";
    green[0].style.background = props;
  }
}

function orderedColors(props) {
  let red = document.getElementsByClassName("red-light");
  let yellow = document.getElementsByClassName("yellow-light");
  let green = document.getElementsByClassName("green-light");
  if (red[0].style.background === "red") {
    red[0].style.background = "white";
    yellow[0].style.background = "white";
    green[0].style.background = "green";
  } else if (yellow[0].style.background === "yellow") {
    red[0].style.background = "red";
    yellow[0].style.background = "white";
    green[0].style.background = "white";
  } else {
    red[0].style.background = "white";
    yellow[0].style.background = "yellow";
    green[0].style.background = "white";
  }
}

export default App;



// CSS
* {
    font-family: sans-serif;
    color: #666;
    font-weight: 400;
  }
  
  body {
    background-color: lightgrey;
  }
  
  .main {
    margin: auto 0;
    display: grid;
    grid-row-gap: 10px;
    justify-content: center;
  }
  
  .traffic-light {
    margin: 0 auto;
    height: 30vh;
    width: 10vh;
    background-color: black;
    border-radius: 5px;
    display: grid;
    grid-row-gap: 5px;
    padding: 10px;
  }
  
  .red-light {
    margin: 0 auto;
    height: 75px;
    width: 75px;
    background-color: white;
    border-radius: 50px;
  }
  
  .yellow-light {
    margin: 0 auto;
    height: 75px;
    width: 75px;
    background-color: white;
    border-radius: 50px;
  }
  
  .green-light {
    margin: 0 auto;
    height: 75px;
    width: 75px;
    background-color: white;
    border-radius: 50px;
  }
  
  .change-button {
    position: relative;
    border: 1px solid grey;
    border-radius: 10px;
      padding: 10px 20px;
      display: inline-block;
      text-align: center;
    color: white;
    background-color: #CBC3E3;
  }