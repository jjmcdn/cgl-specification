Document Organization
.....................

For clarity and ease of use, the specification has been split by topic into the following sections:


   #. **Requirements Overview**
      Describes the requirements and gap formatting, terminology used throughout
      the remainder of the document and the registration implications of
      requirements and gaps.

   #. **Availability Requirements Definition**
      Describes useful and necessary functionality for single node availability
      and recovery.

   #. **Clusters Requirements Definition**
      Describes useful and necessary components to build a clustered set of
      individual systems.

      The key target is clustering for high availability, although load
      balancing and performance are secondary aims. It is recognized that “one
      size fits all” is not achievable, so not all features will always be used
      together.  

   #. **Serviceability Requirements Definition**
      Describes useful and necessary features for servicing and maintaining a
      system and coverage of tools that support serviceability.


   #. **Performance Requirements Definition**
      Describes useful and necessary features that contribute to adequate
      performance of a system, such as real-time requirements. Also describes
      base operating system components for supporting performance tools
      (requirements for the tools themselves are not addressed).

   #. **Standards Requirements Definition**
      Provides references to useful and necessary APIs, specifications, and
      standards, such as POSIX, IETF, and SA Forum standards.

   #. **Hardware Requirements Definition**
      Describes useful and necessary hardware-specific support that relates to a
      carrier operating environment.

      This section is much reduced in size and scope since the CGL 4.0
      specification in recognition that support for hardware is largely coming
      from hardware vendors and therefore is not normally a requirement on the
      distribution supplier any longer.

   #. **Security Requirements Definition**
      Describes useful and necessary features for building secure systems. It is
      recognized that “one size fits all” is not achievable, so not all features
      will always be used together.


The testing documentation support is added as an extra column under each requirement
description. An example will follow for a more clear image over this.
