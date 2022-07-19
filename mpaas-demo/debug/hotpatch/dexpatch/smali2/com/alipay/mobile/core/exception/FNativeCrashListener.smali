.class public Lcom/alipay/mobile/core/exception/FNativeCrashListener;
.super Ljava/lang/Object;
.source "FNativeCrashListener.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/core/impl/AppExitHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "FNativeCrashListener"

    iput-object v0, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "crashInfo"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callStack"    # Ljava/lang/String;
    .param p5, "isReturnJVM"    # Z

    .line 30
    const-string v0, "FNativeCrashListener"

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    .line 31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    :try_start_0
    const-string v2, "Framework FNativeCrashListener: return to java.\r\n"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 38
    :try_start_1
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    .line 39
    iget-object v2, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearTopApps()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v2

    .line 41
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 44
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;
    iget-object v3, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->c:Lcom/alipay/mobile/core/impl/AppExitHelper;

    if-eqz v3, :cond_1

    .line 45
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V

    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v3, v1, v1}, Lcom/alipay/mobile/core/impl/AppExitHelper;->finishAllActivities(Landroid/app/Activity;Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .end local v2    # "weakReference":Ljava/lang/ref/WeakReference;
    :cond_1
    goto :goto_1

    .line 52
    :catchall_1
    move-exception v2

    .line 53
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object v1
.end method

.method public setAppExitHelper(Lcom/alipay/mobile/core/impl/AppExitHelper;)V
    .locals 0
    .param p1, "aeh"    # Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->c:Lcom/alipay/mobile/core/impl/AppExitHelper;

    .line 27
    return-void
.end method

.method public setMicroApplicationContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0
    .param p1, "mac"    # Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/core/exception/FNativeCrashListener;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 23
    return-void
.end method
