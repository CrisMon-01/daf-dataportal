import { serviceurl } from "../../config/serviceurl";


export const apiURLs = {
  kataLOD: serviceurl.urlKatalod + "/kb/api/v1" //,
  // semanticValidator: `${commonBaseURL}:9000/validator`,
  // // LODView: `${commonBaseURL}:8080/lodview`,
  // LODE: `${commonBaseURL}:9090/lode/extract?url=`,
  // WebVOWL: `${commonBaseURL}:8080/webvowl/#iri=`
};

export const jsonRequest = {
  method: "GET",
  headers: new Headers({
    "Content-Type": "application/json",
    Accept: "application/json"
  }),
  mode: "cors",
  cache: "no-cache"
};

/* export const validationFormRequest = formData => ({
  method: "POST",
  body: formData
});
 */