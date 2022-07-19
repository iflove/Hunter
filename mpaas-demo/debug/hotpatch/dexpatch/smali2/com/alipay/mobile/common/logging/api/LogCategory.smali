.class public Lcom/alipay/mobile/common/logging/api/LogCategory;
.super Ljava/lang/Object;
.source "LogCategory.java"


# static fields
.field public static final CATEGORY_ALIPAYSDK:Ljava/lang/String; = "alipaysdk"

.field public static final CATEGORY_ALIVE:Ljava/lang/String;

.field public static final CATEGORY_ALIVEREPORT:Ljava/lang/String; = "alivereport"

.field public static final CATEGORY_ANR:Ljava/lang/String;

.field public static final CATEGORY_APM:Ljava/lang/String; = "apm"

.field public static final CATEGORY_APPLOG:Ljava/lang/String; = "applog"

.field public static final CATEGORY_AUTOMATION:Ljava/lang/String;

.field public static final CATEGORY_AUTOUSERBEHAVOR:Ljava/lang/String; = "autouserbehavor"

.field public static final CATEGORY_BATTERY:Ljava/lang/String; = "battery"

.field public static final CATEGORY_CDP:Ljava/lang/String;

.field public static final CATEGORY_CONFIG_SERVICE:Ljava/lang/String;

.field public static final CATEGORY_CRASH:Ljava/lang/String;

.field public static final CATEGORY_DATAFLOW:Ljava/lang/String; = "dataflow"

.field public static final CATEGORY_DEVICE:Ljava/lang/String;

.field public static final CATEGORY_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final CATEGORY_FOOTPRINT:Ljava/lang/String;

.field public static final CATEGORY_FULLLINK:Ljava/lang/String; = "fulllink"

.field public static final CATEGORY_H5EXCEPTION:Ljava/lang/String;

.field public static final CATEGORY_HIGHAVAIL:Ljava/lang/String; = "bizHighAvail"

.field public static final CATEGORY_HOT_PATCH:Ljava/lang/String;

.field public static final CATEGORY_KEYBIZTRACE:Ljava/lang/String;

.field public static final CATEGORY_LAG:Ljava/lang/String;

.field public static final CATEGORY_LAUNCH:Ljava/lang/String;

.field public static final CATEGORY_LBS:Ljava/lang/String;

.field public static final CATEGORY_LOGCAT:Ljava/lang/String; = "logcat"

.field public static final CATEGORY_LOGMONITOR:Ljava/lang/String; = "LogMonitor"

.field public static final CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

.field public static final CATEGORY_MPAAS_EXCEPTION:Ljava/lang/String;

.field public static final CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

.field public static final CATEGORY_NEBULA:Ljava/lang/String;

.field public static final CATEGORY_NETWORK:Ljava/lang/String;

.field public static final CATEGORY_PERFORMANCE:Ljava/lang/String;

.field public static final CATEGORY_PUSH:Ljava/lang/String;

.field public static final CATEGORY_ROMESYNC:Ljava/lang/String; = "romesync"

.field public static final CATEGORY_RPC:Ljava/lang/String;

.field public static final CATEGORY_SCAN:Ljava/lang/String;

.field public static final CATEGORY_SDKMONITOR:Ljava/lang/String;

.field public static final CATEGORY_SHARE:Ljava/lang/String;

.field public static final CATEGORY_STORAGE:Ljava/lang/String;

.field public static final CATEGORY_SYNC:Ljava/lang/String;

.field public static final CATEGORY_TINY_APP:Ljava/lang/String;

.field public static final CATEGORY_TRAFFIC:Ljava/lang/String;

.field public static final CATEGORY_TRAFFICLOG:Ljava/lang/String; = "trafficLog"

.field public static final CATEGORY_UPGRADE:Ljava/lang/String;

.field public static final CATEGORY_USERBEHAVOR:Ljava/lang/String; = "userbehavor"

.field public static final CATEGORY_USER_BEHAVIOR:Ljava/lang/String;

.field public static final CATEGORY_WEBAPP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_PERFORMANCE:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_SDKMONITOR:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_SDKMONITOR:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NETWORK:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_WEBAPP:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_H5EXCEPTION:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_FOOTPRINT:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_KEYBIZTRACE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_KEYBIZTRACE:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->USER_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_USER_BEHAVIOR:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_BEHAVIOR:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_BEHAVIOR:Ljava/lang/String;

    .line 143
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_PERFORMANCE:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_EXCEPTION:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_MPAAS_EXCEPTION:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->ALIVE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ALIVE:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->AUTOMATION:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_AUTOMATION:Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->CRASH:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CRASH:Ljava/lang/String;

    .line 148
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->ANR:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_ANR:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->LAG:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAG:Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->LAUNCH:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LAUNCH:Ljava/lang/String;

    .line 151
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->TRAFFIC:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_TRAFFIC:Ljava/lang/String;

    .line 152
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->HOT_PATCH:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_HOT_PATCH:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->PUSH:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_PUSH:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->SYNC:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_SYNC:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->SCAN:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_SCAN:Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->TINY_APP:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_TINY_APP:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->NEBULA:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_NEBULA:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->RPC:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_RPC:Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->UPGRADE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_UPGRADE:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->CONFIG_SERVICE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CONFIG_SERVICE:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->SHARE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_SHARE:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->STORAGE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_STORAGE:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->LBS:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_LBS:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->CDP:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_CDP:Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/alipay/mobile/common/logging/api/BizType;->DEVICE:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/api/BizType;->getDesc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogCategory;->CATEGORY_DEVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
