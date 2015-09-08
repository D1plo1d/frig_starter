let React = require("react/addons")
let Frig = require("frig").Form

export default React.createClass({
  mixins: [
    React.addons.LinkedStateMixin
  ],

  getInitialState() {
    return {
      account: {
        username: "d1plo1d",
        password: "hunter2",
      }
    }
  },

  render() {
    return <div className="container">
      <div className="row">
        <div className="col-xs-12">
          <h1>Hello World</h1>
        </div>
      </div>
    </div>
  },
})
