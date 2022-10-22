module Athena::Framework::CompilerPasses::MakeControllerServicesPublicPass
  include Athena::DependencyInjection::PreArgumentsCompilerPass

  macro included
    macro finished
      {% verbatim do %}
        {%
          SERVICE_HASH.each do |service_id, metadata|
            if metadata[:service] <= ATH::Controller
              metadata[:visibility] = Visibility::PUBLIC
            end
          end
        %}
      {% end %}
    end
  end
end
