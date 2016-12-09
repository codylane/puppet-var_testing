define var_testing::show_var(
  $var,
) {

$template = @(OUTPUT_EOF)
testing example '<%= @title %>'

<%
scope_result = {
  'result' => scope['var'],
  'type'   => scope['var'].class,
  'nil'    => scope['var'].nil?,
  'empty?' => scope['var'].respond_to?('empty?') ? scope['var'].empty? : "Does not respond to empty? UGH!",
  'undef'  => [:undef].include?(scope['var']),
  'bool'   => scope['var'] ? true : false,
  '[]'     => [[]].include?(scope['var']),
  '{}'     => [{}].include?(scope['var']),
}
-%>

<%
scope_lookup_result = {
  'result' => scope.lookupvar('var'),
  'type'   => scope.lookupvar('var').class,
  'nil'    => scope.lookupvar('var').nil?,
  'empty?' => scope.lookupvar('var').respond_to?('empty?') ? scope.lookupvar('var').empty? : "Does not respond to empty? UGH!",
  'undef'  => [:undef].include?(scope.lookupvar('var')),
  'bool'   => scope.lookupvar('var') ? true : false,
  '[]'     => [[]].include?(scope.lookupvar('var')),
  '{}'     => [{}].include?(scope.lookupvar('var')),
}
-%>

<%
puppet_result = {
  'result' => @var,
  'type'   => @var.class,
  'nil'    => @var.nil?,
  'empty?' => @var.respond_to?('empty?') ? @var.empty? : "Does not respond to empty? UGH!",
  'undef'  => [:undef].include?(@var),
  'bool'   => @var ? true : false,
  '[]'     => [[]].include?(@var),
  '{}'     => [{}].include?(@var),
}
-%>

puppet result = <%= puppet_result %>
scope result  = <%= scope_result %>
scope lookup  = <%= scope_lookup_result %>

OUTPUT_EOF

  $output = inline_template($template)

  notice($output)
}
