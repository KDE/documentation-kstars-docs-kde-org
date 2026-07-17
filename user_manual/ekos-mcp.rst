==================
AI Assistant (MCP)
==================

.. _ekos_mcp_intro:

Introduction
============

Ekos embeds a Model Context Protocol (MCP) server. MCP is an open standard that lets AI assistants and agents discover and call tools exposed by an application. With the MCP server enabled, an AI assistant can observe your rig — connection status, mount position, the last captured image — and, if you allow it, operate the mount and focuser, resolve catalog targets, and more.

Any MCP-capable client can consume the server out of the box: it speaks standard JSON-RPC 2.0 over HTTP, with the usual ``initialize``, ``tools/list`` and ``tools/call`` methods. No KStars-specific client code is required.

.. image:: /images/ekos_mcp_options.png
   :alt: Ekos MCP options tab
   :align: center

.. _ekos_mcp_enable:

Enabling the Server
===================

The server is configured in the Ekos settings dialog, in the :guilabel:`MCP` tab.

  -  Check :guilabel:`Enable MCP server` to start it. The server starts automatically with Ekos whenever this option is enabled.

  -  :guilabel:`Port` selects the TCP port to listen on. The default is 8765; any port between 1024 and 65535 may be used.

  -  The status LED next to the port shows whether the server is currently listening.

.. note::

   The server only listens on the local machine (127.0.0.1). It is not reachable from the network. To use it from another machine, you need to set up your own tunnel (for example an SSH port forward) and understand the security implications of doing so.

.. _ekos_mcp_auth:

Authentication and Tokens
=========================

Every request must carry a bearer token. Two tokens are managed in the :guilabel:`MCP` tab, each with show, copy and :guilabel:`Regenerate` buttons:

  -  The :guilabel:`Token` field holds the full-access token. Clients presenting it can call every enabled tool.

  -  The :guilabel:`Read-only token` field holds a separate token restricted to read-only tools. Give this one to assistants that should observe the rig but never move hardware.

Tokens are stored in your system keychain (under the service name ``kstars``), never in plain-text configuration files. Regenerating a token immediately invalidates the previous one.

To connect a client, point it at ``http://127.0.0.1:8765/mcp`` and pass the token as a standard HTTP bearer credential. Requests are JSON-RPC 2.0 messages sent with ``POST``. For example, calling the ``ekos_status`` tool with curl:

.. code:: bash

   curl -s http://127.0.0.1:8765/mcp \
     -H "Authorization: Bearer <your token>" \
     -H "Content-Type: application/json" \
     -d '{"jsonrpc": "2.0", "id": 1, "method": "tools/call",
          "params": {"name": "ekos_status", "arguments": {}}}'

The response is a JSON-RPC envelope whose ``result`` carries the tool output — here the INDI connection state, the active profile, and the connected devices.

A Server-Sent Events stream is available at ``/mcp/stream``. Each connection is rate-limited to 60 requests.

.. _ekos_mcp_safety:

Safety Controls
===============

.. warning::

   A full-access token allows an AI agent to move your mount and focuser. On a live rig, treat that token like a password: prefer the read-only token whenever observation is enough, and review which tools are enabled before handing control to an agent.

Three mechanisms limit what a connected client can do:

  -  :guilabel:`Read-only mode (refuse rig control tools)`. When checked, the server refuses every mutating tool for all clients, regardless of which token they present.

  -  The read-only token. Clients authenticating with it can only call tools marked read-only, even when read-only mode is off.

  -  The :guilabel:`Available tools` tree. Every tool the server exposes is listed here, grouped by family, with a checkbox per tool and per family. Unchecked tools are hidden from clients entirely: they disappear from ``tools/list`` and calls to them are rejected.

.. image:: /images/ekos_mcp_tools_tree.png
   :alt: Available tools tree with per-tool checkboxes
   :align: center

In the tree, a lock icon marks read-only tools and a gear icon marks tools that change the state of the rig. Tooltips also indicate tools whose effect is hard to undo (such as ``mount_sync``), following the annotation hints of the MCP specification.

