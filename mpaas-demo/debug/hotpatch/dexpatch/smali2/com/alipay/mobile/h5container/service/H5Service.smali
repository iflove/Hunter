.class public abstract Lcom/alipay/mobile/h5container/service/H5Service;
.super Lcom/alipay/mobile/nebula/wallet/H5ExternalService;
.source "H5Service.java"


# static fields
.field public static final H5APP_ENGINE_TYPE:Ljava/lang/String; = "H5App"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/wallet/H5ExternalService;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public abstract H5IApplicationInstaller()Lcom/alipay/mobile/framework/app/IApplicationInstaller;
.end method

.method public abstract addEmbedViewConfig(Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;)V
.end method

.method public abstract addEmbedViewConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addH5PluginConfigList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addNewEmbedViewConfig(Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;)V
.end method

.method public abstract addNewEmbedViewConfig(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewConfig;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
.end method

.method public abstract clearServiceWorker(Ljava/lang/String;)V
.end method

.method public abstract clearServiceWorkerSync(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
.end method

.method public abstract createPage(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract createPageAsync(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
.end method

.method public abstract createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;
.end method

.method public abstract createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract createPluginManager(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5PluginManager;
.end method

.method public abstract generatePackInfoReq(Ljava/util/List;)Lcom/alipay/mobileappconfig/core/model/hybirdPB/PackInfoReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobileappconfig/core/model/hybirdPB/PackInfoReq;"
        }
    .end annotation
.end method

.method public abstract getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
.end method

.method public abstract getH5GlobalDegradePkg(Ljava/lang/String;)[B
.end method

.method public abstract getH5PageByViewId(I)Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract getItsOwnNode()Lcom/alipay/mobile/h5container/api/H5CoreNode;
.end method

.method public abstract getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
.end method

.method public abstract getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
.end method

.method public abstract getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;
.end method

.method public abstract getProcessH5Activity()[Ljava/lang/Class;
.end method

.method public abstract getProcessH5TransActivity()[Ljava/lang/Class;
.end method

.method public abstract getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.end method

.method public abstract getSessionByAppId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract getSessionByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract getSessions()Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/alipay/mobile/h5container/api/H5Session;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTopH5BaseFragment()Lcom/alipay/mobile/h5container/api/H5BaseFragment;
.end method

.method public abstract getTopH5BaseFragmentByViewId(I)Lcom/alipay/mobile/h5container/api/H5BaseFragment;
.end method

.method public abstract getTopH5BaseFragmentByWorkerId(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5BaseFragment;
.end method

.method public abstract getTopH5Fragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;
.end method

.method public abstract getUcInitTask()Ljava/lang/Runnable;
.end method

.method public abstract getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
.end method

.method public abstract initServicePlugin()V
.end method

.method public abstract isAliDomain(Ljava/lang/String;)Z
.end method

.method public abstract parseRNPkg(Ljava/lang/String;)I
.end method

.method public abstract permitLocation(Ljava/lang/String;)Z
.end method

.method public abstract preLoadInTinyProcess()V
.end method

.method public abstract prepareApp(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
.end method

.method public abstract prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeSharedData(Ljava/lang/String;)V
.end method

.method public abstract savePackJson(Ljava/lang/String;)V
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
.end method

.method public abstract sendServiceWorkerPushMessage(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendServiceWorkerPushMessage(Ljava/util/HashMap;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5CallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendToWebFromMainProcess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract setSharedData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setWebDriverHelper(Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;)V
.end method

.method public abstract startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V
.end method

.method public abstract startPageFromActivity(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Bundle;)V
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/app/MicroApplication;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;)V
.end method

.method public abstract ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Lcom/alibaba/fastjson/JSONObject;)V
.end method
