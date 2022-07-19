.class public Lcom/alipay/mobile/framework/FrameworkMonitor;
.super Ljava/lang/Object;
.source "FrameworkMonitor.java"


# static fields
.field public static final BUNDLE_CLASSLOADER_NOT_FOUND:Ljava/lang/String; = "1002"

.field public static final BUNDLE_INIT_EXCEPTION:Ljava/lang/String; = "1000"

.field public static final BUNDLE_LOAD_EXCEPTION:Ljava/lang/String; = "1001"

.field public static final MICROAPP_STARTUP_FAIL_CREATE_FAIL:Ljava/lang/String; = "2004"

.field public static final MICROAPP_STARTUP_FAIL_DOSTARTAPP_CALL_REJECT:Ljava/lang/String; = "2002"

.field public static final MICROAPP_STARTUP_FAIL_DOSTARTAPP_EXE_REJECT:Ljava/lang/String; = "2003"

.field public static final MICROAPP_STARTUP_FAIL_MAC_STUCK:Ljava/lang/String; = "2009"

.field public static final MICROAPP_STARTUP_FAIL_NEED_LOGIN:Ljava/lang/String; = "2007"

.field public static final MICROAPP_STARTUP_FAIL_NOT_FOUND:Ljava/lang/String; = "1000"

.field public static final MICROAPP_STARTUP_FAIL_RESTART_FAIL:Ljava/lang/String; = "2005"

.field public static final MICROAPP_STARTUP_FAIL_STARTAPP_EXE_REJECT:Ljava/lang/String; = "2001"

.field public static final MICROAPP_STARTUP_FAIL_TINYAPP_FAIL:Ljava/lang/String; = "2006"

.field public static final MICROAPP_STARTUP_FAIL_WAIT_AUTH:Ljava/lang/String; = "2008"

.field private static final a:Ljava/lang/String;

