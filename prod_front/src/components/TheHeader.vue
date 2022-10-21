<template>
    <div>
        <v-navigation-drawer v-model="drawer" absolute temporary app width="150" height="340">
            <v-list class="pt-4">
                <v-list-item active-class="blue--text" to="/">
                    <v-list-item-title>Home</v-list-item-title>
                </v-list-item>
                <v-list-item active-class="blue--text" to="/about">
                    <v-list-item-title>About</v-list-item-title>
                </v-list-item>
                <v-list-item active-class="blue--text" to="/services">
                    <v-list-item-title>Services</v-list-item-title>
                </v-list-item>
                <v-list-item active-class="blue--text" to="/projects">
                    <v-list-item-title>Projects</v-list-item-title>
                </v-list-item>
                <v-list-item active-class="blue--text" to="/team">
                    <v-list-item-title>Team</v-list-item-title>
                </v-list-item>
                <v-list-item active-class="blue--text" to="/hire">
                    <v-list-item-title>Hire Developers</v-list-item-title>
                </v-list-item>
                <v-list-item active-class="blue--text" to="/contact">
                    <v-list-item-title>Contact</v-list-item-title>
                </v-list-item>
            </v-list>
        </v-navigation-drawer>

        <v-toolbar flat dense color="transparent" scroll-off-screen>
            <v-app-bar-nav-icon class="hidden-md-and-up" @click.stop="drawer = !drawer"><i class="fa fa-bars"></i></v-app-bar-nav-icon>
            <v-img src="../../src/assets/PRODINIT_WHITE.png" max-height="55" max-width="160"></v-img>
            <!-- <v-toolbar-title class="headline"> -->
                <!-- <span> -->
                <!-- </span> -->
                <!-- <span class="font-weight-light">Prod</span> -->
                <!-- <span class="blue--text">Init</span> -->
            <!-- </v-toolbar-title> -->
            <v-spacer></v-spacer>

            <v-toolbar-items class="hidden-sm-and-down">
                <v-btn flat to="/" active-class="blue--text headline">Home</v-btn>
                <v-btn flat to="/about" active-class="blue--text headline">About</v-btn>
                <v-btn flat to="/services" active-class="blue--text headline">Services</v-btn>
                <v-btn flat to="/projects" active-class="blue--text headline">Projects</v-btn>
                <v-btn flat to="/team" active-class="blue--text headline">Team</v-btn>
                <v-btn flat to="/hire" active-class="blue--text headline">Hire Developers</v-btn>
                <v-btn flat to="/contact" active-class="blue--text headline">Contact</v-btn>
            </v-toolbar-items>
        </v-toolbar>
    </div>
</template>

<script>
export default {
  data() {
    return {
      drawer: null
    };
  }
};
</script>

<style >
.v-btn--is-elevated {
    box-shadow: unset;
}
</style>