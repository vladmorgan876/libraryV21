
require('./bootstrap');
window.Vue = require('vue');
Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('catalogcomponent',require('./components/CatalogComponent.vue').default);
Vue.component('authcomponent',require('./components/AuthComponent.vue').default);
const app = new Vue({
    el: '#app',
});
