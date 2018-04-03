<tr>
    <td>
        #{{$item->id}}
    </td>
    <td>
        {{$item->url}}
    </td>
    <td>
        <a href="/blogs/{{$item->id}}"> {{$item->title}}</a>
    </td>
    <td>
        {{$item->updated_at}}
    </td>

    <td>
        <div class="ui buttons">
        <a href="/blogs/{{$item->id}}/edit" class="ui icon green button"><i class="pencil icon"></i> Edit</a>
        <a href="javascript:void(0);" onclick="ask_to_delete('Are you sure to delete this post','/blogs/{{$item->id}}/delete')" class="ui icon yellow button"><i class="delete icon"></i> Delete</a>
        </div>
    </td>
</tr>
