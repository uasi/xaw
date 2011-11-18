.include 'library/LibXML.pir'

.sub 'main' :main
    .include 'test_more.pir'

    plan(1)

    test_attr()
.end

.sub 'test_attr'
    say 'ok'
.end

# vim: ft=pir
