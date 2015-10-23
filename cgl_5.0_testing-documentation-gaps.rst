CGL 5.0 GAPS
============

Following are the features or aspects of Carrier Grade Linux that, at the time
of this publication, the CGL Workgroup has identified as un-implemented in the
open source community or has not been widely adopted and proven ready for
carrier grade applications. These features are listed here to provide
information for developers and distribution vendors on key areas of
differentiation that are of particular interest to carriers.

AVL.3.2 Forced Un-mount
-----------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.1.0 | AVL.3.2  | Forced Un-mount                                         |
+---------+----------+---------------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide support for forced     |
|  unmounting of a file system. The un-mount shall work even if there are      |
|  open files in the file system. Pending requests shall be ended with the     |
|  return of an error value when the file system is unmounted.                 |
+---------+----------+---------------------------------------------------------+

AVL.3.3 Forced Un-mount Application Notification
------------------------------------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.2.0 | AVL.3.3  | Forced Un-mount Application Notification                |
+---------+----------+---------------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide a notification         |
|  mechanism when a forced un-mount of a file system occurs.                   |
+---------+----------+---------------------------------------------------------+

AVL.14.0 Excessive CPU Cycle Usage Detection
--------------------------------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.3.0 | AVL.14.0 | Excessive CPU Cycle Usage Detection                     |
+---------+----------+---------------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide a mechanism that       |
|  detects excessive CPU cycle usage by any process or thread. To enable       |
|  detection, the following capabilities shall be provided:                    |
|                                                                              |
|     - Communication between the monitoring process and the kernel.           |
|     - Registering a list of processes or threads and their allowed CPU       |
|       cycle thresholds.                                                      |
|     - Ability to define policy based on process events including             |
|       process/thread creation and exit.                                      |
|     - Ability to take action whenever an event occurs.                       |
|     - Ability to set the CPU cycle threshold to a resolution of one          |
|       millisecond.                                                           |
+---------+----------+---------------------------------------------------------+

AVL.28.0 Support of Mlocked Page Limits
---------------------------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.4.0 | AVL.28.0 | Support of Mlocked Page Limits                          |
+---------+----------+---------------------------------------------------------+
|  CGL specifies that carrier grade Linux shall support system wide limits     |
|  on mlocked pages. This shall be configurable and enforced when the          |
|  mlock page count exceeds the maximum setting. Either explicitly through     |
|  a system call or implicitly through a page fault. The behavior shall be     |
|  identical to per process mlocked limit when this system wide limit is       |
|  exceeded.                                                                   |
+---------+----------+---------------------------------------------------------+

AVL.29.0 Coarse Resource Enforcement
------------------------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.5.0 | AVL.29.0 | Coarse Resource Enforcement                             |
+---------+----------+---------------------------------------------------------+
|  The |CGOS| needs to provide mechanisms that allow resource consumption      |
|  constraints to be applied to an individual thread, a process and all        |
|  processes running with a particular user ID or group ID, when resource      |
|  consumption limits are exceeded.                                            |
|                                                                              |
|  These resource consumption constraints should follow today's mechanisms     |
|  for resource exhaustion for individual processes and groups of              |
|  processes.  Constraints must have actions that can be selected when an      |
|  application is first started. Such actions include "log", "signal           |
|  process" and "terminate process".                                           |
|                                                                              |
|  This requirement applies to CPUs as well as memory.                         |
+---------+----------+---------------------------------------------------------+

CAF.2.3 Deliberate TCP Session Takeover
---------------------------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.6.0 | CAF.2.3  | Deliberate TCP Session Takeover                         |
+---------+----------+---------------------------------------------------------+
|  CGL specifies a mechanism to synchronize TCP sockets, buffer                |
|  structures, and sequence numbers so that redundant nodes may take over      |
|  TCP sessions originated on other nodes. A deliberate TCP session            |
|  takeover assumes that TCP session(s) are transferred deliberately and       |
|  not as the result of unexpected node failure(s).                            |
+---------+----------+---------------------------------------------------------+

