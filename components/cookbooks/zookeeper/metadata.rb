name             "Zookeeper"
maintainer       "Chris Howe - Infochimps, Inc"
maintainer_email "coders@infochimps.com"
license          "Apache 2.0"
version          "3.0.4"
description      "Zookeeper, a distributed high-availability consistent datastore"

grouping 'default',
  :access => "global",
  :packages => [ 'base', 'mgmt.catalog', 'mgmt.manifest', 'catalog', 'manifest', 'bom' ]
# installation attributes
attribute 'mirror',
  :description          => 'Location of mirror',
  :required => "required",
  :default               => 'http://apache.mirrors.pair.com/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz',
  :format => {
    :category => '1.Global',
    :help => 'Mirror location',
    :order => 1
  }

attribute 'version',
  :description => 'Version of the zookeeper',
  :required => "required",
  :default => '$OO_LOCAL{version}',
  :format => {
    :category => '1.Global',
    :help => 'Version of the zookeeper',
    :order => 1
  }

attribute 'install_dir',
  :description => 'Installation Directory',
  :required => 'required',
  :default => '$OO_LOCAL{install_dir}',
  :format => {
    :category => '1.Global',
    :help => 'Zookeeper Installation Directory ',
    :order => 2
  }

attribute 'checksum',
  :description          => 'CheckSum of binary',
  :required             => 'required',
  :default              => 'e92b634e99db0414c6642f6014506cc22eefbea42cc912b57d7d0527fb7db132',
  :format => {
    :category => '1.Global',
    :help => 'SHA checksum',
    :order => 3
  }



# attribute 'group',
  # :description          => 'group of user',
  # :required => 'required',
  # :default               => 'zookeeper',
  # :format => {
    # :category => '1.Global',
    # :help => 'Zookeeper Group user ',
    # :order => 4
  # }
#
# attribute 'user',
  # :description          => 'group of user',
  # :required => 'required',
  # :default               => 'zookeeper',
  # :format => {
    # :category => '1.Global',
    # :help => 'System user to use for the tomcat process ',
    # :order => 5
  # }

attribute 'conf_dir',
  :description          => 'Configuration Directory where conf. will be saved',
  :required => 'required',
  :default               => '/etc/zookeeper',
  :format => {
    :category => '1.Global',
    :help => 'Location of zookeeper configuration files(zoo.cfg).',
    :order => 4
  }

# attribute 'pid_dir',
  # :description          => 'Location of zookeeper Pid files',
  # :required => 'required',
  # :default               => '/var/run/zookeeper',
  # :format => {
    # :category => '1.Global',
    # :help => 'Location of zookeeper PID files.',
    # :order => 5
  # }

  # attribute 'home_dir',
  # :description          => 'Home Directory',
  # :required => 'required',
  # :default               => '/usr/lib/zookeeper',
  # :format => {
    # :category => '1.Global',
    # :help => 'Directory where zookeeper will be installed',
    # :order => 8
  # }

attribute 'jvm_args',
  :description => 'JVM tuning params ',
  :required => 'optional',
  :default => "-Xmx4g",
  :format => {
    :category => '1.Global',
    :help => 'JVM tuning parameters to start zookeeper.',
    :order => 6
  }

attribute 'gc_log_params',
  :description => 'GC Logging',
  :data_type => 'array',
  :default => '["-verbose:gc","-XX:+PrintGCDetails","-XX:+PrintGCDateStamps"]',
  :format => {
    :help => 'Example: -verbose:gc -XX:+PrintHeapAtGC -XX:+PrintGCDetails etc. (One per line)',
    :category => '1.Global',
    :order => 7
  }

attribute 'log4j_logger',
  :description          => 'What kind of appender ',
  :required => 'optional',
  :default               => "INFO,ROLLINGFILE",
  :format => {
    :category => '1.Global',
    :help => 'The time interval in hours for which the purge task has to be triggered. Set to a positive integer (1 and above) to enable the auto purging. Defaults to 0..',
    :order => 8
  }

attribute 'log_dir',
  :description          => 'Location of Zookeeper log',
  :required => 'required',
  :default               => '/var/log/zookeeper',
  :format => {
    :category => '1.Global',
    :help => 'the location where ZooKeeper will store the  log.',
    :order => 9
  }

attribute 'tick_time',
  :description          => 'The length of a single tick in ms.',
  :required => 'required',
  :default               => "2000",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'The length of a single tick, which is the basic time unit used by ZooKeeper, as measured in milliseconds. It is used to regulate heartbeats, and timeouts. For example, the minimum session timeout will be two ticks',
    :order => 1,
    :pattern => "[0-9]+"
  }

attribute 'client_port',
  :description          => 'Port to listen for client connections',
  :required => 'required',
  :default               => "2181",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'The port to listen for client connections; that is, the port that clients attempt to connect to.',
    :order => 2,
    :pattern => "[0-9]+"
  }

  attribute 'jmx_port',
    :description          => 'Port to listen for remote JMX connections',
    :required => 'required',
    :default               => "11061",
    :format => {
      :category => '2.Configuration Parameters',
      :help => 'The port to listen for remote JMX connections.  Zookeeper will also listen for JMX RMI connections on jmx_port + 1 so be sure that both ports are free',
      :order => 2,
      :pattern => "[0-9]+"
    }

attribute 'leader_port',
  :description          => 'Port followers use to connect to the leader',
  :required => 'required',
  :default               => "2888",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'Port followers use to connect to the leader.',
    :order => 3,
    :pattern => "[0-9]+"
  }

attribute 'election_port',
  :description          => 'The leader election port is only necessar',
  :required => 'required',
  :default               => "3888",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'The leader election port is only necessar.',
    :order => 4,
    :pattern => "[0-9]+"
  }

