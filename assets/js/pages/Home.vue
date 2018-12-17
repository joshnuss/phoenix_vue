<template>
  <div>
    <Title>Socket log</Title>
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
