<template>
  <v-container>
    <v-row class="text-center">
      <v-flex xs12>
        <v-img class="my-10" contain height="300" src="../../src/assets/PRODINIT.svg"></v-img>
      </v-flex>
      <v-col class="mb-4">

        <h1 class="display-2 font-weight-bold mb-3">
          A Software Development Company
        </h1>

        <p class="subheading font-weight-regular">
          Scale your business with our custom technology solution, web development, automation and cloud services.
        </p>
        <p class="subheading font-weight-regular">
        Hire Web and App Developers or apply for Software Development Services.
        </p>
        <v-btn flat to="/contact" active-class="blue--text headline">
          Tell us your idea
        </v-btn>
      </v-col>

      <v-col
        class="mb-5"
        cols="12"
      >
        <h2 class="headline font-weight-bold mb-3">
          Website Under Development. Raise a PR here, if you want to contribute...
        </h2>
        <v-btn flat href="https://github.com/dishantsethi/prodinit" target="_blank" active-class="blue--text headline">
          Github
        </v-btn>
      </v-col>

    </v-row>
  </v-container>
</template>

<script>
  export default {
    name: 'HelloWorld',

    data: () => ({
      ecosystem: [
        {
          text: 'vuetify-loader',
          href: 'https://github.com/vuetifyjs/vuetify-loader',
        },
        {
          text: 'github',
          href: 'https://github.com/vuetifyjs/vuetify',
        },
        {
          text: 'awesome-vuetify',
          href: 'https://github.com/vuetifyjs/awesome-vuetify',
        },
      ],
      importantLinks: [
        {
          text: 'Documentation',
          href: 'https://vuetifyjs.com',
        },
        {
          text: 'Chat',
          href: 'https://community.vuetifyjs.com',
        },
        {
          text: 'Made with Vuetify',
          href: 'https://madewithvuejs.com/vuetify',
        },
        {
          text: 'Twitter',
          href: 'https://twitter.com/vuetifyjs',
        },
        {
          text: 'Articles',
          href: 'https://medium.com/vuetify',
        },
      ],
      whatsNext: [
        {
          text: 'Explore components',
          href: 'https://vuetifyjs.com/components/api-explorer',
        },
        {
          text: 'Select a layout',
          href: 'https://vuetifyjs.com/getting-started/pre-made-layouts',
        },
        {
          text: 'Frequently Asked Questions',
          href: 'https://vuetifyjs.com/getting-started/frequently-asked-questions',
        },
      ],
    }),
  }
</script>
