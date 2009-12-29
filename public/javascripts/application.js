// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function toggle_new_gift(id)
{
	$('new_gift_link_for_' + id).toggle();
	$('new_gift_for_' + id).toggle();
}