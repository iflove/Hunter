.class public Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
.super Ljava/lang/Object;
.source "LoggingSPCache.java"


# static fields
.field public static final CACHE_FILE_NAME:Ljava/lang/String; = "LoggingCache"

.field public static final KEY_CUR_UPLOAD_DAY:Ljava/lang/String; = "curUploadDay"

.field public static final KEY_CUR_UPLOAD_TRAFIC:Ljava/lang/String; = "curUploadTrafic"

.field public static final LOGGING_CACHE_KEY_INDEX:Ljava/lang/String; = "behavorLoggingIndex"

.field public static final LOGGING_CACHE_KEY_LOG_DUMP_TAG:Ljava/lang/String; = "LogDumpTag"

.field public static final STORAGE_ABI:Ljava/lang/String; = "abi"

.field public static final STORAGE_ABI_BIT:Ljava/lang/String; = "abiBit"

.field public static final STORAGE_BIRDNESTVERSION:Ljava/lang/String; = "birdNestVersion"

.field public static final STORAGE_BUNDLEVERSION:Ljava/lang/String; = "bundleVersion"

.field public static final STORAGE_CHANNELID:Ljava/lang/String; = "channelId"

.field public static final STORAGE_CLIENTID:Ljava/lang/String; = "clientID"

.field public static final STORAGE_CLIENTIMEI:Ljava/lang/String; = "clientIMEI"

.field public static final STORAGE_DEVICEID:Ljava/lang/String; = "utdid"

.field public static final STORAGE_HOTPATCHBUNDLEVERSION:Ljava/lang/String; = "hotpatchBundleVersion"

.field public static final STORAGE_HOTPATCHDESC:Ljava/lang/String; = "hotpatchDesc"

.field public static final STORAGE_HOTPATCHVERSION:Ljava/lang/String; = "hotpatchVersion"

.field public static final STORAGE_LANGUAGE:Ljava/lang/String; = "language"

.field public static final STORAGE_LOGHOST:Ljava/lang/String; = "logHost"

.field public static final STORAGE_LOG_NEED_ENCRYPT:Ljava/lang/String; = "logNeedEncrypt"

.field public static final STORAGE_MPAAS_MODE:Ljava/lang/String; = "mpaasMode"

.field public static final STORAGE_PACKAGEID:Ljava/lang/String; = "packageId"

.field public static final STORAGE_PRODUCTID:Ljava/lang/String; = "productID"

.field public static final STORAGE_PRODUCTVERSION:Ljava/lang/String; = "productVersion"

.field public static final STORAGE_RELEASECODE:Ljava/lang/String; = "releaseCode"

.field public static final STORAGE_RELEASETYPE:Ljava/lang/String; = "releaseType"

.field public static final STORAGE_USERID:Ljava/lang/String; = "userID"

.field public static final STORAGE_USERSESSIONID:Ljava/lang/String; = "userSessionId"

.field public static final STORAGE_VITURALUSERID:Ljava/lang/String; = "VituralUserID"

.field private static a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private a()V
    .locals 4

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "processTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "LoggingCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    .line 55
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 51
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
    .locals 2

    .line 59
    sget-object v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a()V

    .line 63
    sget-object v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Landroid/content/SharedPreferences;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBooleanApply(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method

.method public putBooleanCommit(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public putIntApply(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    return-void
.end method

.method public putIntCommit(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public putLongApply(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    return-void
.end method

.method public putLongCommit(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public putStringApply(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "origin":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method

.method public putStringCommit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "origin":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method public removeApply(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method public removeCommit(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 85
    return-void
.end method
