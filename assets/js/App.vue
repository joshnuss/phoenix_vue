<template>
  <v-app>
    <v-navigation-drawer app v-model="drawer">
      <v-list>
        <v-list-tile to="/" @click="toggleDrawer">
          <v-list-tile-action>
            <v-icon>fa-home</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title >Home</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
        <v-list-tile to="/contact" @click="toggleDrawer">
          <v-list-tile-action>
            <v-icon>fa-envelope</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title >Contact</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>
    <v-toolbar app color="white">
      <v-toolbar-side-icon @click.stop="toggleDrawer()">
        <v-icon>fa-bars</v-icon>
      </v-toolbar-side-icon>
      <v-toolbar-title>
        <router-link to="/">
          <img class="logo" src="/images/phoenix.png"/>
        </router-link>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn icon to="/contact">
          <v-icon>fa-envelope</v-icon>
        </v-btn>
      </v-toolbar-items>
    </v-toolbar>
    <v-content>
      <v-container fluid>
        <router-view></router-view>
      </v-container>
    </v-content>
    <v-footer dark inset fixed height="auto">
      <v-card class="flex" flat tile>
        <v-card-title class="teal">
          <strong class="subheading">This is super cool!</strong>

          <v-spacer></v-spacer>

          <v-tooltip
            v-for="icon in icons"
            :key="icon"
            bottom>
            <v-btn class="mx-1" dark icon slot="activator">
              <v-icon size="24px">{{ icon.name }}</v-icon>
            </v-btn>
            <span>{{icon.tooltip}}</span>
          </v-tooltip>
        </v-card-title>

        <v-card-actions class="grey darken-3 justify-center">
          &copy;{{year}} —&nbsp;<strong>My App</strong>
        </v-card-actions>
      </v-card>
    </v-footer>
  </v-app>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      drawer: false,
      icons: [
        {
          name: "fa-envelope",
          tooltip: "Contact us"
        },
        {
          name: "fa-twitter",
          tooltip: "Twitter"
        },
        {
          name: "fa-facebook",
          tooltip: "Facebook"
        },
        {
          name: "fa-github",
          tooltip: "GitHub"
        },
        {
          name: "fa-medium",
          tooltip: "Medium"
        }
      ]
    }
  },
  computed: {
    year() {
      return (new Date()).getYear() + 1900
    }
  },
  methods: {
    toggleDrawer() {
      this.drawer = !this.drawer
    }
  }
}

</script>

<style scoped>
img.logo {
  height: 1.4em;
  margin-top: 0.5em;
}
</style>
