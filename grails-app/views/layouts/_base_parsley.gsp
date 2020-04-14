<asset:stylesheet rel="stylesheet" href="parsley/src/parsley.css"/>
<asset:javascript src="parsley/dist/parsley.js"/>
<script>
    $(document).ready(function() {
        $('form').parsley({
            errorsContainer: function(pEle) {
                return pEle.$element.siblings('.errorBlock');
            }
        });
    });
</script>