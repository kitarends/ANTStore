<tr>
    <td>
        {{$item->url}}
    </td>
    <td>
        <img src="/images/{{$item->image}}" style="width:120px;">
    </td>
    <td>
        <div class="ui buttons">
        <a href="/ads/{{$item->id}}/edit" class="ui icon green button"><i class="pencil icon"></i> Edit</a>
        <a href="javascript:void(0);" onclick="ask_to_delete('Are you sure to delete this advertise?','/ads/{{$item->id}}/delete')" class="ui icon yellow button"><i class="delete icon"></i> Delete</a>
        </div>
    </td>
</tr>