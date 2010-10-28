<!-- This is a utility JSP that closes any Dojo Modal dialogs -->
<script type="text/javscript">
dojo.query(".dijitDialog").forEach(function(element) {
	dijit.byId(element.id).hide();
});
</script>