<asset:javascript src="jquery/jquery-migrate-1.1.0.min.js"/>
<asset:stylesheet href="jquery-tag-it/css/jquery.tagit.css"/>
<asset:javascript src="jquery-tag-it/js/tag-it.min.js"/>
<script>
    $(function () {
        $('#tagIt').tagit({
            fieldName: 'keys',
            availableTags: ['java', 'linux', 'security', 'springboot', 'springCloud', 'redis', 'fastDFS'],
            singleField: true,
            allowSpaces: false, //标签中是否允许空格
            singleFieldNode: $('#tagsValues')
        });
    })
</script>