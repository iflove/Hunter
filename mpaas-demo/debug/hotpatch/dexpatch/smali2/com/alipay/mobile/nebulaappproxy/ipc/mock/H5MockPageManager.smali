.class public Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;
.super Ljava/lang/Object;
.source "H5MockPageManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "liteProcessPageId"    # I

    const-class v0, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;

    monitor-enter v0

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :try_start_0
    const-class v2, Lcom/alipay/mobile/base/config/ConfigService;

    .line 33
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/base/config/ConfigService;

    const/4 v3, 0x0

    move-object v4, v3

    .line 34
    .local v4, "configService":Lcom/alipay/mobile/base/config/ConfigService;
    move-object v4, v2

    if-eqz v2, :cond_3

    .line 35
    const-string v2, "h5_use_singleton_mockpage"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    .line 36
    .local v5, "value":Ljava/lang/String;
    move-object v5, v2

    if-eqz v2, :cond_2

    const-string v2, "NO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    const-string v2, "h5_reuse_same_mockpage"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "NO"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_0

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;->appId:Ljava/lang/String;

    .line 40
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    iget v2, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;->liteProcessPageId:I

    if-ne v2, p2, :cond_0

    .line 43
    const-string v2, "H5MockPageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mock page has same appId and pageId, use the last instance "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ,obj="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 46
    :cond_0
    :try_start_1
    const-string v2, "H5MockPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to use last instance "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", currentPageId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " appId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-nez p0, :cond_1

    .line 48
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object p0, v2

    .line 50
    :cond_1
    new-instance v2, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, p0, v3, v6}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Bridge;Landroid/os/Bundle;)V

    move-object v1, v2

    .line 51
    sget-boolean v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->b:Z

    if-nez v2, :cond_2

    .line 52
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->b:Z

    .line 53
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->initServicePlug()V

    .line 56
    :cond_2
    if-eqz v1, :cond_3

    .line 57
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    invoke-direct {v2, v1, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;I)V

    sput-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit v0

    return-object v1

    .line 62
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    :try_start_2
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v2, :cond_6

    .line 63
    :cond_4
    if-nez p0, :cond_5

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 65
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object p0, v2

    .line 67
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 68
    .local v5, "time":J
    new-instance v2, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, p0, v3, v7}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Bridge;Landroid/os/Bundle;)V

    .line 70
    .local v2, "tempPage":Lcom/alipay/mobile/h5container/api/H5Page;
    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v3, v8}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->initServicePlug()V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "H5MockPageManager init cost:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 74
    .end local v2    # "tempPage":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "time":J
    :cond_6
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageManager;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/ipc/mock/H5MockPageContext;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    .line 30
    .end local v1    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v4    # "configService":Lcom/alipay/mobile/base/config/ConfigService;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "appId":Ljava/lang/String;
    .end local p2    # "liteProcessPageId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initServicePlug()V
    .locals 2

    .line 80
    const/4 v0, 0x0

    .local v0, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 81
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5Service;->initServicePlugin()V

    .line 85
    :cond_0
    return-void
.end method
