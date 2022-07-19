.class public Lcom/alipay/mobile/common/transport/utils/ABTestHelper;
.super Ljava/lang/Object;
.source "ABTestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .line 27
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->ABTAG:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    .local v0, "abTagMap":Ljava/util/Map;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 40
    .local v3, "abTagValues":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 45
    :cond_0
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 46
    array-length v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v8, v1, v7

    .line 47
    .local v2, "abTag":Ljava/lang/String;
    move-object v2, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 50
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v6, "pairs":[Ljava/lang/String;
    move-object v6, v8

    if-eqz v8, :cond_1

    aget-object v8, v6, v5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 52
    aget-object v9, v6, v5

    aget-object v8, v6, v8

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v2    # "abTag":Ljava/lang/String;
    .end local v6    # "pairs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    :cond_2
    return-object v0

    .line 56
    .end local v3    # "abTagValues":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "ABTestHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v1    # "ex":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static calculateABTagValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "serverMtag"    # Ljava/lang/String;

    .line 183
    const-string v0, ""

    move-object v1, v0

    .line 184
    .local v1, "mtagFinal":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getClientABTag()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "clientTags":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 189
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 192
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-|-|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 196
    :cond_2
    return-object v1

    .line 197
    .end local v1    # "mtagFinal":Ljava/lang/String;
    .end local v2    # "clientTags":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ABTestHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public static declared-synchronized generateClientABTagValues()Ljava/lang/String;
    .locals 10

    const-class v0, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->b()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 127
    .local v3, "tagMap":Ljava/util/Map;
    move-object v3, v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 132
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, "jpsb":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 134
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 137
    .local v7, "tagValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v5, "itemValue":Ljava/lang/String;
    move-object v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 145
    const-string v8, "0"

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "64"

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 147
    :cond_2
    const-string v8, "32"

    move-object v5, v8

    .line 151
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 154
    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 155
    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->isSwitchEnableByTAG(Ljava/lang/String;)Z

    move-result v8

    .line 156
    if-eqz v8, :cond_4

    move-object v8, v7

    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    :goto_1
    nop

    .line 159
    .local v8, "tagValueFinal":Ljava/lang/String;
    goto :goto_3

    .line 161
    .end local v8    # "tagValueFinal":Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->isSwitchEnableByTAG(Ljava/lang/String;)Z

    move-result v8

    .line 162
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    move-object v8, v7

    goto :goto_2

    .line 164
    :cond_6
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    :goto_2
    nop

    .line 166
    .restart local v8    # "tagValueFinal":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "itemValue":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "tagValue":Ljava/lang/String;
    .end local v8    # "tagValueFinal":Ljava/lang/String;
    goto :goto_0

    .line 168
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 169
    .end local v1    # "jpsb":Ljava/lang/StringBuilder;
    .end local v3    # "tagMap":Ljava/util/Map;
    :catchall_0
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ABTestHelper"

    const-string v3, "generateClientABTagValues exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isSwitchEnableByTAG(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tagVal"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 106
    add-int/lit8 v1, v1, -0x41

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    return v0
.end method

.method public static isSwitchEnableInner(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z
    .locals 4
    .param p0, "configureItem"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;

    .line 70
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    .line 71
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "itemValue":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 76
    return v0

    .line 81
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 82
    .local v3, "tagValue":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 83
    return v0

    .line 89
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->isSwitchEnableByTAG(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 94
    :cond_2
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->isSwitchEnableByTAG(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 96
    .end local v1    # "itemValue":Ljava/lang/String;
    .end local v3    # "tagValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 97
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "ABTestHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method
