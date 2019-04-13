require "../../../routing_spec_helper"

class CompileController < Athena::Routing::Controller
  @[Athena::Routing::Get(path: "int8/", query: {"num" => /\d+/})]
  def one_action_id_one_query(num_id : String) : Int32
    123
  end
end

Athena::Routing.run
