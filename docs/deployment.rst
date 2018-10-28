Deployment & Upgrades
#####################

Deployment matrix
=================

+----------------------+---------------------+
| Splunk roles         | required            |
+======================+=====================+
| Search head          |   yes               |
+----------------------+---------------------+
| Indexer tiers        |   no                |
+----------------------+---------------------+

If Splunk search heads are running in Search Head Cluster (SHC), the Splunk application must be deployed by the SHC deployer.

The deployment and configuration requires the creation of a dedicated metric index (by default called **telegraf**), see the implementation section.

Dependencies
============

**The overview home page requires the deployment of the horizon chart third party visualisation addon on the search heads:**

- https://splunkbase.splunk.com/app/3117

**The metric workspace application is not required but highly recommended, if it is installed, the Metric link will be automatically available within the application bar:**

- https://splunkbase.splunk.com/app/4192/

Initial deployment
==================

**The deployment of the Splunk application for OS monitoring with Telegraf is straight forward:**

- Using the application manager in Splunk Web (Settings / Manages apps)

- Extracting the content of the tgz archive in the "apps" directory of Splunk

- For SHC configurations (Search Head Cluster), extract the tgz content in the SHC deployer and publish the SHC bundle

Upgrade
=======

Upgrading the Splunk application is pretty much the same operation, use one of the techniques that matches your conditions / requirements.
