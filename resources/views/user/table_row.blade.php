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
            <a onclick="confirm_delete_user({{$item->id}})" href="javascript:void(0);"
               class="ui red labeled icon button"><i
                        class="delete icon"></i> delete</a>
        </h5></td>
</tr>

<script>
    function confirm_delete_user(id) {
        if (confirm("Are you sure to delete this user?"))
            location.href = '/manage/users/delete/' + id;
    }
</script>