CAF.2.4 TCP Session Takeover on Node Failure
--------------------------------------------
+---------+----------+---------------------------------------------------------+
| ID      |  PID     | Name                                                    |
+=========+==========+=========================================================+
| GAP.7.0 | CAF.2.4  | TCP Session Takeover on Node Failure                    |
+---------+----------+---------------------------------------------------------+
|  CGL specifies a mechanism to synchronize TCP sockets, buffer                |
|  structures, and sequence numbers so that when a critical resource           |
|  fails, such as a CPU, memory, or kernel, a redundant node may take over     |
|  TCP sessions originated on the failed node. Note that when the TCP          |
|  session(s) are assumed by a redundant node, the sessions will resume        |
|  from the last checkpoint. TCP traffic should continue even if there is      |
|  a conflict between the last TCP state of the failed node and the            |
|  checkpointed TCP state on the redundant node.                               |
+---------+----------+---------------------------------------------------------+

CMON.1.4 Cluster-Wide Application Monitor
----------------------------------------- 
+---------+---------------+----------------------------------------------------+
| ID      | PID           |       Name                                         |
+=========+===============+====================================================+
| GAP.8.0 | CMON.1.4      | Cluster-Wide Application Monitor                   |
+---------+---------------+----------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide a cluster-wide         |
|  logging mechanism. A cluster-wide log shall contain node identification,    |
|  message type, and cluster time identification. This cluster-wide log may    |
|  be implemented as a central log or as the collection of specific node       |
|  logs.                                                                       |
+---------+---------------+----------------------------------------------------+

SFA.14.0 Per Thread CPU Time Limits and Signaling
-------------------------------------------------
+---------+---------------+----------------------------------------------------+
| ID      | PID           |       Name                                         |
+=========+===============+====================================================+
| GAP.9.0 | SFA.14.0      | Per Thread CPU Time Limits and Signaling           |
+---------+---------------+----------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide a method to            |
|  accurately track CPU time consumed by an individual thread. It shall        |
|  also provide a method to set CPU threshold time used by an individual       |
|  thread. This method shall also include the ability to send a signal to      |
|  an individual thread if its CPU threshold time is exceeded.                 |
+---------+---------------+----------------------------------------------------+

SMM.6.0 Boot Cycle Detection
----------------------------
+----------+--------------+----------------------------------------------------+
| ID       | PID          |       Name                                         |
+==========+==============+====================================================+
| GAP.10.0 | SMM.6.0      | Boot Cycle Detection                               |
+----------+--------------+----------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide support for            |
|  detecting a repeating reboot cycle due to recurring failures. This          |
|  detection should happen in user space before system services are            |
|  started. This type of failure requires a response due to the negative       |
|  impact of repeatedly bringing up and taking down services. A                |
|  configurable policy is needed to set thresholds of cycling and desired      |
|  shutdown actions, such as exponential back off, shutdown, or notifying      |
|  administrators.                                                             |
+----------+--------------+----------------------------------------------------+

SMM.7.8 Support for User Locked Page Reporting
----------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.11.0 | SMM.7.8 | Support for User Locked Page Reporting                  |
+----------+---------+---------------------------------------------------------+
|  CGL specifies that in addition to current memory usage reporting, the       |
|  OS shall report the count of mlocked pages to accurately determine how      |
|  much memory may be reclaimed by the page frame reclaim algorithm. Based     |
|  on mlocked page count and current memory usage reporting, a more            |
|  accurate amount of free physical memory may be determined. In addition      |
|  current overcommit policies shall take mlocked pages into account to        |
|  accurately enforce memory overcommit policies for which the count of        |
|  mlocked pages is applicable.                                                |
+----------+---------+---------------------------------------------------------+

