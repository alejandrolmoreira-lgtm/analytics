-- created_at: 2026-04-24T08:35:55.656661700+00:00
-- finished_at: 2026-04-24T08:35:55.748217800+00:00
-- elapsed: 91ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_stg_lineitem_order_key.992908a611
-- query_id: 01c3eb64-0001-b55c-0002-5ab60002f522
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_key
from analytics.analytics_prod.stg_lineitem
where order_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_stg_lineitem_order_key.992908a611", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:55.927636400+00:00
-- finished_at: 2026-04-24T08:35:56.009597600+00:00
-- elapsed: 81ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.unique_dim_customer_customer_key.7b0683cc6e
-- query_id: 01c3eb64-0001-b55c-0002-5ab60002f526
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    customer_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_customer
where customer_key is not null
group by customer_key
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.unique_dim_customer_customer_key.7b0683cc6e", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:56.852083+00:00
-- finished_at: 2026-04-24T08:35:57.041571300+00:00
-- elapsed: 189ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_int_lineitem_enriched_profit.8810732fea
-- query_id: 01c3eb64-0001-b6eb-0002-5ab600039112
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select profit
from analytics.analytics_prod.int_lineitem_enriched
where profit is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_int_lineitem_enriched_profit.8810732fea", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:57.788081800+00:00
-- finished_at: 2026-04-24T08:35:57.881323400+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_stg_lineitem_part_key__part_key__ref_stg_part_.e1f053329a
-- query_id: 01c3eb64-0001-b55c-0002-5ab60002f52a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select part_key as from_field
    from analytics.analytics_prod.stg_lineitem
    where part_key is not null
),

parent as (
    select part_key as to_field
    from analytics.analytics_prod.stg_part
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_stg_lineitem_part_key__part_key__ref_stg_part_.e1f053329a", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:58.085719500+00:00
-- finished_at: 2026-04-24T08:35:58.230230100+00:00
-- elapsed: 144ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_dim_part_part_key.eca7d6f732
-- query_id: 01c3eb64-0001-b60f-0002-5ab60003830a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select part_key
from analytics.analytics_prod.dim_part
where part_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_dim_part_part_key.eca7d6f732", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:58.353178200+00:00
-- finished_at: 2026-04-24T08:35:58.653333800+00:00
-- elapsed: 300ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_int_lineitem_enriched_customer_key.a574381044
-- query_id: 01c3eb64-0001-b6d8-0002-5ab60003a0a2
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_key
from analytics.analytics_prod.int_lineitem_enriched
where customer_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_int_lineitem_enriched_customer_key.a574381044", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:59.287108600+00:00
-- finished_at: 2026-04-24T08:35:59.446934300+00:00
-- elapsed: 159ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_int_lineitem_enriched_total_cost.5147d7a5ac
-- query_id: 01c3eb64-0001-b6d8-0002-5ab60003a0a6
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select total_cost
from analytics.analytics_prod.int_lineitem_enriched
where total_cost is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_int_lineitem_enriched_total_cost.5147d7a5ac", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:59.557693100+00:00
-- finished_at: 2026-04-24T08:35:59.701420200+00:00
-- elapsed: 143ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.unique_dim_supplier_supp_key.eaeb41857f
-- query_id: 01c3eb64-0001-b60f-0002-5ab60003830e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    supp_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_supplier
where supp_key is not null
group by supp_key
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.unique_dim_supplier_supp_key.eaeb41857f", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:35:59.864011900+00:00
-- finished_at: 2026-04-24T08:35:59.989836200+00:00
-- elapsed: 125ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_dim_customer_customer_key.c289fe4d1f
-- query_id: 01c3eb64-0001-b60f-0002-5ab600038312
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select customer_key
from analytics.analytics_prod.dim_customer
where customer_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_dim_customer_customer_key.c289fe4d1f", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:00.142756300+00:00
-- finished_at: 2026-04-24T08:36:00.247799300+00:00
-- elapsed: 105ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_fact_lineitem_part_key__part_key__ref_dim_part_.3793d3ca24
-- query_id: 01c3eb64-0001-b6eb-0002-5ab600039116
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select part_key as from_field
    from analytics.analytics_prod.fact_lineitem
    where part_key is not null
),

