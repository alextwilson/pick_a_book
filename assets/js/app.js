import "phoenix_html"
import React from "react"
import ReactDOM from "react-dom"
class HelloReact extends React.Component {
  render() {
    return (<h1>Hello React!</h1>)
  }
}
ReactDOM.render(
  <HelloReact/>,
  document.getElementById("hello-react")
)

class NewBookForm extends React.Component {
  render() {
    return (
      <form>
        <label>Title: <input type="text" title="title" /></label><br></br>
        <label> Author: <input type="text" author="author" /></label><br></br>
        <label> Genre: <input type="text" genre="genre" /></label><br></br>
        <label> Description: <input type="text" description="description" /></label>
        <input type="submit" value="Submit" />
      </form>
      )
  }
}

ReactDOM.render(
  <NewBookForm />,
  document.getElementById("book-form")
)