SMM.7.9 Support for Precise Process Accounting
----------------------------------------------
+---------------+---------------+----------------------------------------------+
| ID            | PID           |       Name                                   |
+===============+===============+==============================================+
| GAP.12.1      | SMM.7.9       | Support for Precise Process Accounting       |
+---------------+---------------+----------------------------------------------+
|  CGL specifies that carrier grade Linux shall support precise process        |
|  accounting of CPU usage. This shall be accomplished by time stamping        |
|  various kernel execution paths using the native platform high resolution    |
|  counter. This accounting activity shall be run-time configurable,           |
|  including partial or total disabling, via the ``proc`` file system. When    |
|  totally disabled no additional overhead will be measurable. Disabling or    |
|  enabling precise accounting shall not affect Linux native tick              |
|  accounting. All data shall be accessible from the ``proc`` file system. For |
|  task per-CPU metrics, a range of 1 through N rows may be configured such    |
|  that each row accrues metrics for one CPU, a range in between 1 and N       |
|  CPUs (all metrics summed together).  Where N is the number of logical       |
|  CPUs. Additional Sub-requirements follow.                                   |
+---------------+---------------+----------------------------------------------+

GAP.12.2 Precise Process Accounting: per-CPU metrics
----------------------------------------------------
+---------------+---------------+----------------------------------------------+
| ID            | PID           |       Name                                   |
+===============+===============+==============================================+
| GAP.12.2      |               | Support for Precise Process Accounting:      |
|               |               | per-CPU metrics                              |
+---------------+---------------+----------------------------------------------+
|                                                                              |
|  CGL specifies that carrier grade Linux shall accrue the following metrics   |
|  on per-CPU basis:                                                           |
|                                                                              |
|  - Per task CPU usage user, system, interrupt (in tasks context), and        |
|    time spent on run queue                                                   |
|                                                                              |
|  - System wide CPU usage idle, user, system, interrupt, ``softirq``          |
|                                                                              |
|  - Per task occurrence counts of system calls, signals, reschedules,         |
|    voluntary blocks, preemption due to higher priority task and              |
|    preemptions due to time slice expirations.                                |
|                                                                              |
|  - System wide occurrence counts of interrupts, system calls, signals,       |
|    and ``softirqs``, with ``softirqs`` grouped by types.                     |
+---------------+---------------+----------------------------------------------+

GAP.12.3 Precise Process Accounting: per-Task Scheduling Latency
----------------------------------------------------------------
+---------------+---------------+----------------------------------------------+
| ID            | PID           |       Name                                   |
+===============+===============+==============================================+
| GAP.12.3      |               | Support for Precise Process Accounting:      |
|               |               | per-Task Scheduling Latency                  |
+---------------+---------------+----------------------------------------------+
|  CGL specifies that carrier grade Linux shall collect per-Task latency       |
|  counts.  The per-Task table of schedule latency counts shall be             |
|  implemented such that a schedule latency value is indexed into              |
|  predetermined ranges, and the count for that range is incremented. For      |
|  example a table size of three will correspond to three scheduling           |
|  latency ranges such as:                                                     |
|                                                                              |
|  - index 0: 0-10 milliseconds                                                |
|                                                                              |
|  - index 1: 10-100 milliseconds                                              |
|                                                                              |
|  - index 2: greater then 100 milliseconds The table size and ranges may      |
|    be build time configurable                                                |
|                                                                              |
+---------------+---------------+----------------------------------------------+

GAP.12.4 Precise Process Accounting: Configurable OS Timers and Caps
--------------------------------------------------------------------
+---------------+---------------+----------------------------------------------+
| ID            | PID           |       Name                                   |
+===============+===============+==============================================+
| GAP.12.4      |               | Support for Precise Process Accounting:      |
|               |               | Configurable OS Timers and Caps              |
+---------------+---------------+----------------------------------------------+
|  CGL specifies that carrier grade Linux shall enable certain OS timers and   |
|  CPU caps to be configured to increment or expire precisely                  |
|  The minimal list of these are:                                              |
|                                                                              |
|  - SIGXCPU                                                                   |
|  - SIGVTALARM                                                                |
|  - SIGPROF                                                                   |
+---------------+---------------+----------------------------------------------+

