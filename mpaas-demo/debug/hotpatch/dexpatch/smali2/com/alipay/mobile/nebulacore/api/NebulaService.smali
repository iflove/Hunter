.class public interface abstract Lcom/alipay/mobile/nebulacore/api/NebulaService;
.super Ljava/lang/Object;
.source "NebulaService.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CoreNode;


# virtual methods
.method public abstract addPluginConfig(Lcom/alipay/mobile/nebula/config/H5PluginConfig;)V
.end method

.method public abstract addSession(Lcom/alipay/mobile/h5container/api/H5Session;)Z
.end method

.method public abstract createPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract createPageAsync(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;Lcom/alipay/mobile/h5container/api/H5PageReadyListener;)V
.end method

.method public abstract exitService()Z
.end method

.method public abstract fireUrgentUcInit()V
.end method

.method public abstract getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
.end method

.method public abstract getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;
.end method

.method public abstract getH5PageByViewId(I)Lcom/alipay/mobile/h5container/api/H5Page;
.end method

.method public abstract getH5TaskScheduleProvider()Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;
.end method

.method public abstract getNebulaAppManager()Lcom/alipay/mobile/nebula/appcenter/listen/NebulaAppManager;
.end method

.method public abstract getNebulaCommonManager()Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;
.end method

.method public abstract getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
.end method

.method public abstract getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;
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

.method public abstract getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;
.end method

.method public abstract initServicePlugin()V
.end method

.method public abstract isAliDomain(Ljava/lang/String;)Z
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract parseRNPkg(Ljava/lang/String;)I
.end method

.method public abstract permitLocation(Ljava/lang/String;)Z
.end method

.method public abstract prepareRNApp(Ljava/lang/String;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)V
.end method

.method public abstract removeSession(Ljava/lang/String;)Z
.end method

.method public abstract sendEvent(Lcom/alipay/mobile/h5container/api/H5Event;)Z
.end method

.method public abstract setH5TaskScheduleProvider(Lcom/alipay/mobile/nebula/provider/H5TaskScheduleProvider;)V
.end method

.method public abstract setWebDriverHelper(Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;)V
.end method

.method public abstract startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z
.end method

.method public abstract ucIsReady(Lcom/alipay/mobile/h5container/api/H5UcReadyCallBack;Lcom/alibaba/fastjson/JSONObject;)V
.end method
