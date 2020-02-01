import React from 'react';
import logo from './image/dogo.png';
import './App.css';
import Hi from './Hi'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <Hi />
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React right now bruh
        </a>
      </header>
    </div>
  );
}

export default App;
