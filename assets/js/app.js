import "phoenix_html";
import React from "react";
import ReactDOM from "react-dom";

import { BrowserRouter as Router, Route, Link } from "react-router-dom";
// import { routes } from "./routes";

class HelloReact extends React.Component {
  render() {
    return (
      <Router>
        <div>
          <Route exact path="/" component={Home} />
          <Route path="/login" component={Login} />
          <Route path="/books/new" component={NewBook} />
        </div>
      </Router>
    );
  }
}

class Home extends React.Component {
  render() {
    return (
      <div>
        <h1>Hello React!</h1>
        <Link to="/login">Login</Link>
        <br />
        <Link to="/books/new">Add a book</Link>
      </div>
    );
  }
}
class Login extends React.Component {
  render() {
    return (
      <div>
        <h1>Hello Boring Login Page!</h1>
        <Link to="/">Home</Link>
      </div>
    );
  }
}

class NewBook extends React.Component {
  render() {
    return (
      <div>
        <h1>New Book Page</h1>

        <Link to="/">Home</Link>
      </div>
    );
  }
}

ReactDOM.render(<HelloReact />, document.getElementById("hello-react"));
// ReactDOM.render(
//   <BrowserRouter children={routes} />,
//   document.getElementById("react-app")
// );
