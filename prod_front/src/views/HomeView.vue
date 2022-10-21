<template>
    <v-content>
      <HelloWorld />
      
      <MainFooter />
    </v-content>
</template>

<script>
  import MainFooter from "../components/MainFooter";
  import HelloWorld from "../components/HelloWorld"
  export default {
    name: 'HomeView',
    components: {
      MainFooter,
      HelloWorld
    }

  }
</script>

<style>
@import "https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css";
</style>