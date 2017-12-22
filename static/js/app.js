import localforage from 'localforage';
import R from 'ramda'
import Clipboard from 'clipboard'

localforage.config({
  name: 'elm-yimi'
});

const service_key = "services"

var clipboard = new Clipboard("#copybutton")

const subscribe = (ports) => {
  ports.saveServices.subscribe((services) => {
    localforage.setItem(service_key, services, function(err, value){
      if(R.isNil(err)){
        ports.saveServiceSucc.send(value)
      } else {
        ports.saveServiceFail.send("Save Error")
      }
      console.log(value);
    })
  });

  ports.getServices.subscribe((key) => {
    localforage.getItem(service_key, function(err, value){
      var services = undefined;
      console.log(value);

      if(!R.isNil(err) || R.isNil(value)){
        services = []
      } else {
        services = value
      }

    })
  })
}

