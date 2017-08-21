# search-container-condensed-hook
*A Liferay 6.2 taglib jsp hook that condenses all Search Containers*

### About
This hook makes all Liferay search container tables condensed (bootstrap's table-condensed).  The look and size
of the search container should be closer to the Liferay 6.1.  The hook uses Liferay's recommend override functionaliy
meaning that it does not modify the actual source code of the search container JSP but rather loads that page
via a buffer tag and then replaces the **table-striped** style with **table-striped table-condensed**.


### Compatibility
This hook is compatible with Liferay 6.2 GA1 through GA6 community and enterprise.  It is not compatible with 
Liferay 6.1 or Liferay DXP/7.

### Build and Deploy
To build this hook clone a copy to your `${plugins.sdk}/hook` folder.  Run the `ant compile` and `ant direct-deploy` targets.