parent as (
    select part_key as to_field
    from analytics.analytics_prod.dim_part
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_fact_lineitem_part_key__part_key__ref_dim_part_.3793d3ca24", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:00.428845400+00:00
-- finished_at: 2026-04-24T08:36:00.536149300+00:00
-- elapsed: 107ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_fact_lineitem_5ef7a71d17c5b0f50a1ef20e9a273402.789f0f2f50
-- query_id: 01c3eb64-0001-b6eb-0002-5ab60003911a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select customer_key as from_field
    from analytics.analytics_prod.fact_lineitem
    where customer_key is not null
),

parent as (
    select customer_key as to_field
    from analytics.analytics_prod.dim_customer
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_fact_lineitem_5ef7a71d17c5b0f50a1ef20e9a273402.789f0f2f50", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:00.726340+00:00
-- finished_at: 2026-04-24T08:36:00.844372700+00:00
-- elapsed: 118ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_fact_lineitem_838af132f82122980ff89c33e4368958.d5ca68c4a8
-- query_id: 01c3eb64-0001-b6eb-0002-5ab60003911e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select supp_key as from_field
    from analytics.analytics_prod.fact_lineitem
    where supp_key is not null
),

parent as (
    select supp_key as to_field
    from analytics.analytics_prod.dim_supplier
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_fact_lineitem_838af132f82122980ff89c33e4368958.d5ca68c4a8", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:00.982162300+00:00
-- finished_at: 2026-04-24T08:36:01.085611+00:00
-- elapsed: 103ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_stg_orders_cust_key.9976429356
-- query_id: 01c3eb64-0001-b60f-0002-5ab600038316
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select cust_key
from analytics.analytics_prod.stg_orders
where cust_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_stg_orders_cust_key.9976429356", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:01.258026100+00:00
-- finished_at: 2026-04-24T08:36:01.359469600+00:00
-- elapsed: 101ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.unique_fact_lineitem_lineitem_id.999ad50b01
-- query_id: 01c3eb64-0001-b6eb-0002-5ab600039122
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    lineitem_id as unique_field,
    count(*) as n_records

from analytics.analytics_prod.fact_lineitem
where lineitem_id is not null
group by lineitem_id
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.unique_fact_lineitem_lineitem_id.999ad50b01", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:01.559944900+00:00
-- finished_at: 2026-04-24T08:36:01.652381200+00:00
-- elapsed: 92ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_fact_lineitem_lineitem_id.5d3ecc6922
-- query_id: 01c3eb64-0001-b6eb-0002-5ab600039126
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select lineitem_id
from analytics.analytics_prod.fact_lineitem
where lineitem_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_fact_lineitem_lineitem_id.5d3ecc6922", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:01.837155300+00:00
-- finished_at: 2026-04-24T08:36:02.029174800+00:00
-- elapsed: 192ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_int_lineitem_enriched_order_key.0a98315aa4
-- query_id: 01c3eb64-0001-b55c-0002-5ab60002f52e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_key
from analytics.analytics_prod.int_lineitem_enriched
where order_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_int_lineitem_enriched_order_key.0a98315aa4", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:02.165295800+00:00
-- finished_at: 2026-04-24T08:36:02.258799700+00:00
-- elapsed: 93ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_stg_lineitem_8f4e2696fc29b22bb96bca66e30753cc.4af3d41710
-- query_id: 01c3eb64-0001-b55c-0002-5ab60002f532
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select order_key as from_field
    from analytics.analytics_prod.stg_lineitem
    where order_key is not null
),

