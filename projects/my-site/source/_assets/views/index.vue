<template>
  <div class="row">
    <ul>
      <li v-for="(item, i) in items" :key="i">{{ item.title }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      items: [{ title: "title1" }, { title: "title2" }, { title: "title3" }],
    };
  },
};
</script>

<style scoped>
.row {
  padding: 50px;
}
</style>