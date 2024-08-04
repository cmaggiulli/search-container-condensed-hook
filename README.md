## search-container-condensed-hook : A Liferay 6.2 Taglib Hook 
The search-container-condensed-hook project is a [Hook](https://help.liferay.com/hc/en-us/articles/360017871812-Introduction-to-Hooks) for the `<liferay-ui:search-container>` JavaServer Page Scriplet provided by [liferay-ui](https://docs.liferay.com/portal/6.2/taglibs/liferay-ui/tld-summary.html) Taglib in Liferay 6.2 

##  Problem Statement
As part of the Liferay 6.1 to 6.2 upgrade the [liferay-ui](https://docs.liferay.com/portal/6.2/taglibs/liferay-ui/tld-summary.html) Taglib and the Scriplet's therewithin were ported to [AlloyUI 2.0](https://alloyui.com/).  In other words, although Liferay core underwent a minor version upgrade, the front end library used by Liferay UI's JSP Tablib underwent a major version upgrade from 1.0 to 2.0.  This resulted in the incorporation of Twitter Bootstrap across all of liferay-ui's Scriplet's and caused noticeable variences across the followingly elements:

- A.Plugin.DialogIframe ( AUI Dialog )
- aui-modal ( AUI Modal )
- <liferay-ui:search-container> ( Search Container )

The code in this repository modifies the `<liferay-ui:search-container>` Scriplet in Liferay 6.2 to behave and present in a manner that more closely resembles that of 6.1, namely that it remove's unnecessary whitespacing thus fixing functional issues with data-intensive implementations.

## Technical Considerations
This repository contains a lightweight [Hook](https://help.liferay.com/hc/en-us/articles/360017871812-Introduction-to-Hooks) for the `<liferay-ui:search-container>` JavaServer Page Scriplet provided by the [liferay-ui](https://docs.liferay.com/portal/6.2/taglibs/liferay-ui/tld-summary.html) Taglib in Liferay 6.2 GA1 through GA6.  The code follows all Liferay standards and patterns for 6.2 including:

- Ant build files with the same targets as those provided by Hooks developed and shifted with Liferay core.
- The utilization of [Liferay Util Buffer ](https://help.liferay.com/hc/en-us/articles/360023185351-Using-Liferay-Util-Buffer) as a defensive programming practice and in support of reusability.  As recommended this Hook does not actually modify the source code of this Scriptlet but rather loads the page using the `<liferay-util:buffer>` tag and modifies the class assignments at runtime.
- Uses Liferay's recommended convention-over-configuration standards as they relate to package naming conventions.
  
This Hook's only change is that it applies, by default, the table-condensed class to the underline table element resulting from the implementation of the `<liferay-ui:search-container>` Scriplet.

## Ant Build Instructions
To build this plugin run the following commands:

    git clone --depth 1 git@github.com:cmaggiulli/search-container-condensed-hook.git ~/search-container-condensed-hook
    cp -rp ~/search-container-condensed-hook ${plugins.sdk}/hook
    ant compile
    ant direct-deploy
