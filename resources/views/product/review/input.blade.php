@if(Auth::check())
    <h2>Your review</h2>
    <form class="ui form" action="/products/{{$item->id}}/save_review" method="post">
        @csrf
        <div class="field">
            <label for="score">Rating</label>
            <div class="ui star rating input_rating" data-rating="{{old('score',3)}}" data-max-rating="5">
            </div>
            <input type="hidden" name="score" id="input_rating" value="{{old('score',3)}}">
        </div>
        @include('ui.form.textarea',['name'=>'content','label'=>'Review content'])
        <button class="ui primary button">Save review</button>
    </form>

@else
    <h2>You need to <a href="/login">login</a> and buy to review</h2>
@endif