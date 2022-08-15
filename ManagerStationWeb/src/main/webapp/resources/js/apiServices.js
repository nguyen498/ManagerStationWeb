const spinner = document.getElementsByClassName("spinner-border")[0];
const icon = document.getElementsByClassName("icon")[0];
const myToastEl = document.getElementById('liveToast');
var myToast = new bootstrap.Toast(myToastEl);
// Pass single element
//const element = document.querySelector('#choices-button');
//const choices = new Choices(element);
  
const handleMsg = (res) => {
    
    const data = res.data;
    if (data) {
        myToast._element.childNodes[3].innerText = "Create Successfully";
        icon.style.fill = "var(--bs-success)";
        myToast.show();
    } else {
        myToast._element.childNodes[3].innerText = "Create failed";
        icon.style.fill = "var(--bs-danger)";
        myToast.show();
    }
    
    spinner.classList.add("d-none");
};

const httpRequest = axios.create({
  baseURL: 'http://localhost:8080/busapp/api/'
});

 const get = async (path, options = {}) => {
  const response = await httpRequest.get(path, options);
  return response.data;
};

 const post = async (path, data, options = {}) => {
  const response = await httpRequest.post(path, data, options);
  return response.data;
};

const submitForm = (e) => {
    spinner.classList.remove("d-none");
    e.preventDefault();

    const formData = new FormData(e.target);
    const inputObject = Object.fromEntries(formData); // convert the FormData object to a JSON object

//    console.log(inputObject);
    return inputObject;
};

 const addLocation = async (e) => {
  try {
    const formData = submitForm(e);
    const res = await httpRequest.post("location", formData);
    
    handleMsg(res);
    console.log(res);
  } catch (error) {
    console.log(error);
  }
};