.. _ekos_mcp_tools:

Tool Reference
==============

The tables below list the tools currently shipped with KStars. The *Access* column shows *read* for tools that only observe the rig and *control* for tools that change its state.

.. _ekos_mcp_tools_status:

Ekos Status
-----------

.. list-table::
   :header-rows: 1
   :widths: 22 58 10

   * - Tool
     - Purpose
     - Access
   * - ``ekos_status``
     - Current INDI/Ekos connection status, active profile, and connected device names.
     - read

.. _ekos_mcp_tools_catalog:

Catalog
-------

.. list-table::
   :header-rows: 1
   :widths: 22 58 10

   * - Tool
     - Purpose
     - Access
   * - ``catalog_search``
     - Search the KStars catalogs by name. Returns matching objects with canonical names, types, J2000 coordinates and magnitudes. Supports substring or exact match, a type filter, and a magnitude limit. Use it to resolve a name like "M42" to the canonical "M 42" before slewing.
     - read

.. _ekos_mcp_tools_mount:

Mount
-----

.. list-table::
   :header-rows: 1
   :widths: 22 58 10

   * - Tool
     - Purpose
     - Access
   * - ``mount_coords``
     - Current RA/Dec, Alt/Az, hour angle, pier side and tracking status.
     - read
   * - ``mount_get_slew_rates``
     - List the slew rates supported by the driver and the currently selected one.
     - read
   * - ``mount_goto``
     - Slew to equatorial coordinates (RA in hours, Dec in degrees).
     - control
   * - ``mount_goto_target``
     - Slew to a named object, resolved by KStars (canonical name, e.g. "M 42").
     - control
   * - ``mount_sync``
     - Sync the mount pointing model to the given coordinates. Hard to undo — a wrong sync corrupts the pointing model.
     - control
   * - ``mount_park`` / ``mount_unpark``
     - Park the mount at its park position, or unpark it for operation.
     - control
   * - ``mount_abort``
     - Immediately stop all mount motion.
     - control
   * - ``mount_set_tracking``
     - Enable or disable sidereal tracking.
     - control
   * - ``mount_set_track_mode``
     - Select the tracking rate: sidereal, lunar, solar or custom.
     - control
   * - ``mount_set_slew_rate``
     - Select a slew rate by index into the driver's list.
     - control
   * - ``mount_set_meridian_flip``
     - Enable or disable the automatic meridian flip and set its hour-angle offset.
     - control

.. _ekos_mcp_tools_focuser:

Focuser
-------

.. list-table::
   :header-rows: 1
   :widths: 22 58 10

   * - Tool
     - Purpose
     - Access
   * - ``focuser_status``
     - Focuser name, current and maximum position, and capability flags. An optional ``name`` parameter selects a device on multi-focuser rigs; all focuser tools accept it.
     - read
   * - ``focuser_move_absolute``
     - Move to an absolute step position, validated against the driver's maximum. Must not be called while Ekos autofocus is running.
     - control
   * - ``focuser_move_relative``
     - Move by a signed number of steps (positive outward, negative inward; direction is driver-dependent). Must not be called while Ekos autofocus is running.
     - control
   * - ``focuser_abort_move``
     - Stop any in-flight focuser motion.
     - control

.. _ekos_mcp_tools_image:

Image Access
------------

These tools see frames from every producer: the Capture queue, Focus, Align, polar alignment, and ad-hoc captures. On a multi-camera rig, an optional ``camera`` parameter selects a device; by default the most recent frame across all cameras is returned.

.. list-table::
   :header-rows: 1
   :widths: 22 58 10

   * - Tool
     - Purpose
     - Access
   * - ``image_last_info``
     - Metadata of the most recently captured frame: file path, camera, exposure, filter, target, timestamp, sensor temperature, HFR, star count and dimensions.
     - read
   * - ``image_last_thumbnail``
     - A base64-encoded JPEG preview of the most recent frame, sized for vision-capable models (default 512 pixels on the long edge, at most 1024).
     - read
