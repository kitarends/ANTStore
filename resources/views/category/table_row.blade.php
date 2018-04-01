<tr>
    <td>
        #{{$item->id}}
    </td>
    <td>
        <a href="/categories/{{$item->id}}">{{$item->name}}</a>
    </td>
    <td>{{$item->sort}}</td>
    <td>
        <div class="ui buttons">
        <a href="/categories/{{$item->id}}/edit" class="ui icon green button"><i class="pencil icon"></i> Edit</a>
        <a href="javascript:void(0);" onclick="ask_to_delete_category({{$item->id}})" class="ui icon yellow button"><i class="delete icon"></i> Delete</a>
        </div>
    </td>
</tr>