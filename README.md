# ansible-datadog-agent #

Ansible Role for Datadog Agent

Contains two parts including :
- Installing / uninstalling Datadog agent
- General configuration for Datadog agent

## Installing / Uninstalling Datadog Agent

It's basically tasks to do Datadog agent package installation in Ubuntu.

## General Configuration

Covers Datadog general configuration sections, in initial release, it will be used to deploy Datadog API key to the configuration.

# Required Variables

None

# Additional Variables
- datadog_state
  desc: present, absent
  default: present

- datadog_enable
  desc: yes, no
  default: yes

- datadog_agent_version
  desc: datadog agent version format
  default: 1:5.21.1-1

- datadog_log_retention
  desc: positive integer
  default: 1

- datadog_log_size
  desc: volume size
  default: 10MB

- datadog_api_key
  desc: API key of datadog agent, leave empty will fail the agent.

- datadog_dogstatsd_port
  desc: statsd port number to listen on
  default: 18125

Testing

There are three options of testing:
- Installation (test_present.yml)
- Uninstallation (test_absent.yml)
- Configuration (test_config.yml)

To testing using vagrant for those options, use:

    TASK='task_name' vagrant up

task_name value : present, absent, config