attribute 'data_dir',
  :description          => 'Location of Data directory ',
  :required => 'required',
  :default               => '/var/zookeeper/data',
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'the location where ZooKeeper will store the in-memory database snapshots and, unless specified otherwise, the transaction log of updates to the database. ',
    :order => 5
  }

attribute 'journal_dir',
  :description          => 'Location of Data-log directory ',
  :required => 'required',
  :default               => '/var/zookeeper/txlog',
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'the location where ZooKeeper will store the transaction log.',
    :order => 6
  }


attribute 'max_client_connections',
  :description          => 'Max. Client Connections',
  :required => 'required',
  :default               => '1000',
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'Limits the number of concurrent connections (at the socket level) that a single client, identified by IP address, may make to a single member of the ZooKeeper ensemble. This is used to prevent certain classes of DoS attacks, including file descriptor exhaustion. The zookeeper default is 60; this file bumps that to 1000 and should be good for most users. Setting of 0 entirely removes the limit on concurrent connections',
    :order => 7,
    :pattern => "[0-9]+"
  }


# Reference: https://zookeeper.apache.org/doc/trunk/zookeeperProgrammers.html#ch_zkSessions
attribute 'max_session_timeout',
  :description  => 'Max. Session Timeout',
  :required     => 'required',
  :default      => '40000',
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'Expirations happens when the cluster does not hear from the client within the specified session timeout period (i.e. no heartbeat). At session expiration the cluster will delete any/all ephemeral nodes owned by that session and immediately notify any/all connected clients of the change (anyone watching those znodes). It must be between 2 and 20 tick-times',
    :order => 8,
    :pattern => "[0-9]+"
  }


attribute 'snapshot_trigger',
  :description          => 'After how many transactions, snapshot should start ?',
  :required => 'required',
  :default               => "100000",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'ZooKeeper logs transactions to a transaction log. After snapCount transactions are written to a log file a snapshot is started and a new transaction log file is created. The default snapCount is 100,000.',
    :order => 8,
    :pattern => "[0-9]+"
  }

attribute 'initial_timeout_ticks',
  :description          => 'Time in ticks (see initLimit), to allow followers to connect and sync to a leader',
  :required => 'required',
  :default               => "5",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'Time in ticks, the leader will allow the followers to download the data from the leader and be ready to server requests. Increase if the amount of data managed by ZooKeeper is large',
    :order => 9,
    :pattern => "[0-9]+"
  }

# Reference: http://user.zookeeper.apache.narkive.com/Tg2s5EG3/about-initlimit-and-synclimit

attribute 'sync_timeout_ticks',
  :description          => 'Time in ticks (see syncLimit), to allow followers to sync with ZooKeeper',
  :required => 'required',
  :default               => "2",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'Time in ticks, to allow followers to sync with ZooKeeper. If the leader does not hear from a follower in the syncLimit time it will drop the follower from the quorum, and vice versa',
    :order => 10,
    :pattern => "[0-9]+"
  }


attribute 'autopurge_purgeinterval',
  :description          => 'Time interval in hours for which the purge task has to be triggered',
  :required => 'required',
  :default               => "6",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'The time interval in hours for which the purge task has to be triggered. Set to a positive integer (1 and above) to enable the auto purging. Defaults to 0..',
    :order => 11,
    :pattern => "[0-9]+"
  }

attribute 'autopurge_snapretaincount',
  :description          => 'Number of snapshots to retain for autopurge',
  :required => 'required',
  :default               => "10",
  :format => {
    :category => '2.Configuration Parameters',
    :help => 'When enabled, ZooKeeper auto purge feature retains the number (autopurge.snapRetainCount) most recent snapshots and the corresponding transaction logs in the dataDir and dataLogDir respectively and deletes the rest. Defaults to 3. Minimum value is 3.',
    :order => 12,
    :pattern => "[0-9]+"
  }

attribute 'prod_level_checks_enabled',
  :description => 'Enable production level checks',
  :required => 'required',
  :default => 'false',
  :format => {
    :help => 'Enabling this parameter will enforce deployments with Minimum number of clouds and computes.',
    :category => '3. Production level checks',
    :order => 13,
    :form => { 'field' => 'checkbox' },
  #            :editable => false
  }

attribute 'min_clouds',
  :description  => 'Minimum number of Clouds',
  :default  => "3",
  :format => {
    :category => '3. Production level checks',
    :help => 'It is recommended to provision Zookeeper ensemble in 3 separate clouds, especially for production deployment',
    :order => 14,
    :pattern => "[0-9]+",
    :filter => {"all" => {"visible" => ('prod_level_checks_enabled:eq:true')}}
  }

attribute 'min_computes_per_cloud',
  :description  => 'Minimum number of Computes per Cloud',
  :default  => "2",
  :format => {
    :category => '3. Production level checks',
    :help => 'It is recommended to provision Zookeeper ensemble in 3 separate clouds with 2 nodes per clouds, especially for production deployment',
    :order => 15,
    :pattern => "[0-9]+",
    :filter => {"all" => {"visible" => ('prod_level_checks_enabled:eq:true')}}
  }


recipe "status", "Zookeeper Status"
recipe "start", "Start Zookeeper"
recipe "stop", "Stop Zookeeper"
recipe "restart", "Restart Zookeeper"
recipe "repair", "Repair Zookeeper"
recipe "clean", "Cleanup Zookeeper"




# attribute "jmx_dash_port",
  # :display_name          => "",
  # :description           => "",
  # :default               => "2182"


# attribute "java_heap_size_max",
  # :display_name          => "",
  # :description           => "",
  # :default               => "1000"
