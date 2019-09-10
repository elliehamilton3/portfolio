<template>
  <div>
  </div>
</template>

<script>
import markdownIt from "markdown-it";
import emoji from "markdown-it-emoji";
export default {
  props: {
    content: {
      default: "",
      type: String
    },
    title: {
      default: "",
      type: String
    },
    inline: {
      default: false,
      type: Boolean
    }
  },
  mounted() {
    var md = new markdownIt().use(emoji);
    var result;
    if (this.inline) {
      result = md.renderInline(this.content);
    } else if  (this.title) {
      result = md.render(this.title);
    } else {
      result = md.render(this.content);
    }
    this.$el.innerHTML = result;
  }
};
</script>

<style>
</style>