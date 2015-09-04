Requirements Overview
.....................

Throughout the remainder of this document the terms **requirement** and **gap**
will be used extensively.  The definitions of these terms as adopted by the
Carrier Grade Linux working group are as follows.

A **requirement** is an aspect, feature or application that is viewed as
essential to achieving and/or implementing one of the above carrier grade
objectives (that is, availability, clustering, serviceability, performance,
hardware support, security or standards implementation) that has at least one
**active**, **open source** implementation available.  Depending on the
priority of the requirement the open source implementation may or may not be
available on multiple architectures.

An application or implementation is considered **open source** so long as the
code has been provided under an OSI-approved license.

An application or implementation is considered **active** so long as it has not
obviously been abandoned by the developers and / or the community at large.
Signs of abandonment may be an official announcement by the developer with no
other developers adopting the project, it *may* be a lack of updates to support
new functionality or in response to new developments in the community or simply
to support new versions of the underlying software (for example a lack of
updates to support newer kernel versions).  There is no strict definition of a
reasonable amount of time to expect updates in a project since mature projects
move at a pace quite different from emerging ones, however as a general
guideline the CGL working group has adopted a window of two (2) years as a good
indication of whether a project is still active.


A **gap** is an aspect, feature or application that is viewed as very important
to achieving and/or implementing one of the above carrier grade objectives that
does not currently have an **open source** (see above) implementation available.

The motivation behind the above definitions for requirements and gaps is to
ensure that there is no barrier to entry to the carrier grade distribution space
and to encourage developers to contribute their code back to the community under
a free and open source license.  The Carrier Grade Linux working group believes
that this is the best way to both recognize carrier requirements and encourage
healthy collaboration and competition in the community.


The following table shows an example of a **requirement**:

+---------+----------------------------------+--------------+--------------+
| **ID**  | **Name**                         | **Category** | **Priority** |
|         |                                  |              |              |
|         |                                  |              |              |
+---------+----------------------------------+--------------+--------------+
| STD.1.0 | Linux Standard Base Compliance   | Standards    | P1           |
|         |                                  |              |              |
|         | http://www.linuxbase.org         |              |              |
|         |                                  |              |              |
+---------+----------------------------------+--------------+--------------+
| CGL specifies that carrier grade Linux shall be compliant with at least  |
| the Linux Standard Base (LSB) 3.0 The LSB 3.0 specification has been     |
| split into a generic LSB core, a generic module for C++, and a set of    |
| architecture specific modules. Required LSB 3.0 modules for CGL are:     |
|                                                                          |
|  - Generic LSB-Core                                                      |
|  - Generic LSB-CXX                                                       |
|  - For each supported architecture, one LSB-Core module and one LSB-CXX  |
|    module                                                                |
|                                                                          |
| The developer may choose to implement more than one architecture         |
| platform. In this case, each supported architecture platform shall       |
| contain an implementation of at least one architecture specific LSB-Core |
| module and one architecture specific LSB-CXX module.                     |
|                                                                          |
|                                                                          |
| NOTE: LSB 3.0 Certification program requires ALL 3 parts (core, C++, AND |
| graphics) be certificated. The graphics part will be a stretch for CGL   |
| to require as it is not essential for carrier grade server type of       |
| applications. CGL WG to work with FSG/LSB to initiate the subprofile     |
| certification program to allow CGL distribution to be certified.         |
|                                                                          |
+--------------------------------------------------------------------------+

Each **requirement** contains the following fields:

+---------------+----------------------------------------------------------+
| *ID*          | A unique identification number including:                |
|               |                                                          |
|               | - An acronym identifying a category for the requirement  |
|               |   (first field)                                          |
|               | - An ID number for the requirement (second field)        |
|               | - An ID number for a sub-requirement (third field).      |
|               |   A “0” in this field indicates the requirement is a     |
|               |   stand-alone requirement. A number in this field        |
|               |   indicates this requirement is a sequentially numbered  |
|               |   sub-requirement                                        |
+---------------+----------------------------------------------------------+
| *Name*        | Short description of the requirement                     |
+---------------+----------------------------------------------------------+
| *Category*    | The category to which the requirement is assigned. This  |
|               | example contains Standards (STD) requirements.           |
+---------------+----------------------------------------------------------+
| *Priority*    | P1 – Required:                                           |
|               |    Must be implemented and the  implementation must be   |
|               |    disclosed as part of the CGL 5.0 registration         |
|               |    process.                                              |
|               |                                                          |
|               | P2 – Disclosure:                                         |
|               |    Does not have to be implemented but the CGL 5.0       |
|               |    registration must include a statement whether the     |
|               |    requirement has been implemented and, if it has been  |
|               |    implemented, how the requirement is met in the        |
|               |    distribution.                                         |
+---------------+----------------------------------------------------------+
| *Description* | Detailed description of the requirement.                 |
+---------------+----------------------------------------------------------+

A **gap** is follows a similar formatting:

+-------------------------------------+-------------+----------------------+
| **ID**                              | **PID**     | **Name**             |
|                                     |             |                      |
+-------------------------------------+-------------+----------------------+
| GAP.1.0                             | AVL.3.2     | Forced Un-mount      |
|                                     |             |                      |
+-------------------------------------+-------------+----------------------+
| unmounting of a file system. The un-mount shall work even if there are   |
| open files in the file system. Pending requests shall be ended with the  |
| return of an error value when the file system is unmounted.              |
+--------------------------------------------------------------------------+

Each **gap** contains the following fields:

+---------------+----------------------------------------------------------+
| *ID*          | A unique identification number including:                |
|               |                                                          |
|               |    - The **GAP** identifier (first field)                |
|               |    - A unique ID number for the gap (second field)       |
|               |    - An ID number for a sub-requirement (third field). A |
|               |      “0” in this field indicates the requirement is a    |
|               |      stand-alone requirement.  A number in this field    |
|               |      indicates this requirement is a sequentially        |
|               |      numbered sub-requirement                            |
+---------------+----------------------------------------------------------+
| *PID*         | If the gap had previously been assigned an ID by an      |
|               | earlier version of the CGL specification, it will be     |
|               | identified here.                                         |
+---------------+----------------------------------------------------------+
| *Name*        | Short description of the gap.                            |
|               |                                                          |
+---------------+----------------------------------------------------------+
| *Description* | Detailed description of the gap.                         |
|               |                                                          |
+---------------+----------------------------------------------------------+