.field private static h:Lcom/alipay/mobile/framework/FrameworkMonitor;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/alipay/mobile/framework/FrameworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/FrameworkMonitor;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->c:Z

    .line 78
    iput v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->g:I

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->b:Landroid/content/Context;

    .line 84
    if-eqz p1, :cond_1

    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getMetaDataAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 90
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v2

    .line 89
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/framework/FrameworkMonitor;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    if-nez v1, :cond_0

    .line 93
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v1, v2

    .line 95
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "enable.framework.monitor"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/framework/FrameworkMonitor;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/FrameworkMonitor;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    sget-object v0, Lcom/alipay/mobile/framework/FrameworkMonitor;->h:Lcom/alipay/mobile/framework/FrameworkMonitor;

    if-nez v0, :cond_2

    .line 104
    const-class v0, Lcom/alipay/mobile/framework/FrameworkMonitor;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/FrameworkMonitor;->h:Lcom/alipay/mobile/framework/FrameworkMonitor;

    if-nez v1, :cond_1

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "appContext":Landroid/content/Context;
    move-object v1, p0

    if-nez p0, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    move-object v1, v2

    .line 110
    :cond_0
    new-instance v2, Lcom/alipay/mobile/framework/FrameworkMonitor;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;-><init>(Landroid/content/Context;)V

    .line 111
    sput-object v2, Lcom/alipay/mobile/framework/FrameworkMonitor;->h:Lcom/alipay/mobile/framework/FrameworkMonitor;

    .line 113
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 116
    :cond_2
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/FrameworkMonitor;->h:Lcom/alipay/mobile/framework/FrameworkMonitor;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized handleAppNotFound(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    .line 172
    .end local p0    # "this":Lcom/alipay/mobile/framework/FrameworkMonitor;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 176
    .local v1, "extParams":Ljava/util/Map;
    move-object v1, v0

    const-string/jumbo v2, "reason"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "DESCRIPTION_NOT_FOUND_APP"

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v1    # "extParams":Ljava/util/Map;
    :cond_1
    monitor-exit p0

    return-void

    .line 167
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "reason":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleAppStartupReject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "rejectType"    # Ljava/lang/String;
    .param p3, "rejectAdvices"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/aspect/Advice;",
            ">;)V"
        }
    .end annotation

    .line 260
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 264
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "extParams":Ljava/util/Map;
    const/4 v1, 0x0

    .line 267
    .local v1, "rejectAdviceName":Ljava/lang/String;
    :try_start_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aspect/Advice;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 269
    const-string v2, "com.alipay.mobile.nebulabiz.nebulahandler.H5StartAppAdvice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.alipay.mobile.liteprocess.advice.StartAppAdvice"

    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.alipay.mobile.security.gesture.service.h"

    .line 271
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.alipay.android.phone.businesscommon.message.MessageSwitcherAdvice"

    .line 272
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.alipay.android.phone.wallet.buscode.BusCodeH5Advice"

    .line 273
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "appId"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v2, "stackFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "###"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    goto :goto_1

    .line 274
    :cond_2
    :goto_0
    return-void

    .line 281
    :catchall_0
    move-exception v2

    .line 282
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/alipay/mobile/framework/FrameworkMonitor;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    const-string v2, "MICROAPP_STARTUP_REJECT"

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 286
    return-void

    .line 261
    .end local v0    # "extParams":Ljava/util/Map;
    .end local v1    # "rejectAdviceName":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized handleBundleClassLoaderNotFound(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->f:Ljava/util/Set;

    .line 238
    .end local p0    # "this":Lcom/alipay/mobile/framework/FrameworkMonitor;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p2, :cond_1

    .line 243
    const-string/jumbo v1, "msg"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_1
    const-string v1, "DESCRIPTION_NOT_FOUND_CLASSLOADER"

    invoke-virtual {p0, v1, p1, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0    # "extParams":Ljava/util/Map;
    :cond_2
    monitor-exit p0

    return-void

    .line 233
    .end local p1    # "bundleName":Ljava/lang/String;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleBundleLocationNotFound(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "bundleFile"    # Ljava/io/File;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 254
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_0
    const-string v1, "BUNDLE_LOCATION_NOT_FOUND"

    invoke-virtual {p0, v1, p1, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    return-void
.end method

.method public handleBundleStale(Lcom/alipay/mobile/quinox/bundle/Bundle;JLjava/lang/String;)V
    .locals 4
    .param p1, "bundle"    # Lcom/alipay/mobile/quinox/bundle/Bundle;
    .param p2, "size"    # J
    .param p4, "md5"    # Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 154
    .local v1, "extParams":Ljava/util/Map;
    move-object v1, v0

    const-string/jumbo v2, "md5"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "size"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v2, "location"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getMD5()Ljava/lang/String;

    move-result-object v0

    const-string v2, "expectMd5"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "expectSize"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/Bundle;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BUNDLE_IS_STALE"

    invoke-virtual {p0, v2, v0, v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    return-void
.end method

.method public handleDescriptionCfgLoadFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 126
    const-string/jumbo v1, "msg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    const-string v1, "DESCRIPTION_CFG_LOAD_FAIL"

    invoke-virtual {p0, v1, p1, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public handleDescriptionCfgStale(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resAppVersion"    # Ljava/lang/String;
    .param p2, "classDefVersion"    # Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p2, :cond_0

    .line 141
    const-string v1, "classDefVersion"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    const-string v1, "DESCRIPTION_CFG_IS_STALE"

    invoke-virtual {p0, v1, p1, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method public declared-synchronized handleDescriptionInitFail(Lcom/alipay/mobile/framework/MicroDescription;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "description"    # Lcom/alipay/mobile/framework/MicroDescription;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->e:Ljava/util/Set;

    .line 217
    .end local p0    # "this":Lcom/alipay/mobile/framework/FrameworkMonitor;
    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p1, :cond_1

    .line 221
    const-string v1, "desc"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_1
    if-eqz p2, :cond_2

    .line 225
    const-string/jumbo v1, "msg"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_2
    const-string v1, "DESCRIPTION_INIT_FAIL"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/MicroDescription;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .end local v0    # "extParams":Ljava/util/Map;
    :cond_3
    monitor-exit p0

    return-void

    .line 212
    .end local p1    # "description":Lcom/alipay/mobile/framework/MicroDescription;
    .end local p2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleLoadBundleFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 308
    const-string v1, "bundleName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    const-string v1, "BUNDLE_LOAD_FAIL"

    invoke-virtual {p0, v1, p2, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 311
    return-void
.end method

.method public handleLoadingPagePending(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "timeout"    # Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 315
    .local v1, "extParams":Ljava/util/Map;
    move-object v1, v0

    const-string/jumbo v2, "timeout"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "LOADING_PAGE_PENDING"

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 317
    return-void
.end method

.method public handleMicroAppStartupFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    .local v0, "extParams":Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 291
    const-string v1, "appId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "###"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stackFrame"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    const-string v1, "MICROAPP_STARTUP_FAIL"

    invoke-virtual {p0, v1, p2, v0}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "START_APP_FAIL"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuRecordException(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public handleMicroAppStartupSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "START_APP_FAIL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->cuClearException(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public declared-synchronized handleServiceNotFound(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    monitor-enter p0

    .line 188
    :try_start_0
    const-string v0, "com.alipay.tiny.api.TinyExternalService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    .line 196
    .end local p0    # "this":Lcom/alipay/mobile/framework/FrameworkMonitor;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->g(Landroid/content/Context;)Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/utils/LiteProcessInfo;->isCurrentProcessALiteProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    sget-object v0, Lcom/alipay/mobile/framework/FrameworkMonitor;->a:Ljava/lang/String;

    const-string/jumbo v1, "skip service not found, when in lite process"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 201
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v0, "DESCRIPTION_NOT_FOUND_SERVICE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/alipay/mobile/framework/FrameworkMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :cond_3
    monitor-exit p0

    return-void

    .line 187
    .end local p1    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "subName"    # Ljava/lang/String;
    .param p2, "failCode"    # Ljava/lang/String;
    .param p3, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->c:Z

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->g:I

    .line 325
    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 326
    const-string v0, "BIZ_FRAME"

    invoke-static {v0, p1, p2, p3}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 328
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/FrameworkMonitor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exceed report limit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/framework/FrameworkMonitor;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method
