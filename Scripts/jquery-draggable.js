$(function () {
    var group = $("ol.example").sortable({
        group: 'example',

        onDrop: function ($item, container, _super) {
            var data = group.sortable("serialize").get();
            var jsonString = JSON.stringify(data, null, ' ');
            $('#serialize_output').text(jsonString);

            var $clonedItem = $('<li/>').css({ height: 0 });
            $item.before($clonedItem);
            $clonedItem.animate({ 'height': $item.height() });

            $item.animate($clonedItem.position(), function () {
                $clonedItem.detach();
                _super($item, container);
            });
        },

        // set $item relative to cursor position
        onDragStart: function ($item, container, _super) {
            var offset = $item.offset(),
                pointer = container.rootGroup.pointer;

            adjustment = {
                left: pointer.left - offset.left,
                top: pointer.top - offset.top
            };

            _super($item, container);
        },
        onDrag: function ($item, position) {
            $item.css({
                left: position.left - adjustment.left,
                top: position.top - adjustment.top
            });

        }
    });

    $('.btnExpand').click(function () {
        if ($(this).next('ol').html() != "") {
            $(this).children('i').toggleClass('fa-chevron-down', 'fa-chevron-right');
            $(this).next().slideToggle("slow");
        } else {
            alert('it has no child elements to display');
        }
    });

});