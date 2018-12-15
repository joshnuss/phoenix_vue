<template>
  <div>Hello from {{name}}!</div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      name: "Vue"
    }
  }
};
</script>

<style scoped>
  div {
    background: pink;
    text-align: center;
    padding: 2em;
  }
</style>
