%title: RABBITMQ
%author: xavki


# RABBITMQ : Best Practices


Conserver des queues courtes
	* ajouter un TTL
	* ajouter une longueur max


Coût des statistiques et GUI

	* statistiques

```
collect_statistics_interval = 60000
management.rates_mode = none
```

	* sampling

```
management.sample_retention_policies.global.minute  = 5
management.sample_retention_policies.global.hour    = 60
management.sample_retention_policies.global.day = 1200
management.sample_retention_policies.basic.minute = 5
management.sample_retention_policies.basic.hour   = 60
management.sample_retention_policies.detailed.10 = 5
```

	* désactivation des métriques internes

```
management_agent.disable_metrics_collector = true
management.disable_stats = true
```

	* avec plus de finesse

```
management.disable_stats = true
management.enable_queue_totals = true
```

Timeout de sessions

```
management.login_session_timeout = 60
```