SMM.10.0 System Initialization Error Handling Enhancements
----------------------------------------------------------
+---------------+---------------+----------------------------------------------+
| ID            | PID           |       Name                                   |
+===============+===============+==============================================+
| GAP.13.0      | SMM.10.0      | System Initialization Error                  |
|               |               | Handling Enhancements                        |
+---------------+---------------+----------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide a mechanism to         |
|  detect errors during system initialization. When such an initialization     |
|  error occurs, this mechanism shall be able to report the event to a         |
|  remote system over the network. CGL further specifies the following         |
|  error conditions shall apply to this requirement:                           |
|                                                                              |
|  - The kernel image fails before ``init`` is started                         |
|                                                                              |
|  - The ``init`` process fails to fully complete the startup initialization   |
|    to the point where the conventional error reporting mechanisms are        |
|    available                                                                 |
+---------------+---------------+----------------------------------------------+

SPM.5.0 Manual Software Rollback
--------------------------------
+----------+---------------+---------------------------------------------------+
| ID       | PID           |       Name                                        |
+==========+===============+===================================================+
| GAP.14.0 | SPM.5.0       | Manual Software Rollback                          |
+----------+---------------+---------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide mechanisms that        |
|  allow manual rollback to a previous version of software without having      |
|  to reinstall the previous version.                                          |
+----------+---------------+---------------------------------------------------+

SPM.6.0 Automatic Software Rollback
-----------------------------------
+----------+---------------+---------------------------------------------------+
| ID       | PID           |       Name                                        |
+==========+===============+===================================================+
| GAP.15.0 | SPM.6.0       | Automatic Software Rollback                       |
+----------+---------------+---------------------------------------------------+
| CGL specifies that carrier grade Linux shall provide mechanisms that allow   |
| automatic rollback with configurable triggers to a previous version of       |
| software without having to reinstall the previous version.                   |
+----------+---------------+---------------------------------------------------+

PMS.5.2 iSCSI Initiator IPv6 Support
------------------------------------
+----------+---------------+---------------------------------------------------+
| ID       | PID           |       Name                                        |
+==========+===============+===================================================+
| GAP.16.0 | PMS.5.2       | iSCSI Initiator IPv6 Support                      |
+----------+---------------+---------------------------------------------------+
|  CGL specifies that the iSCSI Initiators implemented by carrier grade        |
|  Linux should support the IPv6 protocol. This would enable the iSCSI         |
|  Initiator nodes to connect to iSCSI targets only supporting IPv6 addresses. |
+----------+---------------+---------------------------------------------------+

PRF.1.6 Protecting Against Priority Inversion On Mutex
------------------------------------------------------
+----------+---------------+---------------------------------------------------+
| ID       | PID           |       Name                                        |
+==========+===============+===================================================+
| GAP.17.0 | PRF.1.6       | Protecting Against Priority Inversion On Mutex    |
+----------+---------------+---------------------------------------------------+
|  CGL specifies that carrier grade Linux shall support a mechanism for        |
|  protecting against priority inversion when using a mutex to synchronize     |
|  tasks. This mechanism shall support transitive priority inheritance and     |
|  resolve cases where several mutexes are owned by the same task. It shall    |
|  be supported in UP and SMP contexts.                                        |
+----------+---------------+---------------------------------------------------+

PRF.2.4 Support for Task Exclusive Bind to Logical CPU
------------------------------------------------------
+----------+--------------+----------------------------------------------------+
| ID       | PID          |       Name                                         |
+==========+==============+====================================================+
| GAP.18.0 | PRF.2.4      | Support for Task Exclusive                         |
|          |              | Bind to Logical CPU                                |
+----------+--------------+----------------------------------------------------+
|  CGL specifies that carrier grade Linux shall support exclusive bind of      |
|  processes or threads to any number of logical CPUs. Once the binding is     |
|  established the logical CPU(s) become exclusively dedicated to the          |
|  execution of the bound processes/threads, and idle. CGL further             |
|  specifies the following conditions shall also apply to this requirement:    |
|                                                                              |
|  - There must be at least one logical CPU available for unbound tasks.       |
|    Because of this, binding need not be supported on systems with only       |
|    one logical CPU                                                           |
|                                                                              |
|  - A logical CPU is defined as any CPU or part of a CPU/node that Linux      |
|    represents as a single processing unit to the user                        |
+----------+--------------+----------------------------------------------------+

