Gem::Specification.new do |s|
  s.name = %q{activewarehouse}
  s.version = "0.3.0"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Anthony Eden"]
  s.date = %q{2008-05-21}
  s.description = %q{ActiveWarehouse extends Rails to provide functionality specific for building data warehouses.}
  s.email = %q{anthonyeden@gmail.com}
  s.files = ["activewarehouse/CHANGELOG", "activewarehouse/LICENSE", "activewarehouse/README", "activewarehouse/TODO", "activewarehouse/Rakefile", "activewarehouse/doc/references.txt", "activewarehouse/lib/active_warehouse", "activewarehouse/lib/active_warehouse.rb", "activewarehouse/lib/active_warehouse/aggregate", "activewarehouse/lib/active_warehouse/aggregate.rb", "activewarehouse/lib/active_warehouse/aggregate_field.rb", "activewarehouse/lib/active_warehouse/bridge", "activewarehouse/lib/active_warehouse/bridge.rb", "activewarehouse/lib/active_warehouse/builder", "activewarehouse/lib/active_warehouse/builder.rb", "activewarehouse/lib/active_warehouse/calculated_field.rb", "activewarehouse/lib/active_warehouse/compat", "activewarehouse/lib/active_warehouse/core_ext", "activewarehouse/lib/active_warehouse/core_ext.rb", "activewarehouse/lib/active_warehouse/cube.rb", "activewarehouse/lib/active_warehouse/cube_query_result.rb", "activewarehouse/lib/active_warehouse/dimension", "activewarehouse/lib/active_warehouse/dimension.rb", "activewarehouse/lib/active_warehouse/fact.rb", "activewarehouse/lib/active_warehouse/field.rb", "activewarehouse/lib/active_warehouse/migrations.rb", "activewarehouse/lib/active_warehouse/ordered_hash.rb", "activewarehouse/lib/active_warehouse/prejoin_fact.rb", "activewarehouse/lib/active_warehouse/report", "activewarehouse/lib/active_warehouse/report.rb", "activewarehouse/lib/active_warehouse/version.rb", "activewarehouse/lib/active_warehouse/view", "activewarehouse/lib/active_warehouse/view.rb", "activewarehouse/lib/active_warehouse/aggregate/dwarf_aggregate.rb", "activewarehouse/lib/active_warehouse/aggregate/dwarf_common.rb", "activewarehouse/lib/active_warehouse/aggregate/dwarf_printer.rb", "activewarehouse/lib/active_warehouse/aggregate/no_aggregate.rb", "activewarehouse/lib/active_warehouse/aggregate/pid_aggregate.rb", "activewarehouse/lib/active_warehouse/bridge/hierarchy_bridge.rb", "activewarehouse/lib/active_warehouse/builder/date_dimension_builder.rb", "activewarehouse/lib/active_warehouse/builder/generator", "activewarehouse/lib/active_warehouse/builder/random_data_builder.rb", "activewarehouse/lib/active_warehouse/builder/test_data_builder.rb", "activewarehouse/lib/active_warehouse/builder/generator/generator.rb", "activewarehouse/lib/active_warehouse/builder/generator/name_generator.rb", "activewarehouse/lib/active_warehouse/builder/generator/paragraph_generator.rb", "activewarehouse/lib/active_warehouse/compat/compat.rb", "activewarehouse/lib/active_warehouse/core_ext/time", "activewarehouse/lib/active_warehouse/core_ext/time.rb", "activewarehouse/lib/active_warehouse/core_ext/time/calculations.rb", "activewarehouse/lib/active_warehouse/dimension/date_dimension.rb", "activewarehouse/lib/active_warehouse/dimension/dimension_reflection.rb", "activewarehouse/lib/active_warehouse/dimension/dimension_view.rb", "activewarehouse/lib/active_warehouse/dimension/hierarchical_dimension.rb", "activewarehouse/lib/active_warehouse/dimension/slowly_changing_dimension.rb", "activewarehouse/lib/active_warehouse/report/abstract_report.rb", "activewarehouse/lib/active_warehouse/report/chart_report.rb", "activewarehouse/lib/active_warehouse/report/data_cell.rb", "activewarehouse/lib/active_warehouse/report/data_column.rb", "activewarehouse/lib/active_warehouse/report/data_row.rb", "activewarehouse/lib/active_warehouse/report/dimension.rb", "activewarehouse/lib/active_warehouse/report/table_report.rb", "activewarehouse/lib/active_warehouse/view/crumb.rb", "activewarehouse/lib/active_warehouse/view/report_helper.rb", "activewarehouse/lib/active_warehouse/view/table_view.rb", "activewarehouse/lib/active_warehouse/view/yui_adapter.rb"]
  s.homepage = %q{http://activewarehouse.rubyforge.org}
  s.rdoc_options = ["--exclude", "."]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{activewarehouse}
  s.rubygems_version = %q{1.1.0}
  s.summary = %q{Build data warehouses with Rails.}

  s.add_dependency(%q<rake>, [">= 0.7.1"])
  s.add_dependency(%q<fastercsv>, [">= 1.1.0"])
  s.add_dependency(%q<activesupport>, [">= 1.3.1"])
  s.add_dependency(%q<activerecord>, [">= 1.14.4"])
  s.add_dependency(%q<actionpack>, [">= 1.12.5"])
  s.add_dependency(%q<rails_sql_views>, [">= 0.1.0"])
  s.add_dependency(%q<adapter_extensions>, [">= 0.1.0"])
end
