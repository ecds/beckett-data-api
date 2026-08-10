// Selectize init for ActsAsTaggableField's text input, ported from the
// unmaintained administrate-field-acts_as_taggable gem's application.js.
$(function() {
  $(".field-unit--acts-as-taggable-field .field-unit__field > input").each(function(elem) {
    var $this = $(this);
    var opts = $this.data('tag-options');

    $this.selectize({
      delimiter: ", ",
      persist: false,
      options: opts,
      create: function(input) {
        return {
          value: input,
          text: input
        };
      }
    });
  })
});
