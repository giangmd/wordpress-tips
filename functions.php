<?php 
function wp_nav_parent_class( $classes, $item ) {

    if( is_singular('post') && $item->title == "Your Menu Item Title Here" )
        array_push($classes, 'current_page_parent');

    return $classes;
}
add_filter('nav_menu_css_class', 'wp_nav_parent_class', 10, 2);