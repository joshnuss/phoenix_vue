<template>
  <div>
    <Title>Hello from {{name}}!</Title>

    <h2>Socket log</h2>
    <ul>
      <li
        v-for='log in logs'
        :key="log.$index">{{log}}</li>
    </ul>
  </div>
</template>

<script>
import Title from './components/Title.vue';

export default {
  name: 'App',
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

<style scoped>
  h1 {
    background: pink;
    text-align: center;
    padding: 2em;
  }
</style>
