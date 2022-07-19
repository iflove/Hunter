.class final Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;
.super Ljava/lang/Object;
.source "H5AppCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->c(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "begin findUrlMappedAppId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5AppCenter"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 794
    .local v3, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 795
    const-string v0, "h5_resManifest"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 797
    .local v0, "configObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "matchMainUrl"

    invoke-static {v0, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "NO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 798
    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 800
    .local v5, "launchUrl":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->findUrlMappedAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "appId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "findUrlMappedAppId "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for launchUrl "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 803
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v6, v4, v8}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addResourcePackage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 805
    .end local v5    # "launchUrl":Ljava/lang/String;
    .end local v6    # "appId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 808
    .end local v0    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "end findUrlMappedAppId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void
.end method
