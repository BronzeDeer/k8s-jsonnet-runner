local d = import 'doc-util/main.libsonnet';

{
  # Purposefully not hidden to test for presence of doc-util on jpath
  '#': d.pkg(name="test",url="",help="")
}
