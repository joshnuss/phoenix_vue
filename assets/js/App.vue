<template>
  <Title>Hello from {{name}}!</Title>
</template>

<script>
import Title from './components/Title.vue';

export default {
  name: 'App',
  components: {
    Title
  },
  data() {
    return {
      name: "Vue"
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
