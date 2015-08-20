<?php	 defined('C5_EXECUTE') or die(_("Access Denied."));
$navItems = $controller->getNavItems(true);

echo '<ul class="link-list">';

foreach ($navItems as $ni) {
	if ($ni->isCurrent) {
		echo '<li class="active"><a href="' . $ni->url . '" target="' . $ni->target . '">' . $ni->name . '</a></li>';
	} else {
		echo '<li><a href="' . $ni->url . '" target="' . $ni->target . '">' . $ni->name . '</a></li>';
	}
}

echo '</ul>';
