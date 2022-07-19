.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;
.super Lcom/alipay/mpaas/bundle/d/c;
.source "UC7ZHandler.java"

# interfaces
.implements Lcom/alipay/mpaas/bundle/d/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Lcom/alipay/mpaas/bundle/d/c;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;->a:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;)Lcom/alipay/mpaas/bundle/record/ZipFileRecord;
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->request(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;

    move-result-object v0

    .line 37
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "), bRet="

    const-string v3, "DynamicRelease"

    if-nez v1, :cond_0

    .line 38
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mkdirs("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->getDynamicReleaseProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unzip(zipFile="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", tarPath="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    iget-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V

    .line 48
    nop

    .line 49
    const/4 p1, 0x0

    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a/b;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V

    throw p1
.end method

.method public final a()Z
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
