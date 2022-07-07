fetch bigquery_dataset
| metric 'bigquery.googleapis.com/storage/table_count'
| filter
    resource.project_id == '104348855916'
    && (resource.dataset_id == 'landing_entsog')
| group_by 1m, [value_table_count_mean: mean(value.table_count)]
| every 1m
| group_by [resource.dataset_id],
    [value_table_count_mean_aggregate: aggregate(value_table_count_mean)]

----------

fetch bigquery_dataset
| metric 'bigquery.googleapis.com/storage/stored_bytes'
| filter
    resource.project_id == '104348855916'
    && (resource.dataset_id == 'landing_entsoe')
| every 1d


