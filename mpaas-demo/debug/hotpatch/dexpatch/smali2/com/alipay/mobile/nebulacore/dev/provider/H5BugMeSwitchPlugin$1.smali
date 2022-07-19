.class Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;
.super Ljava/lang/Object;
.source "H5BugMeSwitchPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->c:Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ZZ[Ljava/lang/String;)V
    .locals 5
    .param p1, "pass"    # Z
    .param p2, "isSuperUser"    # Z
    .param p3, "domainWhiteList"    # [Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pass: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSuperUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BugMeSwitchPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    .line 74
    .local v0, "bugmeManager":Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    if-eqz p1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_0

    .line 76
    const-string v2, "success"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 79
    :cond_0
    invoke-interface {v0, p3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setDomainWhiteList([Ljava/lang/String;)V

    .line 80
    const-string v1, "h5_bug_me_super_user"

    invoke-static {v1, p2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 81
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v2, v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->debugSwitch(ZZZZZ)V

    .line 83
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->b:Z

    if-nez v1, :cond_2

    .line 84
    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->openSettingPanel(Z)V

    return-void

    .line 87
    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->release()V

    .line 89
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 90
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    const-string v3, "error"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    nop

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_bug_me_err_user:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    const-string v3, "errorMessage"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_2

    .line 94
    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 97
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void
.end method
