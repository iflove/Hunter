.class public Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;
.super Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;
.source "OppoBooster.java"


# instance fields
.field private final a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;)V
    .locals 0
    .param p1, "hypnusManager"    # Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/perfhelper/BaseBooster;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    .line 29
    return-void
.end method

.method public static newInstance()Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;
    .locals 2

    .line 20
    const/4 v0, 0x0

    .local v0, "hypnusManager":Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->newInstance()Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    move-result-object v1

    .line 21
    move-object v0, v1

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    return-object v1

    .line 24
    :cond_0
    new-instance v1, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;-><init>(Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;)V

    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 63
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "oppo"

    return-object v0
.end method

.method protected initWithConfig(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->isHypnusOK()Z

    move-result v0

    return v0
.end method

.method public startBoost(I)Z
    .locals 2
    .param p1, "timeoutMs"    # I

    .line 43
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->mInitSucceed:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->hypnusSetAction(II)V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->hypnusSetAction(II)V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopBoost()V
    .locals 3

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->mInitSucceed:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->hypnusSetAction(II)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->a:Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusManagerProxy;->hypnusSetAction(II)V

    .line 58
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OppoBooster.oppo.isOk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/quinox/perfhelper/oppo/OppoBooster;->mInitSucceed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
