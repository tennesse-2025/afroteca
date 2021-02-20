##################################################################
#               ARQUIVO DE TRADUÇÕES DO BIBLIVRE V               #
#                  BIBLIVRE V TRANSLATIONS FILE                  #
##################################################################
#                                                                #
#                     DIRETRIZES / GUIDELINES                    #
#                                                                #
##################################################################
#                                                                #
# 1. Este arquivo deve ser salvo com o encoding UTF-8            #
# 2. Traduza apenas o que estiver depois do símbolo de igual     #
# 3. Não altere ou traduza termos que estiverem dentro de chaves #
# 4. É possível usar quebra de linha nas  traduções. Os símbolos #
#    * ou + no começo da linha definirão que ali começa um novo  #
#    termo                                                       #
# 5. A chave *language_code deve ser preenchida com o código do  #
#    idioma no formato RFC 3066 como descrito em                 #
#    http://www.i18nguy.com/unicode/language-identifiers.html    #
#                                                                #
##################################################################

<#list translations as key, translation>
${translation.userCreated?then('+','*')}${key} = ${translation.text}
</#list>