PRF.11.1 Application (Pre-)loading Non-Root
-------------------------------------------
+----------+----------+--------------------------------------------------------+
| ID       | PID      | Name                                                   |
+==========+==========+========================================================+
| GAP.19.0 | PRF.11.1 | Application (Pre-)loading Non-Root                     |
+----------+----------+--------------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide support for the        |
|  pre-loading of an application even when the application is not executing    |
|  as root. A configuration capability must exist to allow the system          |
|  loader to determine an application's eligible for pre-loading. The          |
|  action of pre-loading an application must not overload the system           |
|  memory. The configuration capability must provide a control that allows     |
|  the application to specify what is to be done if it can't be                |
|  pre-loaded. Options are:                                                    |
|                                                                              |
|     - Load anyway as a normal (pageable) application.                        |
|     - Fail and don't load the application.                                   |
|                                                                              |
|  Regardless of the option used, any failure to pre-load the application      |
|  must be logged.                                                             |
+----------+----------+--------------------------------------------------------+

PRF.11.2 Application (Pre-)loading Limits
-----------------------------------------
+----------+----------+--------------------------------------------------------+
| ID       |  PID     | Name                                                   |
+==========+==========+========================================================+
| GAP.20.0 | PRF.11.2 | Application (Pre-)loading Limits                       |
+----------+----------+--------------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide mechanisms to          |
|  avoid overloading a system when pre-loading applications. Specifically,     |
|  it shall be possible to specify the total amount of memory reserved         |
|  (pinned) by pre-loading applications.                                       |
+----------+----------+--------------------------------------------------------+

SEC.7.4 Execution Quotas
------------------------
+----------+---------------+---------------------------------------------------+
| ID       | PID           |       Name                                        |
+==========+===============+===================================================+
| GAP.21.0 | SEC.7.4       | Execution Quotas                                  |
+----------+---------------+---------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide support for            |
|  per-user CPU execution quotas.                                              |
+----------+---------------+---------------------------------------------------+

SEC.9.0  Unified Cryptographic Framework
----------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.22.0 | SEC.9.0 |  Unified Cryptographic Framework                        |
+----------+---------+---------------------------------------------------------+
|  To provide a cryptographic framework that supports encryption and           |
|  message hashing for both kernel and user applications, secure               |
|  tamper-proof storage for security-relevant data such as keys, and           |
|  registration of cryptographic capabilities.                                 |
|                                                                              |
|  The |CGOS| needs to provide a unified framework for optimized               |
|  implementations of common cryptographic (encryption and message             |
|  hashing) algorithms.                                                        |
|                                                                              |
|  Carrier grade solutions rely on communication protocols that have           |
|  stringent security requirements. Typically, these protocols are based       |
|  on standard security application providers such as SSL, SSH, IKE and        |
|  JCE.                                                                        |
|                                                                              |
|  Data integrity is accomplished through mechanisms (message hashing)         |
|  that check that data transmitted across the network or stored               |
|  on/retrieved from disk without encryption are not modified. Data            |
|  confidentiality is accomplished through mechanisms (encryption) that        |
|  convert the data to a form not easily reversible, before being              |
|  transmitted or stored.  The use of both encryption and message hashing      |
|  for data that are transmitted or stored demands a cryptographic             |
|  framework that is available to both the kernel and user applications        |
|  and that transparently makes use of whatever hardware encryption            |
|  capabilities are available.                                                 |
|                                                                              |
|  A prerequisite to the security capabilities described above is the          |
|  ability to store in a secure, tamper-proof way security-relevant data,      |
|  such as keys used to verify the integrity of downloaded data. Keys can      |
|  be loaded during system assembly, and additional keys can be provided       |
|  using a secure mechanism after the system is started. Such a mechanism      |
|  is almost always a combination of hardware, operating system and            |
|  firmware.                                                                   |
|                                                                              |
|  A unified cryptographic framework must expose to security providers a       |
|  common interface to algorithms not only for various encryption              |
|  algorithms (at the very minimum 3DES and AES) but also for message          |
|  hashing (MD5, SHA1), message signing (RSA, DSA, DH) and random number       |
|  generation. See the RSA cryptographic token interface standard PKCS #11     |
|  [19].                                                                       |
|                                                                              |
|  Hardware acceleration is also desirable for carrier grade components        |
|  that use encryption. The cryptographic framework must offer mechanisms      |
|  whereby device drivers can register the cryptographic hardware. A           |
|  device with a cryptographic capability (key store, encryption               |
|  algorithm) must be able to register the capability with the                 |
|  cryptographic framework. Registration includes, for example, the type       |
|  of cryptographic capability, available algorithms, and number of            |
|  contexts. When a driver initializes, it must register any cryptographic     |
|  capabilities possessed by the device(s) it controls.                        |
|                                                                              |
|  When a kernel thread or user process requests that a particular             |
|  algorithm be used, the cryptographic framework must try to use the most     |
|  efficient implementation based on the availability of resources in a        |
|  transparent manner.                                                         |
|                                                                              |
|  Algorithms must be easy to export/import.  Cryptographic keys must be       |
|  easily reduced to 56 bits, or cryptography must be easy to switch off.      |
+----------+---------+---------------------------------------------------------+