parent as (
    select order_key as to_field
    from analytics.analytics_prod.stg_orders
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_stg_lineitem_8f4e2696fc29b22bb96bca66e30753cc.4af3d41710", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:02.419665900+00:00
-- finished_at: 2026-04-24T08:36:02.520631500+00:00
-- elapsed: 100ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.unique_dim_part_part_key.871035ca2b
-- query_id: 01c3eb64-0001-b60f-0002-5ab60003831a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    part_key as unique_field,
    count(*) as n_records

from analytics.analytics_prod.dim_part
where part_key is not null
group by part_key
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.unique_dim_part_part_key.871035ca2b", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:02.701615800+00:00
-- finished_at: 2026-04-24T08:36:02.897160400+00:00
-- elapsed: 195ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_int_lineitem_enriched_lineitem_id.01b850600f
-- query_id: 01c3eb64-0001-b60f-0002-5ab60003831e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select lineitem_id
from analytics.analytics_prod.int_lineitem_enriched
where lineitem_id is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_int_lineitem_enriched_lineitem_id.01b850600f", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:02.963540200+00:00
-- finished_at: 2026-04-24T08:36:03.129511200+00:00
-- elapsed: 165ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_int_lineitem_enriched_net_revenue.6a7accd8a1
-- query_id: 01c3eb64-0001-b6eb-0002-5ab60003912a
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select net_revenue
from analytics.analytics_prod.int_lineitem_enriched
where net_revenue is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_int_lineitem_enriched_net_revenue.6a7accd8a1", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:03.219935400+00:00
-- finished_at: 2026-04-24T08:36:03.387299400+00:00
-- elapsed: 167ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.unique_int_lineitem_enriched_lineitem_id.92993ab92d
-- query_id: 01c3eb64-0001-b6eb-0002-5ab60003912e
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    lineitem_id as unique_field,
    count(*) as n_records

from analytics.analytics_prod.int_lineitem_enriched
where lineitem_id is not null
group by lineitem_id
having count(*) > 1



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.unique_int_lineitem_enriched_lineitem_id.92993ab92d", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:03.500327400+00:00
-- finished_at: 2026-04-24T08:36:03.584651200+00:00
-- elapsed: 84ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.not_null_dim_supplier_supp_key.467488707a
-- query_id: 01c3eb64-0001-b6eb-0002-5ab600039132
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select supp_key
from analytics.analytics_prod.dim_supplier
where supp_key is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.not_null_dim_supplier_supp_key.467488707a", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:03.810797100+00:00
-- finished_at: 2026-04-24T08:36:03.920748100+00:00
-- elapsed: 109ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_stg_orders_cust_key__cust_key__ref_stg_customer_.d4c7c12981
-- query_id: 01c3eb64-0001-b6eb-0002-5ab600039136
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select cust_key as from_field
    from analytics.analytics_prod.stg_orders
    where cust_key is not null
),

parent as (
    select cust_key as to_field
    from analytics.analytics_prod.stg_customer
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_stg_orders_cust_key__cust_key__ref_stg_customer_.d4c7c12981", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
-- created_at: 2026-04-24T08:36:04.064994800+00:00
-- finished_at: 2026-04-24T08:36:04.154315100+00:00
-- elapsed: 89ms
-- outcome: success
-- dialect: snowflake
-- node_id: test.project.relationships_stg_lineitem_aee97fe7de7fbfc71b2efacdb8bd2cb6.7bd182b962
-- query_id: 01c3eb64-0001-b6d8-0002-5ab60003a0aa
-- desc: execute adapter call
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with child as (
    select supp_key as from_field
    from analytics.analytics_prod.stg_lineitem
    where supp_key is not null
),

parent as (
    select supp_key as to_field
    from analytics.analytics_prod.stg_supplier
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



  
  
      
    ) dbt_internal_test
/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "test.project.relationships_stg_lineitem_aee97fe7de7fbfc71b2efacdb8bd2cb6.7bd182b962", "profile_name": "mi_proyecto_dbt", "target_name": "dev"} */;
