<template>
    <v-container fluid>
        <v-row align="center" justify="center" style="height: 100vh;">
            <v-col cols="12" sm="" md="6">
                <v-card style="background-color: #D2001A;">
                    <v-row>
                        <v-col cols="5" class="pb-4">
                            <div align="center">
                                <v-img cover style="height: auto; width: 60%;"
                                    src="https://spidyhero.files.wordpress.com/2019/02/logo-mfu-v2.png?w=676"></v-img>
                            </div>
                            <div class="text-center" style="color: white;">
                                <h4>Mae Fah Luang University</h4>
                                <h5>มหาวิทยาลัยแม่ฟ้าหลวง</h5>
                            </div>
                        </v-col>
                        <v-col cols="7">
                            <v-card-title class="justify-center">
                                <div style="font-size: 14px;">Please use email account to login</div>
                            </v-card-title>
                            <form>
                                <v-row class="justify-center my-2" >
                                    <label for="username"></label>
                                    <input v-model="username" placeholder="Username" autocomplete="off" required type="text" />
                                </v-row>
                                <v-row class="justify-center my-2">
                                        <label for="password"></label>
                                        <input v-model="password" placeholder="Password"  autocomplete="off" required type="password" />
                                </v-row>
                                <v-row class="justify-center pb-4">
                                    <button class="button" type="submit">Login</button>
                                </v-row>
                            </form>
                        </v-col>
                    </v-row>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>
  
<script>
export default {
    name: 'LoginPage',
};
</script>
  
<style scoped>
/* Add any additional styles here if needed */
.button {
    background-color: white;
    color: #D2001A;
    border-radius: 20px;
    padding: 10px;
    width: 80%;
    border: none;
}

::placeholder{
    color: #D2001A;
}

input{
    background-color: white;
    color: black;
    border-bottom: 1px solid white;
    width: 80%;
    padding: 10px;
    margin: 10px;
    border-radius: 12px;
}
</style>
  