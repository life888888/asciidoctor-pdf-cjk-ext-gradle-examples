= Custom Themes extend from asciidoctor-pdf-cjk-ext themes

Custom theme is extend from asciidoctor-pdf-cjk-ext themes

Support differents fonts and languages.


**FONTS:**

* Noto Sans CJK
* Noto Sans Mono CJK
* Noto Sans Serif CJK

**FONT LANGUAGE CODE:**

* sc (Simplified Chinese)
* tc (Traditional Chinese)
* hk (Hong Kong)
* jp (Japanese)
* kr (Korean)

== Build


.Clean All Themes
[source,bash]
----
rm *.yml
----


Build Specific Language Custom Themes

.Create custom theme for language `tc` (Traditional Chinese)
[source,bash]
----
./build-all-themes.sh tc
----


== Template File

Template File `custom-theme-template.yml` is under sub folder `theme-template`.

You can modify it.

Template File `custom-theme-template.yml` is modify from https://github.com/asciidoctor/asciidoctor-maven-examples/tree/main/asciidoctor-pdf-with-theme-example/src/theme/custom-theme.yml .

== License

This Project 

The MIT License - Copyright (c) 2022 life888888

**Third party license**

custom-theme-template.yml (https://github.com/asciidoctor/asciidoctor-maven-examples/tree/main/asciidoctor-pdf-with-theme-example)

The MIT License - Copyright (C) 2014 The Asciidoctor Project

