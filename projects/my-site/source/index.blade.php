@extends('_layouts.main')
@section('title', 'トップページ')

@section('body')
<div class="p-8">
    <h1 class="text-3xl font-bold">Hello world! 6</h1>
    <a href="/about">About</a>
</div>
<div id="app"><app></app></div>
@endsection

@section('script')
<script defer src="{{ mix('js/index.js', 'assets/build') }}"></script>
@endsection