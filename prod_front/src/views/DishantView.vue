<template>
    <div>
        <v-layout column justify-center align-center class="mt-4 pt-2">
            <VueCompareImage
            class="hidden-md-and-down"
            hover
            :style="{ minWidth: '1300px' }"
            :sliderLineWidth="sliderLine"
            :handleSize="hSize"
            :leftImage="leftImage"
            :rightImage="rightImage"
            :sliderPositionPercentage="sliderPosition"
            />
            <VueCompareImage
            class="hidden-lg-and-up"
            hover
            :style="{ maxWidth: '400px' }"
            :sliderLineWidth="sliderLine"
            :handleSize="hSize"
            :leftImage="leftImage2"
            :rightImage="rightImage2"
            :sliderPositionPercentage="sliderPosition"
            />

            <br>

        <vue-typer class="headline" :repeat="0" text="Dishant Sethi"></vue-typer>
        <vue-typer
        :text="text1"
        :repeat="Infinity"
        :shuffle="true"
        initial-action="erasing"
        :pre-type-delay="70"
        :type-delay="70"
        :pre-erase-delay="1980"
        :erase-delay="50"
        erase-style="select-back"
        :erase-on-complete="false"
        caret-animation="smooth"
        ></vue-typer>
        <br>

        <v-flex xs12 sm6 md4 lg4 xl4>
            <v-card flat color="transparent" max-width="500">
                <div>
                <p>
                    Hello! I’m Dishant Sethi. I'm passionate about building great products, web applications, automation systems and solving mordern problems using technology.
                    When I'm not coding, you'll find me traveling and exercising.
                </p>
                </div>

                <v-card-actions class="hidden-sm-and-down">
                <v-btn
                    v-for="icon in icons"
                    :key="icon.icon"
                    fab
                    dark
                    outlined
                    color="blue"
                    :href="icon.href"
                    target="_blank"
                >
                    <v-icon dark>{{icon.icon}}</v-icon>
                </v-btn>
                </v-card-actions>

                <v-card-actions class="hidden-md-and-up justify-center">
                <v-btn
                    v-for="icon in icons"
                    :key="icon.icon"
                    small
                    fab
                    dark
                    outlined
                    color="blue"
                    :href="icon.href"
                    target="_blank"
                >
                    <v-icon dark>{{icon.icon}}</v-icon>
                </v-btn>
                </v-card-actions>
            </v-card>
        </v-flex>
        </v-layout>
        <TheFooter />
    </div>
</template>

<script>
import { VueTyper } from "vue-typer";
import VueCompareImage from "vue-compare-image";
import TheFooter from "../components/TheFooter"
export default {
    name: "DishantView",
    components: {
        TheFooter,
        "vue-typer": VueTyper,
        VueCompareImage
    },
    data() {
    return {
      icons: [
        {
          href: "https://linkedin.com/in/dishantsethi",
          icon: "fab fa-linkedin-in"
        },
        { 
          href: "https://api.whatsapp.com/send?phone=919582565371&text=Hello%20Dishant",
          icon: "fab fa-whatsapp"
        },
        { href: "https://twitter.com/Dishantsethi14", icon: "fab fa-twitter" },
        { 
          href: "https://github.com/dishantsethi",
          icon: "fab fa-github"
        },
        { 
          href: "https://dishantsethi.wordpress.com",
          icon: "fab fa-wordpress"
        },
        { 
          href: "https://gitlab.com/dishantsethi",
          icon: "fab fa-gitlab"
        },
        { 
          href: "https://www.instagram.com/dishantsethii",
          icon: "fab fa-instagram"
        }
      ],
      text1: ["Back-End Developer", "Web Developer", "DevOps Engineer", "Front-End Developer", "Entrepreneur", "Freelancer"],
      leftImage: require("../assets/left1.png"),
      rightImage: require("../assets/right1.png"),
      leftImage2: require("../assets/left2.png"),
      rightImage2: require("../assets/right2.png"),
      sliderLine: 0,
      hSize: 0,
      sliderPosition: 0.5
    };
  }
}
</script>
<style>
@keyframes rocking {
  0%,
  100% {
    transform: rotateZ(-10deg);
  }
  50% {
    transform: rotateZ(10deg);
  }
}
.vue-typer {
  font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
}
.vue-typer .custom.char.typed {
  color: blue;
}
.vue-typer .custom.char.selected {
  color: #e91e63;
}
.vue-typer .custom.caret {
  animation: rocking 1s ease-in-out 0s infinite;
}
.vue-typer .custom.caret.typing {
  background-color: blue;
}
.vue-typer .custom.caret.selecting {
  display: inline-block;
  background-color: #e91e63;
}
.v-main {
    background: unset;
}
</style>