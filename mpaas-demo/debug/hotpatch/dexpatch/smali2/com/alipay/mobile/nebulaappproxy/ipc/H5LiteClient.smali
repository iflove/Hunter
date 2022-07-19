.class public Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;
.super Ljava/lang/Object;
.source "H5LiteClient.java"

# interfaces
.implements Lcom/alipay/mobile/liteprocess/LiteProcessApi$LiteClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 89
    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;->a(Ljava/io/File;)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v0, "path":Ljava/lang/String;
    move-object v0, v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->checkPathValid(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "H5LiteClient"

    if-eqz v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "delete file valid "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 97
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "delete file invalid "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onClientDestory()V
    .locals 9

    .line 33
    const-string v0, "h5LiteProcessKillPolicy"

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nebula"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "H5LiteClient"

    if-eqz v0, :cond_2

    .line 34
    const-string/jumbo v0, "nebula way begin"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->getLpid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 37
    .local v3, "lpid":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "core_ucmobile_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "rootDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "Service Worker"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .local v1, "swDir":Ljava/io/File;
    move-object v1, v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const-string/jumbo v4, "nebula way swDir.exists()"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;->a(Ljava/io/File;)V

    goto :goto_0

    .line 44
    :cond_0
    const-string/jumbo v4, "nebula way !swDir.exists()"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v0    # "rootDir":Ljava/io/File;
    .end local v1    # "swDir":Ljava/io/File;
    .end local v3    # "lpid":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const-string/jumbo v0, "nebula way end"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_2
    const-string/jumbo v0, "ucapi way begin"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 54
    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-class v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 55
    .local v3, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getStartParams()Landroid/os/Bundle;

    move-result-object v4

    .line 60
    .local v1, "startParams":Landroid/os/Bundle;
    const-string/jumbo v5, "onlineHost"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "onlineHost":Ljava/lang/String;
    const-string v5, "h5LiteProcessKillDelay"

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 63
    .local v5, "delay":J
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ucapi way delay "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v7, Landroid/os/ConditionVariable;

    invoke-direct {v7}, Landroid/os/ConditionVariable;-><init>()V

    .line 65
    .local v7, "cv":Landroid/os/ConditionVariable;
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;

    invoke-direct {v8, p0, v0, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient;Lcom/alipay/mobile/h5container/service/H5Service;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v7}, Landroid/os/ConditionVariable;->close()V

    .line 80
    invoke-virtual {v7, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    .line 81
    const-string/jumbo v8, "ucapi way end"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v1    # "startParams":Landroid/os/Bundle;
    .end local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v4    # "onlineHost":Ljava/lang/String;
    .end local v5    # "delay":J
    .end local v7    # "cv":Landroid/os/ConditionVariable;
    return-void

    .line 56
    .restart local v0    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .restart local v3    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_4
    :goto_1
    const-string v1, "h5Service == null || h5EventHandlerService == null"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
