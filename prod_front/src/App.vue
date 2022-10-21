<template>
  <v-app>
    <v-content>
      <v-container align-center>
        <TheHeader />

        <transition
          name="router-animation"
          mode="out-in"
          enter-active-class="animated fadeIn fast"
          leave-active-class="animated fadeOut faster"
        >
          <router-view></router-view>
        </transition>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
import TheHeader from "./components/TheHeader";
export default {
  name: "App",
  components: {
    TheHeader,
    
  }
};
</script>
<style>
@import "https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css";
.v-main {
  background: black;
}
</style>