.sub '' :anon :load :init
    $P0 = loadlib 'dynext/libxml_group'
    $P1 = dlfunc $P0, 'LibXML_init', 'v'
    $P1()
.end
