// import { Provider, connect } from "react-redux";

class AddButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isToggleOn: false };
    // console.log('Provider', Provider)
    // This binding is necessary to make `this` work in the callback
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {
    this.setState(state => ({
      // isToggleOn: !state.isToggleOn
      isToggleOn: true
    }));
  }

  render() {
    return (
        <div className="row">
          <div className="col-12">
            <button type="button" onClick={this.handleClick} className="btn btn-primary btn-add">  <img src="/assets/icon_button.png" alt="customer" />  Adicionar negócio</button>
          </div>
          legal:  {this.state.isToggleOn ? 'ON' : 'OFF'}  
        </div>
    )
  }
}