.. note:: Break up into sub-gaps
   This is a prime candidate for breaking into sub-gaps.  My sense is at least
   some of this is already implemented.

   jjmac: (2015.08.14)

STD.3.2.7 SCTP signing chunks
-----------------------------
+----------+---------------+---------------------------------------------------+
| ID       | PID           |       Name                                        |
+==========+===============+===================================================+
| GAP.23.0 | STD.3.2.7     | SCTP signing chunks                               |
+----------+---------------+---------------------------------------------------+
|  CGL specifies that carrier grade Linux shall provide the functionality      |
|  listed in the Internet draft below.                                         |
|                                                                              |
|  - draft-ietf-tsvwg-sctp-auth-08.txt_: allows an SCTP sender to sign         |
|    chunks using shared keys between the sender and receiver to prevent       |
|    blind attacks against static Verification tag.                            |
+----------+---------------+---------------------------------------------------+

GAP.24.0 File System Block Mirroring
------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.24.0 |         | File System Block Mirroring                             |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide support for a file system that provides RAID-1 style mirroring       |
| support where alternate mirrors can be consulted if the checksum fails for   |
| any specific block prior to reporting a failure to the file system client.   |
+----------+---------+---------------------------------------------------------+

GAP.25.0 Online File System Integrity and Consistency Checking
--------------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.25.0 |         | Online File System Integrity and Consistency Checking   |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide support for a file system that allows data and metadata consistency  |
| and integrity checking on a file system while mounted and in use with the    |
| ``fsck`` or similar tool.                                                    |
|                                                                              |
| This consistency and integrity checking should be more detailed than the     |
| fast recovery integrity checks done from a partially completed update        |
| described in AVL.28.3.                                                       |
+----------+---------+---------------------------------------------------------+

GAP.26.0 File System Resource Allocation Guarantees
---------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.26.0 |         | File System Resource Allocation Guarantees              |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide support for a file system that allows for pre-allocation of space    |
| for files, better ensuring data is not overly fragmented on the storage      |
| media, with an API similar to the posix_fallocate() POSIX function without   |
| incurring the performance overhead associated with that API.  Deviation from |
| the posix_fallocate() is permissible provided the API is mechanically        |
| translatable.                                                                |
+----------+---------+---------------------------------------------------------+

GAP.27.0 File System Online De-fragmentation
--------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.27.0 |         | File System Online De-fragmentation                     |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide support for a file system that allows for de-fragmentation of        |
| on-disk data while the file system is mounted and in use.                    |
+----------+---------+---------------------------------------------------------+

GAP.28.0 Online File System Expansion
-------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.28.0 |         | Online File System Expansion                            |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall provide the    |
| ability to expand a mounted file system without service interruption.        |
+----------+---------+---------------------------------------------------------+

GAP.29.0 Online File System Reduction
-------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.29.0 |         | Online File System Reduction                            |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide the ability to reduce the size of a live file system without service |
| interruption.                                                                |
+----------+---------+---------------------------------------------------------+

