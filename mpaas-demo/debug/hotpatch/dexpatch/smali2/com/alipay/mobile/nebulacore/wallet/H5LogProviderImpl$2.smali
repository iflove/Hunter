.class Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;
.super Ljava/lang/Object;
.source "H5LogProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/log/H5LogData;

.field final synthetic b:Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->c:Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->b:Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->b:Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 112
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 113
    .local v1, "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->getSeedId()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "seedID":Ljava/lang/String;
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam1Map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 115
    .local v10, "param1":Ljava/lang/String;
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam2Map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 116
    .local v11, "param2":Ljava/lang/String;
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam3Map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "param3":Ljava/lang/String;
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 119
    .local v13, "param4":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v11}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v12}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 123
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 124
    .local v4, "extParam":Ljava/util/Map;
    move-object v14, v2

    .end local v4    # "extParam":Ljava/util/Map;
    .local v14, "extParam":Ljava/util/Map;
    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 125
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 126
    .local v3, "entry":Ljava/util/Map$Entry;
    move-object v3, v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 125
    :cond_1
    move-object v3, v2

    .line 131
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v3, "headerMap":Ljava/util/Map;
    move-object v15, v2

    .end local v3    # "headerMap":Ljava/util/Map;
    .local v15, "headerMap":Ljava/util/Map;
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->b:Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->getLogHeader()Ljava/lang/String;

    move-result-object v3

    const-string v4, "header"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$2;->b:Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->getLogType()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "logType":Ljava/lang/String;
    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "H5Exception"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-static {v9, v10, v11, v12, v13}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_H5EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v3, v4, v1, v15}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V

    .line 139
    :cond_3
    const-string v3, "webapp"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    const-string v4, "H5_AL_SESSION_FROM_NATIVE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 141
    const-string v4, "H5_AL_SESSION_MAP_SUCCESS"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 142
    const-string v4, "H5_AL_SESSION_FALLBACK"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v2

    goto :goto_2

    .line 143
    :cond_5
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    .line 145
    invoke-virtual {v4}, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->getDes()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/alipay/mobile/common/logging/api/BizType;->NEBULA:Lcom/alipay/mobile/common/logging/api/BizType;

    .line 148
    const-string v5, "com.alipay.mobile.nebula.BuildConfig"

    invoke-static {v5}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    move-object v8, v2

    .end local v2    # "logType":Ljava/lang/String;
    .local v8, "logType":Ljava/lang/String;
    move-object v2, v3

    move-object v3, v1

    move-object v5, v15

    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V

    return-void

    .line 139
    .end local v8    # "logType":Ljava/lang/String;
    .restart local v2    # "logType":Ljava/lang/String;
    :cond_6
    move-object v8, v2

    .line 150
    .end local v2    # "logType":Ljava/lang/String;
    .restart local v8    # "logType":Ljava/lang/String;
    :goto_2
    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 151
    invoke-static {v9, v10, v11, v12, v13}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 152
    if-eqz v14, :cond_7

    const-string v2, "isTinyApp"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "YES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    const-string v3, "webapp-tiny"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    return-void

    .line 155
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_WEBAPP:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v2, v3, v1, v15}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;Ljava/util/Map;)V

    .line 159
    :cond_8
    return-void

    .line 109
    .end local v1    # "performance":Lcom/alipay/mobile/common/logging/api/monitor/Performance;
    .end local v8    # "logType":Ljava/lang/String;
    .end local v9    # "seedID":Ljava/lang/String;
    .end local v10    # "param1":Ljava/lang/String;
    .end local v11    # "param2":Ljava/lang/String;
    .end local v12    # "param3":Ljava/lang/String;
    .end local v13    # "param4":Ljava/lang/String;
    .end local v14    # "extParam":Ljava/util/Map;
    .end local v15    # "headerMap":Ljava/util/Map;
    :cond_9
    :goto_3
    const-string v1, "H5WalletLogProvider"

    const-string v2, "logData == null || logConfig == null, monitorLog error!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
