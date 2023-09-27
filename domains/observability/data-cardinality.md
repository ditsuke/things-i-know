In set-theory, _cardinality_ is defined as the total number of unique elements in a set.

In the context of [[timeseries]] and data analysis, Cardinality defines the number of attribute `k:v`  tuples that uniquely identify a data point.

Lets take the example of a [[prometheus]] timeseries. The classification tuples for prometheus are called _labels_. Each label added to a timeseries can contribute to its cardinality, so taking 3 such attributes: `instance` with a set of possible values `(1, 2, 3)` , `provider` with valueset `(GCP, AWS)` and `location` with valueset `(ASIA, EU)`, the cardinality would be `3 * 2 * 2`.

## High Cardinality Data

Lets say the `instance` label in the last example were to be unbounded  (as it happens IRL) with say a 100 instances running at some point. This would result in a cardinality of `100 * 2 * 2` and possibly upwards.

### Cardinality spikes
In distributed, auto-scaling cloud-native sytems there can be sudden spikes in cardinality when metrics, like instance IDs, transform into a high cardinality attribute to to overall load or a high-cardinality attribute like user identifier is accidentally attached to the data.

### Why High Cardinality Matters
High cardinality equates to high resource consumption, high processing and storage costs. For example, [[prometheus]] creates a new timeseries for each label tuple/cardinality point.

Prometheus[1][1] recommends keeping metric cardinality below _10_, as a rule of thumb.

[1]: https://prometheus.io/docs/practices/instrumentation/#do-not-overuse-labels