GAP.30.0 Registration of Cryptographic Capabilities
---------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.30.0 |         | Registration of Cryptographic Capabilities              |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide a method for registering and advertising the cryptographic           |
| capabilities of the system to local and remote clients.                      |
+----------+---------+---------------------------------------------------------+

GAP.31.0 File Access Tracing: Logging
-------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.31.0 |         | File Access Tracing: Logging                            |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide the ability to record and report file access events, preserving them |
| to persistent / recoverable media that will be preserved across system       |
| crashes and/or reboots.                                                      |
+----------+---------+---------------------------------------------------------+

GAP.32.0 Asynchronous Hardware Accelerated Crypto Support
---------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.32.0 |         | Asynchronous Hardware Accelerated Crypto Support        |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide facilities for applications to asynchronously perform encryption     |
| when a hardware crypto engine is available.                                  |
+----------+---------+---------------------------------------------------------+

GAP.33.0 Asynchronous Hardware Accelerated Crypto Support: IPSec
----------------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.33.0 |         | Asynchronous Hardware Accelerated Crypto Support: IPSec |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide facilities for applications to asynchronously perform IPSec          |
| Authentication Header (AH) and Encapsulating Security Protocol (ESP)         |
| encryption as defined in RFC 4301 and RFC 4309 when a suitable hardware      |
| crypto engine is available.                                                  |
+----------+---------+---------------------------------------------------------+

GAP.34.0 Asynchronous Hardware Accelerated Crypto Support: SNOW 3G
------------------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.34.0 |         | Asynchronous Hardware Accelerated Crypto Support:       |
|          |         | SNOW 3G                                                 |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide facilities for applications to asynchronously perform SNOW 3G cipher |
| for both Confidentiality (UEA2) and Integrity (UIA2) modes when a suitable   |
| hardware crypto engine is available.                                         |
+----------+---------+---------------------------------------------------------+

GAP.35.0 Asynchronous Hardware Accelerated Crypto Support: AES
--------------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.35.0 |         | Asynchronous Hardware Accelerated Crypto Support: AES   |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux                      |
| provide facilities for applications to shall asynchronously perform Advanced |
| Encryption Standard cipher when a suitable hardware crypto engine is         |
| available.                                                                   |
+----------+---------+---------------------------------------------------------+

GAP.36.0 Thread Naming: Debugging
---------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.36.0 |         | Thread Naming: Debugging                                |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide the ability to uniquely identify threads with a symbolic name in     |
| addition to the existing process and thread ID mechanism.  Assigned symbolic |
| names must be able to be displayed in addition to all other information      |
| normally presented about threads in the Gnu Debugger (GDB).  It must be      |
| possible to use symbolic names rather than thread ID to address individual   |
| threads within GDB.                                                          |
+----------+---------+---------------------------------------------------------+

GAP.37.0 Thread Naming: Monitoring
----------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.37.0 |         | Thread Naming: Monitoring                               |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide the ability to uniquely identify threads with a symbolic name in     |
| addition to the existing process and thread ID mechanism.  Assigned symbolic |
| names must be able to be displayed in addition to all other information      |
| normally presented about threads in system status applications such as top.  |
+----------+---------+---------------------------------------------------------+

GAP.38.0 Process Core Dump Filtering
------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.38.0 |         | Process Core Dump Filtering                             |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| implement custom core dump behaviour for processes.  An API must be provided |
| that will allow a process to request specialized handling in the event that  |
| the size of a resulting core dump would exceed the system-defined limit.  If |
| the core dump will exceed the limit, individual segments will be dumped in   |
| the following priority order:                                                |
|                                                                              |
|    1. Stack                                                                  |
|    2. Heap                                                                   |
|    3. Shared Memory                                                          |
|    4. BSS Data                                                               |
|    5. Initialized Data                                                       |
|                                                                              |
+----------+---------+---------------------------------------------------------+

