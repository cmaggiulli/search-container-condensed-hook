# search-container-condensed-hook
#### A Liferay 6.2 taglib jsp hook that condenses all Search Containers

### About
This Liferay hook is written for Liferay 6.2.x EE and CE.  It is not compatible with Liferay 7 and is not necessary in Liferay 6.1. The goal of this hook is to condense Liferay's SearchContainer to a size more akin to the container in 6.1 in a well architected and efficient manner.  It applies the Bootstraps table-condensed class to all search containers in the portal by  directly modifying the taglibs jsp. The hook overrides the `html/taglib/ui/search_iterator/page.jsp` file and can be hot deployed.  Included in this hook is the Ant build script, all necessary XML configurations, and dependencies.

### Build and Deploy
To build this hook clone a copy to your `${plugins.sdk}/hook` folder.  Open the project in Liferay IDE or Developer Studio and run the all target in the Ant build file.  Conversely you could simply run that target from the command line.  Grab the generated `war` file from your `${plugins.sdk}/dist` to `${liferay.home}/deploy` folder.  The hook is hot deployable. 


