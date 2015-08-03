LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES :=  lib/cache.c \
	lib/data.c \
	lib/nl.c \
	lib/doc.c \
	lib/cache_mngr.c \
	lib/addr.c \
	lib/socket.c \
	lib/fib_lookup/lookup.c \
	lib/fib_lookup/request.c \
	lib/msg.c \
	lib/object.c \
	lib/attr.c \
	lib/utils.c \
	lib/cache_mngt.c \
	lib/handlers.c \
	lib/genl/ctrl.c \
	lib/genl/mngt.c \
	lib/genl/family.c \
	lib/genl/genl.c \
	lib/route/rtnl.c \
	lib/route/route_utils.c \
	lib/netfilter/nfnl.c \
	lib/error.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
LOCAL_MODULE := libnl

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_WHOLE_STATIC_LIBRARIES := libnl
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
LOCAL_MODULE := libnl

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES :=  \
		lib/route/addr.c \
		lib/route/class.c \
		lib/route/class_api.c \
		lib/route/class_obj.c \
		lib/route/cls.c \
		lib/route/cls_api.c \
		lib/route/cls_obj.c \
		lib/route/link.c \
		lib/route/neigh.c \
		lib/route/neightbl.c \
		lib/route/nexthop.c \
		lib/route/qdisc.c \
		lib/route/qdisc_api.c \
		lib/route/qdisc_obj.c \
		lib/route/route.c \
		lib/route/route_obj.c \
		lib/route/route_utils.c \
		lib/route/rtnl.c \
		lib/route/rule.c \
		lib/route/tc.c \
		lib/route/cls/fw.c \
		lib/route/cls/police.c \
		lib/route/cls/u32.c \
		lib/route/link/api.c \
		lib/route/link/vlan.c \
		lib/route/sch/blackhole.c \
		lib/route/sch/cbq.c \
		lib/route/sch/dsmark.c \
		lib/route/sch/fifo.c \
		lib/route/sch/htb.c \
		lib/route/sch/netem.c \
		lib/route/sch/prio.c \
		lib/route/sch/red.c \
		lib/route/sch/sfq.c \
		lib/route/sch/tbf.c \
		lib/fib_lookup/lookup.c \
		lib/fib_lookup/request.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_MODULE := libnl_route

include $(BUILD_STATIC_LIBRARY)
include $(CLEAR_VARS)

LOCAL_WHOLE_STATIC_LIBRARIES := libnl
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include
LOCAL_MODULE := libnl_route

include $(BUILD_SHARED_LIBRARY)
