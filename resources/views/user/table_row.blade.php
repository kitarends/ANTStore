<tr>
    <td>
        {{$item->id}}
    </td>
    <td><h5>{{$item->name}}</h5></td>

    <td><h5>{{$item->email}}</h5></td>
    <td><h5>{{$item->phone}}</h5></td>
    <td><h5>
            @if($item->is_admin)
                <a href="/manage/users/{{$item->id}}/unmake_admin"
                   class="ui yellow labeled icon  button"><i
                            class="arrow down icon"></i> to user</a>
            @else
                <a href="/manage/users/{{$item->id}}/make_admin"
                   class="ui green labeled icon button"><i
                            class="arrow up icon"></i> to admin</a>
            @endif
            <a onclick="ask_to_delete('Are you sure to delete this user?','/manage/users/{{$item->id}}/delete')" href="javascript:void(0);"
               class="ui red labeled icon button"><i
                        class="delete icon"></i> delete</a>
        </h5></td>
</tr>
