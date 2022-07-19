.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;
.super Ljava/lang/Object;
.source "MonitorCoverage.java"


# static fields
.field private static final a:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "immediately"    # Z

    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;

    monitor-enter v0

    .line 54
    :try_start_0
    const-string v1, "DynamicRelease"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "monitorCoverage(immediately="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, "needWriteLog":Z
    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "newDate":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getUserTag()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "newUserTag":Ljava/lang/String;
    const-string v4, "DynamicReleaseTools"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 62
    .local v4, "sp":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "monitor_coverage"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v6, v5

    move-object v7, v6

    goto :goto_0

    .line 66
    :cond_0
    const-string/jumbo v6, "monitor_coverage"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "oldDate":Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v8, "monitor_coverage"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    :cond_1
    const-string/jumbo v7, "user_tag"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "oldUserTag":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string/jumbo v9, "user_tag"

    invoke-interface {v8, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    .end local v6    # "oldDate":Ljava/lang/String;
    .end local v7    # "oldUserTag":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 82
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v6, "extParams":Ljava/util/Map;
    move-object v6, v8

    const-string v9, "Coverage"

    const-string v10, "Start"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v8, "user_tag"

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v8, "client_upgrade_type"

    const-string v9, "client_upgrade_type"

    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v8, "client_upgrade_version"

    const-string v9, "client_upgrade_version"

    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v8, "wifi_interval"

    const-string/jumbo v9, "wifi_interval"

    const-wide/16 v10, 0x0

    invoke-interface {v4, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/d;->a(Ljava/util/Map;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v7, "hotpatchVersion":Ljava/lang/String;
    move-object v7, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "0"

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 91
    sget-object v8, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->queryAppliedDynamicResourceItem()Ljava/util/Map;

    move-result-object v8

    move-object v9, v5

    .line 95
    .local v9, "_extParams":Ljava/util/Map;
    move-object v9, v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 96
    invoke-interface {v6, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 99
    :cond_4
    const/4 v8, 0x1

    const-string v10, "global"

    invoke-static {v6, v8, v10, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeCoverageLog(Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v6    # "extParams":Ljava/util/Map;
    .end local v7    # "hotpatchVersion":Ljava/lang/String;
    .end local v9    # "_extParams":Ljava/util/Map;
    :cond_5
    monitor-exit v0

    return-void

    .line 53
    .end local v1    # "needWriteLog":Z
    .end local v2    # "newDate":Ljava/lang/String;
    .end local v3    # "newUserTag":Ljava/lang/String;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "immediately":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 12
    .param p0, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "alipay/com.eg.android.AlipayGphone/uws/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .local v0, "uwsDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.taobao.taobao"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v4, v2

    .line 107
    .local v4, "shareDir":Ljava/io/File;
    move-object v4, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v5, v2

    .line 109
    .local v5, "ucCoreFiles":[Ljava/io/File;
    move-object v5, v1

    if-eqz v1, :cond_1

    .line 110
    array-length v1, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    aget-object v7, v5, v6

    .line 111
    .local v2, "ucCore":Ljava/io/File;
    move-object v2, v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0xa00000

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "taobao"

    invoke-interface {p0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v2    # "ucCore":Ljava/io/File;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "uwsDir":Ljava/io/File;
    .end local v4    # "shareDir":Ljava/io/File;
    .end local v5    # "ucCoreFiles":[Ljava/io/File;
    :cond_1
    return-void
.end method
