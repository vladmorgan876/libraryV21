<template>
    <div>
        <div class="container">
          <div style="text-align: center; color: red"  >
            {{ message2 }}
          </div>
          <div style="text-align: center" class="alert alert-danger" v-if="errors===true">
              Пароль должен содержать минимум 8 знаков
          </div>
            <div style="text-align: center" class="alert alert-danger" v-if="errors2===true">
               Введите адрес вашей электронной почты
            </div>

            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Авторизация</div>

                        <div class="card-body">

                            <form @submit.prevent="login">

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">E-Mail Адрес</label>

                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control" name="email" v-model="email">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Пароль</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control" name="password" v-model="password">
                                    </div>
                                </div>
                                <div class="form-group row mb-0">
                                    <div class="col-md-8 offset-md-4">
                                        <button type="submit" class="btn btn-primary">
                                            Авторизироваться
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>

<script>
export default {
    name: "AuthComponent",
    data() {
        return {
            email: '',
            password: '',
            message2: '',
            errors:false,
            errors2:false,
        }
    },
    methods: {
        login() {
            if(this.password.length<8){
                this.errors=true;
            }
            else if (this.email.length===0){
                this.errors2=true;
            }
            else {
                axios.post('api/login', {email: this.email, password: this.password})
                    .then((response) => {
                            debugger;
                            this.message = response.data.token;
                            console.log(this.message)
                            if (this.message) {

                                axios.post('/login', {email: this.email, password: this.password});
                                setTimeout(function () {
                                    window.location.href = "/home"
                                }, 2000);
                                // window.location.href = "home";
                            } else {
                                this.message2 = 'Вы не прошли авторизацию'
                            }
                        }
                    )

            }


        }
    }
}
</script>

<style scoped>

</style>
