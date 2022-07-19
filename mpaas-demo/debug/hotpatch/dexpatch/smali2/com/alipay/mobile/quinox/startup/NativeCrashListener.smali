.class public Lcom/alipay/mobile/quinox/startup/NativeCrashListener;
.super Ljava/lang/Object;
.source "NativeCrashListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "bizKey"    # Ljava/lang/String;
    .param p2, "crashInfo"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callStack"    # Ljava/lang/String;
    .param p5, "isReturnJVM"    # Z

    .line 19
    if-eqz p5, :cond_0

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->processNativeCrashFile(Ljava/io/Reader;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "NativeCrashListener"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
