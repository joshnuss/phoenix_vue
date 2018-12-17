<template>
  <div>
    <Title>Hello from {{name}}!</Title>

    <p>
      <router-link to="/contact">Contact</router-link>
    </p>

    <h2>Socket log</h2>
    <ul>
      <li
        v-for='log in logs'
        :key="log.$index">{{log}}</li>
    </ul>
  </div>
</template>

<script>
import Title from '../components/Title.vue';

export default {
  name: 'Home',
  components: {
    Title
  },
  computed: {
    name() {
      return this.$store.state.name;
    },
    logs() {
      return this.$store.state.logs;
    }
  }
};
</script>
