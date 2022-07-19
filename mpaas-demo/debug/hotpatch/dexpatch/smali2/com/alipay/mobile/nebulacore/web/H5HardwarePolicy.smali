.class public Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;
.super Ljava/lang/Object;
.source "H5HardwarePolicy.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->a:Z

    .line 39
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 11

    const-string v0, "H5HardwarePolicy"

    .line 237
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/crash/CrashAnalyzer;->getHistoryCrashTypes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 238
    .local v4, "crashTypeList":Ljava/util/List;
    move-object v4, v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v3

    move-object v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;

    .line 240
    .local v5, "info":Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
    move-object v5, v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashType()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_1

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v6, "versionName":Ljava/lang/String;
    move-object v6, v7

    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashProductVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "getLastCrashTime "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getLastCrashTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " getCrashTimes:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getCrashTimes()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 249
    invoke-virtual {v5}, Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;->getLastCrashTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    cmp-long v2, v7, v9

    if-lez v2, :cond_0

    .line 252
    const-string v2, "h5_CrashInfo_use_time"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "value":Ljava/lang/String;
    const-string v7, "no"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 254
    const-string v3, "> onDayTime not disableHardwareAccelerate"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return v1

    .line 259
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "disableHardwareAccelerate by CrashAnalyzer in "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "H5_DISABLE_HARDWARE_ACCELERATE_BY_FRAMEWORK"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 263
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2, v6, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 262
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    const/4 v0, 0x1

    return v0

    .line 268
    .end local v5    # "info":Lcom/alipay/mobile/common/logging/util/crash/CrashInfoDO;
    .end local v6    # "versionName":Ljava/lang/String;
    :cond_1
    goto/16 :goto_0

    .line 272
    .end local v4    # "crashTypeList":Ljava/util/List;
    :cond_2
    goto :goto_1

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method public static disableHWACByHardwareInfo()Z
    .locals 16

    .line 57
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->a:Z

    const-string v1, "H5HardwarePolicy"

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "disableHWACByHWInfo by cache: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->b:Z

    return v0

    .line 62
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->a:Z

    .line 64
    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 65
    if-eqz v2, :cond_13

    .line 66
    const-string v3, "h5_disableHWACByHardwareInfo"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 67
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 68
    return v3

    .line 70
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 71
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_13

    .line 72
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 75
    nop

    .line 76
    const-string v7, "sdkLevelRange"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const/high16 v9, -0x80000000

    const-string v10, "min"

    const v11, 0x7fffffff

    const-string v12, "max"

    if-eqz v7, :cond_3

    .line 78
    :try_start_1
    invoke-static {v7, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v13

    .line 79
    invoke-static {v7, v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 80
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v7, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, v13, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 77
    :cond_3
    const/4 v7, 0x1

    .line 82
    :goto_1
    if-nez v7, :cond_4

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "disableHWACByHardwareInfo sdk "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not match"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto/16 :goto_7

    .line 87
    :cond_4
    nop

    .line 88
    const-string v7, "models"

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 89
    if-eqz v7, :cond_5

    .line 90
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    .line 91
    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_2
    if-ge v14, v13, :cond_6

    .line 92
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "disableHWACByHardwareInfo model "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 96
    if-nez v15, :cond_6

    .line 91
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 89
    :cond_5
    const/4 v15, 0x1

    .line 101
    :cond_6
    if-nez v15, :cond_7

    .line 102
    const-string v0, "disableHWACByHardwareInfo model not match"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto/16 :goto_7

    .line 107
    :cond_7
    nop

    .line 108
    const-string v0, "boards"

    invoke-static {v6, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_a

    .line 110
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 111
    const/4 v7, 0x0

    const/4 v13, 0x1

    :goto_3
    if-ge v7, v3, :cond_b

    .line 112
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 113
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v15

    .line 114
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "disableHWACByHardwareInfo cpuHardWare "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz v15, :cond_9

    .line 117
    const-string v9, "\\s+"

    const-string v11, ""

    invoke-virtual {v15, v9, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    move v13, v9

    .line 121
    :cond_9
    if-nez v13, :cond_b

    .line 111
    add-int/lit8 v7, v7, 0x1

    const/high16 v9, -0x80000000

    const v11, 0x7fffffff

    goto :goto_3

    .line 109
    :cond_a
    const/4 v13, 0x1

    .line 126
    :cond_b
    if-nez v13, :cond_c

    .line 127
    const-string v0, "disableHWACByHardwareInfo board not match"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    goto/16 :goto_7

    .line 131
    :cond_c
    nop

    .line 132
    const-string v0, "screenHeightRange"

    invoke-static {v6, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_e

    .line 134
    const v3, 0x7fffffff

    invoke-static {v0, v12, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 135
    const/high16 v3, -0x80000000

    invoke-static {v0, v10, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 136
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_e

    .line 138
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "disableHWACByHardwareInfo screenHeight "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-lt v3, v0, :cond_d

    if-gt v3, v7, :cond_d

    const/4 v0, 0x1

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 143
    :cond_e
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_f

    .line 144
    const-string v0, "disableHWACByHardwareInfo screenHeight not match"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    goto :goto_7

    .line 148
    :cond_f
    nop

    .line 149
    const-string v0, "screenWidthRange"

    invoke-static {v6, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_11

    .line 151
    const v3, 0x7fffffff

    invoke-static {v0, v12, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 152
    const/high16 v6, -0x80000000

    invoke-static {v0, v10, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 153
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 154
    if-eqz v6, :cond_11

    .line 155
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    .line 156
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "disableHWACByHardwareInfo screenWidth "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-lt v6, v0, :cond_10

    if-gt v6, v3, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    .line 160
    :cond_11
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_12

    .line 161
    const-string v0, "disableHWACByHardwareInfo screenWidth not match"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    nop

    .line 71
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 165
    :cond_12
    const-string v0, "disableHWACByHardwareInfo gocha!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_8

    .line 172
    :cond_13
    goto :goto_8

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    const-string v2, "parseDisableHWACByHardwareInfo error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :goto_8
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->b:Z

    return v0
.end method

.method public static disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 11
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "bizType"    # Ljava/lang/String;

    .line 181
    const-string v0, "forceHardAccelerate"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "forceHardAccelerate":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 183
    return v2

    .line 189
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v3, 0x0

    move-object v4, v3

    .line 190
    .local v4, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v4, v1

    if-eqz v1, :cond_1

    .line 191
    const-string v1, "h5_interceptCrashAnalyzerBizType"

    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    move-object v5, v3

    .line 193
    .local v5, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    return v2

    .line 190
    .end local v5    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    move-object v5, v3

    .line 201
    :cond_2
    const-string v1, "h5_interceptCrashAnalyzer"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 203
    .local v5, "onlineArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 205
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 206
    .local v3, "obj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v6

    const-string v7, "ma"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "ma":Ljava/lang/String;
    const-string v7, "mo"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "mo":Ljava/lang/String;
    const-string v8, "sdk_int"

    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    .line 211
    .local v8, "sdk":I
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 212
    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 213
    if-eqz v8, :cond_3

    .line 214
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v8, v9, :cond_4

    .line 216
    const-string v9, "H5HardwarePolicy"

    const-string v10, "prevent CrashAnalyzer"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return v2

    .line 221
    :cond_3
    return v2

    .line 204
    .end local v3    # "obj":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "ma":Ljava/lang/String;
    .end local v7    # "mo":Ljava/lang/String;
    .end local v8    # "sdk":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->a()Z

    move-result v1

    return v1
.end method

.method public static isAbove14Level()Z
    .locals 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
