# CREATE CUSTOM THEME FROM custom-theme-template.yml
# ALL Extends FROM asciidoctor-pdf-cjk-ext themes
# USEAGE:
#         ./build-all-themes.sh
#         YOU NEED CHANGE FONT_LANG=YOUR-LANG-CODE in this script file
#         EX: FONT_LANG=jp
#   OR
#         ./build-all-themes.sh YOUR-LANG-CODE
#         EX:
#         ./build-all-themes.sh tc
#
export PATH=`pwd`:$PATH

# FONT LANGUAGE CODE
# sc (Simplified Chinese)
# tc (Traditional Chinese)
# hk (Hong Kong)
# jp (Japanese)
# kr (Korean)
FONT_LANG=tc

if [ -z "$1" ]
then
      echo ""
else
      FONT_LANG=$1
      echo "SET FONT_LANG=$1"
fi

echo "FONT_LANG=$FONT_LANG"

NOTO_FONTS=("sans" "sansmono" "serif")


for FONT_NAME in ${NOTO_FONTS[@]}; do
  build-custom-theme.sh default-ext-noto${FONT_NAME}-cjk-${FONT_LANG}
  build-custom-theme.sh default-noto${FONT_NAME}-cjk-${FONT_LANG}
  build-custom-theme.sh noto${FONT_NAME}-cjk-${FONT_LANG}
done

# build-custom-theme.sh default-ext-notosans-cjk-tc
# build-custom-theme.sh default-ext-notosansmono-cjk-tc
# build-custom-theme.sh default-ext-notoserif-cjk-tc
# build-custom-theme.sh default-notosans-cjk-tc
# build-custom-theme.sh default-notosansmono-cjk-tc
# build-custom-theme.sh default-notoserif-cjk-tc
# build-custom-theme.sh notosans-cjk-tc
# build-custom-theme.sh notosansmono-cjk-tc
# build-custom-theme.sh notoserif-cjk-tc

sync
sleep 5

echo "DONE ALL!"

