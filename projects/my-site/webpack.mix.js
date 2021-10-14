const mix = require('laravel-mix');
require('laravel-mix-jigsaw');

mix.disableSuccessNotifications();
mix.setPublicPath('source/assets/build');

mix
    .jigsaw({
        open: false // BrowserSyncでブラウザを起動させない
    })
    .js('source/_assets/js/main.js', 'js')
    .js('source/_assets/js/index.js', 'js')
    .css('source/_assets/css/main.css', 'css', [
        require('postcss-import'),
        require('tailwindcss'),
    ])
    .options({
        processCssUrls: false,
    })
    .vue()
    .version();