GAP.39.0 Process Core Dump Filtering: Compatibility
---------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.39.0 |         | Process Core Dump Filtering: Compatibility              |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| implement custom core dump behaviour for processes.  The resulting core dump |
| must be compatible with current versions of the Gnu Debugger, GDB, even if   |
| not all segments have been included.                                         |
+----------+---------+---------------------------------------------------------+

GAP.40.0 Efficient Multi-Threaded Application CPU Usage Monitoring
------------------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.40.0 |         | Efficient Multi-Threaded Application CPU Usage          |
|          |         | Monitoring                                              |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide a summary of overall CPU usage for highly threaded applications.     |
|                                                                              |
| This summary will include user, system and interrupt mode execution          |
| statistics as well as the time spent in userspace waiting for locks and time |
| spend handling page faults for each thread and for the containing process.   |
|                                                                              |
| This summary must accurately reflect the usage of the system at the time     |
| the summary is requested and gathering these statistics must not result in   |
| any noticeable performance degradation.  The mechanism must also facilitate  |
| retrieval of process time usage and enforcement of CPU exhaustion limits in  |
| context switching code.  These statistics must not rely on periodic          |
| sampling, each state transition within a thread must be recorded for the     |
| individual thread and for the process containing the thread.                 |
+----------+---------+---------------------------------------------------------+

GAP.41.0 Persistent Shared Memory
---------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.41.0 |         | Persistent Shared Memory                                |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide a mechanism for applications to store and retrieve critical data     |
| without depending on a locally attached disk.  This mechanism must preserve  |
| such data from system crashes and across system reboots.                     |
+---------+----------+---------------------------------------------------------+

.. note:: Implemented
   I believe this is implemented by either ``pstore`` or ``pramfs``, discuss.

   jjmac: (2015.08.25)

GAP.42.0 Coarse Resource Enforcement
------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.42.0 |         | Coarse Resource Enforcement                             |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| provide a mechanism that will impose resource consumption limits on one or   |
| more threads, processes or groups of processes.  It must be possible to      |
| address individual threads, groups of threads, whole processes or groups of  |
| processes identified by the effective or real user or group ID with which    |
| they are running.  Limits must have actions associated with them that can be |
| selected when the process or thread is first started.  These actions must at |
| least include:                                                               |
|                                                                              |
|   - Log - Allow the resource overstep to continue but report it via the      |
|     normal system event reporting mechanism.                                 |
|   - Signal - Allow the resource overstep to continue but send a pre-defined  |
|     signal to the thread/process.                                            |
|   - Terminate - Do not allow the resource overstep to occur, instead         |
|     terminate the thread/process.                                            |
|                                                                              |
| The resource consumption limits must be applied to at least CPU time and     |
| memory usage.                                                                |
+---------+----------+---------------------------------------------------------+

GAP.43.0 API for Non-Uniform Memory Architectures: Domain Binding
-----------------------------------------------------------------
+----------+---------+---------------------------------------------------------+
| ID       | PID     | Name                                                    |
+==========+=========+=========================================================+
| GAP.43.0 |         | API for Non-Uniform Memory Architectures: Domain        |
|          |         | Binding                                                 |
+----------+---------+---------------------------------------------------------+
| Linux Foundation CGL specifies that carrier grade Linux shall                |
| implement the notion of a latency domain, defined as a set of CPUs with      |
| directly attached, local memory.  All systems shall have at least one        |
| latency domain, representing a uniform memory architecture.  Additional      |
| latency domains can exist for non-uniform memory architectures, in which     |
| case carrier grade Linux will provide an API that allows a process to bind   |
| to a specific latency domain.  An application must be able to specify the    |
| binding policy, with at least the following policies available:              |
|                                                                              |
|   - Opportunistic - A process will only migrate to a new latency domain if   |
|     it is unable to execute in the current latency domain.                   |
|   - Strict - A process will never migrate to a new latency domain even if it |
|     would otherwise be unable to continue execution.                         |
+---------+----------+---------------------------------------------------------+


.. |CGOS| replace:: *Carrier Grade Operating System*
.. _draft-ietf-tsvwg-sctp-auth-08.txt: https://tools.ietf.org/html/draft-ietf-tsvwg-sctp-auth-08
