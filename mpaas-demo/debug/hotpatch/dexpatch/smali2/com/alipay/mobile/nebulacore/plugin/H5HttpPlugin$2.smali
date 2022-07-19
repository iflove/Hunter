.class Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;
.super Ljava/lang/Object;
.source "H5HttpPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 162
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .local v0, "startParams":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string v2, "publicId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string v2, "release_type"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string v2, "appVersion"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string v2, "package_nick"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->e(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    const-string v2, "bizScenario"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->f(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, "hasPermissionFile":Z
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermissionFile(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v2

    move v1, v2

    .line 181
    :cond_0
    const/4 v2, 0x0

    .line 182
    .local v2, "enableProxy":Z
    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    .line 184
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "Enable_Proxy"

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->hasPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v3

    move v2, v3

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V

    return-void

    .line 191
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;)Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V

    return-void

    .line 195
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->c:Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v0    # "startParams":Landroid/os/Bundle;
    .end local v1    # "hasPermissionFile":Z
    .end local v2    # "enableProxy":Z
    return-void

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5HttpPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin$2;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 203
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
