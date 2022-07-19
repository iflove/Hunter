.class public Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;
.super Ljava/lang/Object;
.source "PrivacyUtil.java"


# static fields
.field public static final AGREED_TERMS_OF_SERVICE:Ljava/lang/String; = "agreed_terms_of_service"

.field public static NEW_PRIVACY:Z

.field private static a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/logging/api/utils/PrivacyListener;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    .line 30
    const-string v1, ""

    sput-object v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->a:Ljava/lang/String;

    .line 36
    sput-boolean v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceClassName"    # Ljava/lang/String;
    .param p2, "extraType"    # Ljava/lang/String;
    .param p3, "extraValue"    # Ljava/lang/String;

    const-string v0, "PrivacyUtil"

    .line 129
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".monitor.action.UPDATE_LOG_CONTEXT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "type"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v1, "value"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    .line 140
    :goto_0
    :try_start_1
    invoke-static {p0, v2}, Lcom/alipay/tianyan/mobilesdk/coco/OreoServiceUnlimited;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    const-string/jumbo v1, "notifyOtherProcessToUpdateLogContext: start service occured error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :cond_0
    return-void

    .line 143
    :catchall_1
    move-exception v1

    .line 144
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyOtherProcessToUpdateLogContext: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 149
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "agreed_terms_of_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    const-string v0, "framework_safeguard_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "PrivacyUtil"

    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 163
    move-object v3, v2

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v3

    move-object v3, v2

    .line 162
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "Get appInfo failed."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 165
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "privacy.listener"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v3, "classPath":Ljava/lang/String;
    move-object v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const-string v4, "Can not find privacy class path, do not use privacy."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v3

    .line 171
    .end local v3    # "classPath":Ljava/lang/String;
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 173
    :cond_1
    goto :goto_2

    .line 172
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "Get privacy class path failed."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v2
.end method

.method public static getPrivacyListener()Lcom/alipay/mobile/common/logging/api/utils/PrivacyListener;
    .locals 2

    .line 76
    const-class v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->b:Lcom/alipay/mobile/common/logging/api/utils/PrivacyListener;

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    const-class v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;

    monitor-enter v0

    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.mpaas.privacypermission.PPLifeCycle"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 43
    .local v2, "privacyPermissionClass":Ljava/lang/Class;
    if-nez v3, :cond_0

    .line 44
    const-string v3, "PrivacyUtil"

    const-string v4, "Not compile privacy permission lib."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    monitor-exit v0

    return-void

    .line 48
    .end local v2    # "privacyPermissionClass":Ljava/lang/Class;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 52
    :cond_0
    nop

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 55
    sput-object v3, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    const-string v2, "PrivacyUtil"

    const-string v3, "Not register privacy listener."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sput-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    .line 58
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-void

    .line 61
    :cond_1
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v2, "privacyListenerObj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyListener;

    if-eqz v1, :cond_2

    .line 63
    const-string v1, "PrivacyUtil"

    const-string v3, "Use privacy."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyListener;

    sput-object v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->b:Lcom/alipay/mobile/common/logging/api/utils/PrivacyListener;

    .line 65
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    goto :goto_0

    .line 67
    .end local v2    # "privacyListenerObj":Ljava/lang/Object;
    :cond_2
    const-string v1, "PrivacyUtil"

    const-string v3, "Get privacy object failed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    goto :goto_0

    .line 69
    :catchall_1
    move-exception v1

    move-object v1, v2

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "PrivacyUtil"

    const-string v3, "Get privacy object exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v0

    return-void

    .line 49
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v3, "PrivacyUtil"

    const-string v4, "Not compile privacy permission lib."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sput-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    .line 51
    monitor-exit v0

    return-void

    .line 72
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public static isUserAgreed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    const-class v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 84
    monitor-exit v0

    return v2

    .line 86
    :cond_0
    sget-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->c:Z

    if-eqz v1, :cond_1

    .line 87
    monitor-exit v0

    return v2

    .line 90
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->a(Landroid/content/Context;)Z

    move-result v1

    .line 91
    sput-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->c:Z

    monitor-exit v0

    return v1

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAgreed(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agreed"    # Z

    .line 97
    const-class v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    if-nez v1, :cond_0

    .line 99
    monitor-exit v0

    return-void

    .line 101
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->setAgreedInMemory(Landroid/content/Context;Z)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "PrivacyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set agreed TOS: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "agreed_terms_of_service"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAgreedInMemory(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agreed"    # Z

    .line 108
    sput-boolean p1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->c:Z

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 111
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "extraValue":Ljava/lang/String;
    const-string v1, "com.alipay.mobile.common.logging.process.LogServiceInPushProcess"

    const-string v2, "agreed_terms_of_service"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->isDisableToolsProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getToolsUploadInterceptor()Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/interceptor/ToolsUploadInterceptor;->isUplaod()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 121
    :cond_0
    const-string v1, "com.alipay.mobile.common.logging.process.LogServiceInToolsProcess"

    invoke-static {p0, v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v0    # "extraValue":Ljava/lang/String;
    :cond_1
    return-void
.end method
