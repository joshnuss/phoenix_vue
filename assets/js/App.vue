<template>
  <Title>Hello from {{name}}!</Title>
</template>

<script>
import Title from './components/Title.vue';

export default {
  name: 'App',
  data() {
    return {
      name: "Vue"
    }
  },
  components: {
    Title
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
