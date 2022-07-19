.class public Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
.super Ljava/lang/Object;
.source "H5OpenAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;
    }
.end annotation


# static fields
.field private static f:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;

.field private c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "sessionid"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    .line 128
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 129
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->d:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    .line 123
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b:Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)Landroid/os/Bundle;
    .locals 5
    .param p0, "mapString"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 695
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;

    .line 699
    .local v2, "entryString":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    iget-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->key:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .end local v2    # "entryString":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    goto :goto_0

    .line 701
    :cond_1
    return-object v0

    .line 696
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;)Landroid/os/Bundle;
    .locals 4
    .param p0, "requestPB"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;

    .line 733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 735
    .local v1, "requestParams":Landroid/os/Bundle;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    const-string v2, "currentPageUrl"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    const-string v2, "fromSystem"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    const-string v2, "isvAppId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 742
    .local v0, "scopeNicks":Ljava/util/ArrayList;
    const-string/jumbo v2, "scopeNicks"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 744
    .end local v0    # "scopeNicks":Ljava/util/ArrayList;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 745
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "appExtInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 747
    return-object v1
.end method

.method private static a(ZLjava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
    .locals 5
    .param p0, "needAuth"    # Z
    .param p1, "uuid"    # Ljava/lang/String;

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "needAuth is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5OpenAuthHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 605
    .local v2, "extParams":Ljava/util/Map;
    move-object v2, v0

    const-string v3, "OpenAuthLogin"

    const-string v4, "YES"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "NO"

    :goto_0
    const-string/jumbo v0, "needOpenAuth"

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v0, "bizSource"

    const-string/jumbo v3, "tinyapp"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v0, "cAuthUUID"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-static {}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getInstance()Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonservice/CommonServiceFactory;->getRpcService()Lcom/alipay/android/phone/inside/commonservice/RpcService;

    move-result-object v0

    .line 610
    .local v1, "rpcService":Lcom/alipay/android/phone/inside/commonservice/RpcService;
    move-object v1, v0

    const-class v3, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    .line 611
    .local v0, "proxy":Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonservice/RpcService;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    move-result-object v3

    .line 612
    invoke-interface {v3, v2}, Lcom/alipay/mobile/common/rpc/RpcInvokeContext;->setExtParams(Ljava/util/Map;)V

    .line 613
    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/H5AuthParamsPB;)V
    .locals 7
    .param p1, "h5AuthParams"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/H5AuthParamsPB;

    .line 659
    iget-object v0, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/H5AuthParamsPB;->appId:Ljava/lang/String;

    .line 660
    .local v0, "openAppId":Ljava/lang/String;
    iget-object v1, p1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/H5AuthParamsPB;->params:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)Landroid/os/Bundle;

    move-result-object v1

    .line 661
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 662
    .local v4, "key":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->addOpenAuthHelper(Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)V

    .line 664
    sget-boolean v2, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->f:Z

    if-eqz v2, :cond_1

    .line 665
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 669
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "error"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->sendResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 671
    return-void

    .line 673
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->f:Z

    .line 674
    const-string/jumbo v2, "nebulaAuthCodeKey"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 677
    .local v2, "message":Landroid/os/Message;
    const-string v5, "getAuthCodeOpenAppId"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const v5, 0xbebf0bc

    const-string/jumbo v6, "msg_type"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 680
    const-class v5, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 681
    .local v3, "eventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 682
    const-string/jumbo v5, "nebulaApp"

    invoke-virtual {v3, v5, v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->clientSenMsg(Ljava/lang/String;Landroid/os/Message;)V

    .line 684
    .end local v2    # "message":Landroid/os/Message;
    .end local v3    # "eventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_2
    return-void

    .line 685
    :cond_3
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    move-object v5, v3

    .line 686
    .local v5, "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    move-object v5, v2

    if-eqz v2, :cond_4

    .line 687
    invoke-interface {v5, v4, v3}, Lcom/alipay/mobile/nebula/provider/H5BizProvider;->addBizCallback(Ljava/lang/String;Lcom/alipay/mobile/nebula/model/H5BizModel;)V

    .line 689
    :cond_4
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthUtil;->startOpenAuthApp(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 691
    .end local v5    # "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V
    .locals 15
    .param p1, "authSkipResultPB"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "scopeNicks"    # Ljava/util/List;
    .param p5, "showErrorTip"    # Z
    .param p6, "isvAppId"    # Ljava/lang/String;
    .param p7, "extInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .param p8, "appExtInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            ")V"
        }
    .end annotation

    .line 293
    move-object v11, p0

    iget-object v0, v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v12, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;

    iget-object v2, v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    const/4 v7, 0x0

    const-string/jumbo v3, "\u63d0\u793a"

    const-string/jumbo v4, "\u53d6\u6d88\u6388\u6743\uff0c\u53ef\u80fd\u4f1a\u4f7f\u90e8\u5206\u670d\u52a1\u65e0\u6cd5\u4f7f\u7528\uff0c\u6216\u9875\u9762\u4fe1\u606f\u4e0d\u5b8c\u6574"

    const-string/jumbo v5, "\u91cd\u65b0\u6388\u6743"

    const-string/jumbo v6, "\u6211\u77e5\u9053\u4e86"

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 297
    .local v0, "h5OpenAuthNoticeDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;
    move-object v13, v12

    .end local v0    # "h5OpenAuthNoticeDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;
    .local v13, "h5OpenAuthNoticeDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;
    new-instance v14, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$2;

    move-object v0, v14

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V

    .line 298
    invoke-virtual {v12, v14}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 313
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$3;

    invoke-direct {v0, p0, v13}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;)V

    .line 314
    invoke-virtual {v13, v0}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 325
    const-string v0, "a143.b5627.c12342"

    const-string v1, "exposure"

    const-string v2, "acctInfoAuth"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v13}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;->show()V

    .line 328
    .end local v13    # "h5OpenAuthNoticeDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthNoticeDialog;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .param p8, "x8"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 72
    invoke-direct/range {p0 .. p8}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .param p7, "x7"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 276
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 277
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    instance-of v1, p1, Lcom/alipay/mobile/common/rpc/RpcException;

    const-string v2, "errorMessage"

    const-string v3, "error"

    if-eqz v1, :cond_0

    .line 278
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v1, "Network Error"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_0
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->sendResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 286
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .line 705
    const-string v0, "H5_AL_AUTH_JASAPICALL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 706
    .local v2, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "useWeb"

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 707
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 708
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    move-object v3, v1

    .line 709
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 711
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 715
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 716
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x1"    # Ljava/lang/String;
    .param p1, "x2"    # Ljava/lang/String;
    .param p2, "x3"    # Ljava/lang/String;

    .line 72
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V
    .locals 19
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "scopeNicks"    # Ljava/util/List;
    .param p4, "showErrorTip"    # Z
    .param p5, "isvAppId"    # Ljava/lang/String;
    .param p6, "extInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .param p7, "appExtInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "H5OpenAuthHelper"

    .line 509
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;-><init>()V

    const/4 v4, 0x0

    move-object v5, v4

    .line 510
    .local v5, "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    move-object v5, v0

    move-object/from16 v6, p1

    iput-object v6, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->appId:Ljava/lang/String;

    .line 511
    move-object/from16 v7, p2

    iput-object v7, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->currentPageUrl:Ljava/lang/String;

    .line 512
    const-string/jumbo v0, "mobilegw_android"

    iput-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->fromSystem:Ljava/lang/String;

    .line 513
    iput-object v2, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->scopeNicks:Ljava/util/List;

    .line 514
    const-string v0, "QnJpbmcgc21hbGwgYW5kIGJlYXV0aWZ1bCBjaGFuZ2VzIHRvIHRoZSB3b3JsZA=="

    iput-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->state:Ljava/lang/String;

    .line 515
    move-object/from16 v8, p5

    iput-object v8, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->isvAppId:Ljava/lang/String;

    .line 516
    move-object/from16 v9, p6

    iput-object v9, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 517
    move-object/from16 v10, p7

    iput-object v10, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 521
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "uuid":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(ZLjava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    move-result-object v11

    .line 523
    invoke-interface {v11, v5}, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;->executeAuth(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    move-result-object v11

    move-object v12, v4

    .line 524
    .local v12, "resultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    move-object v12, v11

    if-eqz v11, :cond_7

    .line 525
    iget-object v11, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->isSuccess:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v11, :cond_0

    :try_start_1
    iget-object v11, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->isSuccess:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_0

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "executeAuth rpc !isSuccess "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorCode:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$4;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v11, p4

    :try_start_2
    invoke-direct {v4, v1, v12, v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;Z)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 566
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v12    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move/from16 v11, p4

    :goto_0
    move-object/from16 v17, v5

    goto/16 :goto_7

    .line 525
    .restart local v0    # "uuid":Ljava/lang/String;
    .restart local v12    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    :cond_0
    move/from16 v11, p4

    .line 536
    :try_start_3
    const-string v13, "executeAuth rpc isSuccess"

    invoke-static {v3, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v13, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->authCode:Ljava/lang/String;

    .line 538
    .local v13, "authCode":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "executeAuth rpc authCode is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v14, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v14}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 540
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v14

    const-string v15, "authCode"

    invoke-virtual {v14, v15, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v14, "authcode"

    invoke-virtual {v4, v14, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    new-instance v14, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v14}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 544
    .local v14, "successArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->successScopes:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v15, :cond_2

    :try_start_4
    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->successScopes:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 545
    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->successScopes:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 546
    .local v17, "item":Ljava/lang/String;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "item":Ljava/lang/String;
    .local v0, "item":Ljava/lang/String;
    .local v16, "uuid":Ljava/lang/String;
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 547
    move-object/from16 v0, v16

    .end local v0    # "item":Ljava/lang/String;
    goto :goto_1

    .line 545
    .end local v16    # "uuid":Ljava/lang/String;
    .local v0, "uuid":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "uuid":Ljava/lang/String;
    .restart local v16    # "uuid":Ljava/lang/String;
    goto :goto_2

    .line 544
    .end local v16    # "uuid":Ljava/lang/String;
    .restart local v0    # "uuid":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v0

    .line 549
    .end local v0    # "uuid":Ljava/lang/String;
    .restart local v16    # "uuid":Ljava/lang/String;
    :goto_2
    :try_start_5
    const-string v0, "authSuccessScopes"

    invoke-virtual {v4, v0, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 552
    .local v0, "errorObject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    if-eqz v15, :cond_5

    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v15, v15, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    if-eqz v15, :cond_5

    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v15, v15, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    .line 553
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 554
    iget-object v15, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v15, v15, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v18, v17

    .line 555
    .local v18, "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    move-object/from16 v17, v5

    move-object/from16 v5, v18

    .end local v18    # "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    .local v5, "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    .local v17, "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :try_start_6
    iget-object v6, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->key:Ljava/lang/String;

    iget-object v7, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v5, v17

    .end local v5    # "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    goto :goto_3

    .line 554
    .end local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .local v5, "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :cond_3
    move-object/from16 v17, v5

    .end local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    goto :goto_4

    .line 553
    .end local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :cond_4
    move-object/from16 v17, v5

    .end local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    goto :goto_4

    .line 552
    .end local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :cond_5
    move-object/from16 v17, v5

    .line 558
    .end local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :goto_4
    const-string v5, "authErrorScopes"

    invoke-virtual {v4, v5, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    const-string v5, "auth_user"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "executeAuth setOpenAuthGrantFlag "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->d:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alipay/mobile/h5container/api/H5Flag;->setOpenAuthGrantFlag(Ljava/lang/String;Z)V

    .line 563
    :cond_6
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->sendResult(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 566
    .end local v0    # "errorObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    .end local v13    # "authCode":Ljava/lang/String;
    .end local v14    # "successArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v16    # "uuid":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_7

    .end local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :catch_3
    move-exception v0

    goto :goto_6

    .line 524
    .local v0, "uuid":Ljava/lang/String;
    .restart local v12    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    :cond_7
    move/from16 v11, p4

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    .line 569
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .end local v12    # "resultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;
    .restart local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :goto_5
    return-void

    .line 566
    .end local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .restart local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :catch_4
    move-exception v0

    move/from16 v11, p4

    :goto_6
    move-object/from16 v17, v5

    .line 567
    .end local v5    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "authExecuteRequestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthExecuteRequestPB;
    :goto_7
    const-string v4, "executeAuth rpc exception "

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Ljava/lang/Exception;)V

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "showErrorTip"    # Z

    .line 573
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 576
    .local v2, "result":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v0, "errorMessage"

    invoke-virtual {v2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v0, "errorDesc"

    invoke-virtual {v2, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->sendResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showBusinessFailedDialog showErrorTip: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5OpenAuthHelper"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz p3, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    move-result-object v0

    .line 584
    .local v1, "dialog":Lcom/alipay/mobile/antui/dialog/AUImageDialog;
    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setCanceledOnTouch(Z)V

    .line 585
    const-string/jumbo v0, "\u670d\u52a1\u6b63\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 586
    const-string/jumbo v0, "\u803d\u8bef\u60a8\u7684\u65f6\u95f4\uff0c\u6211\u4eec\u6df1\u8868\u6b49\u610f"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 587
    const-string/jumbo v0, "\u786e\u5b9a"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->setConfirmBtnText(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->showWithoutAnim()V

    .line 591
    .end local v1    # "dialog":Lcom/alipay/mobile/antui/dialog/AUImageDialog;
    .end local v2    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 3

    .line 643
    const/4 v0, 0x0

    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "h5_newGetAuthCodeConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 644
    move-object v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    const-string v1, "enable"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 647
    :cond_0
    return v2
.end method

.method private static b(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)Landroid/os/Bundle;
    .locals 5
    .param p0, "map"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 751
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 754
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 755
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    .line 757
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;

    .line 758
    .local v2, "entry":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    move-object v2, v3

    if-eqz v3, :cond_1

    .line 759
    iget-object v3, v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->key:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .end local v2    # "entry":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    :cond_1
    goto :goto_0

    .line 762
    :cond_2
    return-object v0

    .line 752
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "behavorId"    # Ljava/lang/String;
    .param p2, "bizType"    # Ljava/lang/String;

    .line 636
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v1, 0x0

    .line 637
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v1, v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 640
    return-void
.end method

.method private static b()Z
    .locals 3

    .line 651
    const/4 v0, 0x0

    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "h5_newGetAuthCodeConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/config/H5ConfigServiceWrap;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 652
    move-object v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    const-string v1, "callbackErrorAtDuplicate"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 655
    :cond_0
    return v2
.end method

.method private static c()V
    .locals 6

    .line 719
    const/4 v0, 0x0

    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    const-string v1, "H5_AL_AUTH_JASAPISUCCESS"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 720
    move-object v0, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "useWeb"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 721
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/h5container/service/H5Service;

    .line 722
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/service/H5Service;

    const/4 v2, 0x0

    move-object v3, v2

    .line 723
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    move-object v4, v2

    .line 725
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v1

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 729
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 730
    return-void
.end method

.method public static mapToMapStringString(Ljava/util/Map;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .locals 5
    .param p0, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;"
        }
    .end annotation

    .line 617
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 620
    :cond_0
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;-><init>()V

    move-object v2, v0

    .line 621
    .local v2, "mapStringString":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    move-object v2, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    .line 622
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 623
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 626
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;-><init>()V

    .line 627
    .local v0, "entryStringString":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    move-object v0, v4

    iput-object v3, v4, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->key:Ljava/lang/String;

    .line 628
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->value:Ljava/lang/String;

    .line 629
    iget-object v4, v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    .end local v0    # "entryStringString":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 631
    :cond_2
    return-object v2

    .line 618
    .end local v2    # "mapStringString":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getAuthContentOrAutoAuth(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;ZLcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V
    .locals 21
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "scopeNicks"    # Ljava/util/List;
    .param p4, "isvAppId"    # Ljava/lang/String;
    .param p5, "extInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .param p6, "showErrorTip"    # Z
    .param p7, "appExtInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            "Z",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    const-string v13, "H5OpenAuthHelper"

    .line 137
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 138
    .local v2, "requestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;
    move-object v14, v0

    move-object/from16 v15, p1

    .end local v2    # "requestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;
    .local v14, "requestPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;
    iput-object v15, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appId:Ljava/lang/String;

    .line 139
    move-object/from16 v10, p2

    iput-object v10, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->currentPageUrl:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "mobilegw_android"

    iput-object v0, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->fromSystem:Ljava/lang/String;

    .line 141
    iput-object v12, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->scopeNicks:Ljava/util/List;

    .line 142
    const-string v0, "QnJpbmcgc21hbGwgYW5kIGJlYXV0aWZ1bCBjaGFuZ2VzIHRvIHRoZSB3b3JsZA=="

    iput-object v0, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->state:Ljava/lang/String;

    .line 143
    move-object/from16 v9, p4

    iput-object v9, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->isvAppId:Ljava/lang/String;

    .line 144
    move-object/from16 v8, p5

    iput-object v8, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->extInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 145
    move-object/from16 v7, p7

    iput-object v7, v14, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;->appExtInfo:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 146
    iput-object v12, v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->e:Ljava/util/List;

    .line 148
    invoke-static/range {p2 .. p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {v14}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;)Landroid/os/Bundle;

    move-result-object v2

    move-object v6, v2

    .line 154
    .local v6, "requestParams":Landroid/os/Bundle;
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->get()Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/alipay/mobile/nebulaappproxy/api/inside/InsideAppAuthBridge;->executeSkipIdentifyAuth(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(ZLjava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;

    move-result-object v3

    .line 156
    invoke-interface {v3, v14}, Lcom/alipay/mobile/nebulaappproxy/openauth/biz/service/impl/rpc/Oauth2AuthCodeFacade;->getAuthContentOrAutoAuth(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/WalletAuthSkipRequestPB;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    move-result-object v3

    move-object v4, v1

    .line 157
    .local v4, "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    move-object v5, v3

    .end local v4    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .local v5, "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    if-eqz v3, :cond_d

    .line 158
    iget-object v3, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->isSuccess:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v3, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->isSuccess:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAuthContentOrAutoAuth rpc !isSuccess"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->errorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v4, p6

    :try_start_2
    invoke-direct {v1, v11, v5, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Z)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    return-void

    .line 222
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .end local v6    # "requestParams":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move/from16 v4, p6

    goto/16 :goto_5

    .line 158
    .restart local v0    # "uuid":Ljava/lang/String;
    .restart local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .restart local v6    # "requestParams":Landroid/os/Bundle;
    :cond_0
    move/from16 v4, p6

    .line 169
    iget-object v3, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->canSkipAuth:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->canSkipAuth:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->showType:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->showType:Ljava/lang/String;

    const-string v2, "CALLBACK"

    .line 170
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 171
    :cond_2
    const-string v2, "getAuthContentOrAutoAuth rpc canSkipAuth"

    invoke-static {v13, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    if-eqz v2, :cond_8

    .line 173
    iget-object v2, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->authCode:Ljava/lang/String;

    .line 174
    .local v2, "authCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "getAuthContentOrAutoAuth rpc authCode is "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 176
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    move-object/from16 v17, v0

    .end local v0    # "uuid":Ljava/lang/String;
    .local v17, "uuid":Ljava/lang/String;
    const-string v0, "authCode"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "authcode"

    invoke-virtual {v3, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 180
    .local v0, "successArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v1, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->successScopes:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->successScopes:Ljava/util/List;

    .line 182
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 183
    iget-object v1, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->successScopes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .line 184
    .local v19, "item":Ljava/lang/String;
    move-object/from16 v18, v1

    move-object/from16 v1, v19

    .end local v19    # "item":Ljava/lang/String;
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v1, v18

    .end local v1    # "item":Ljava/lang/String;
    goto :goto_0

    .line 187
    :cond_3
    const-string v1, "authSuccessScopes"

    invoke-virtual {v3, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 190
    .local v1, "errorObject":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v18, v0

    .end local v0    # "successArray":Lcom/alibaba/fastjson/JSONArray;
    .local v18, "successArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    .line 193
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 194
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authExecuteResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthExecuteResultPB;->errorScopes:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;

    move-object/from16 v20, v19

    .line 195
    .local v20, "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v2

    .end local v2    # "authCode":Ljava/lang/String;
    .local v0, "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    .local v20, "authCode":Ljava/lang/String;
    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->key:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move/from16 v4, p6

    move-object/from16 v0, v19

    move-object/from16 v2, v20

    .end local v0    # "ess":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/EntryStringString;
    goto :goto_1

    .line 194
    .end local v20    # "authCode":Ljava/lang/String;
    .restart local v2    # "authCode":Ljava/lang/String;
    :cond_4
    move-object/from16 v20, v2

    .end local v2    # "authCode":Ljava/lang/String;
    .restart local v20    # "authCode":Ljava/lang/String;
    goto :goto_2

    .line 193
    .end local v20    # "authCode":Ljava/lang/String;
    .restart local v2    # "authCode":Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v2

    .end local v2    # "authCode":Ljava/lang/String;
    .restart local v20    # "authCode":Ljava/lang/String;
    goto :goto_2

    .line 190
    .end local v20    # "authCode":Ljava/lang/String;
    .restart local v2    # "authCode":Ljava/lang/String;
    :cond_6
    move-object/from16 v20, v2

    .line 198
    .end local v2    # "authCode":Ljava/lang/String;
    .restart local v20    # "authCode":Ljava/lang/String;
    :goto_2
    const-string v0, "authErrorScopes"

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_7

    if-eqz v12, :cond_7

    const-string v0, "auth_user"

    invoke-interface {v12, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    iget-object v0, v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Flag;->setOpenAuthGrantFlag(Ljava/lang/String;Z)V

    .line 202
    :cond_7
    invoke-virtual {v11, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->sendResult(Lcom/alibaba/fastjson/JSONObject;)V

    .line 203
    .end local v1    # "errorObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "successArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v20    # "authCode":Ljava/lang/String;
    return-void

    .line 172
    .end local v17    # "uuid":Ljava/lang/String;
    .local v0, "uuid":Ljava/lang/String;
    :cond_8
    move-object/from16 v17, v0

    .end local v0    # "uuid":Ljava/lang/String;
    .restart local v17    # "uuid":Ljava/lang/String;
    goto :goto_4

    .line 170
    .end local v17    # "uuid":Ljava/lang/String;
    .restart local v0    # "uuid":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "uuid":Ljava/lang/String;
    .restart local v17    # "uuid":Ljava/lang/String;
    goto :goto_3

    .line 169
    .end local v17    # "uuid":Ljava/lang/String;
    .restart local v0    # "uuid":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v0

    .line 205
    .end local v0    # "uuid":Ljava/lang/String;
    .restart local v17    # "uuid":Ljava/lang/String;
    :goto_3
    const-string v0, "getAuthContentOrAutoAuth rpc !canSkipAuth"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->showType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->showType:Ljava/lang/String;

    const-string v1, "H5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->h5AuthParams:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/H5AuthParamsPB;

    invoke-direct {v11, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/H5AuthParamsPB;)V

    return-void

    .line 211
    :cond_b
    iget-object v0, v5, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authContentResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;

    if-eqz v0, :cond_c

    .line 212
    const-string v0, "getAuthContentOrAutoAuth rpc begin present auth dialog"

    invoke-static {v13, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v5

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    .end local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .local v16, "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    move-object/from16 v5, p2

    move-object/from16 v18, v6

    .end local v6    # "requestParams":Landroid/os/Bundle;
    .local v18, "requestParams":Landroid/os/Bundle;
    move-object/from16 v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 211
    .end local v16    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .end local v18    # "requestParams":Landroid/os/Bundle;
    .restart local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .restart local v6    # "requestParams":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v16, v5

    move-object/from16 v18, v6

    .end local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .end local v6    # "requestParams":Landroid/os/Bundle;
    .restart local v16    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .restart local v18    # "requestParams":Landroid/os/Bundle;
    goto :goto_4

    .line 157
    .end local v16    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .end local v17    # "uuid":Ljava/lang/String;
    .end local v18    # "requestParams":Landroid/os/Bundle;
    .restart local v0    # "uuid":Ljava/lang/String;
    .restart local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .restart local v6    # "requestParams":Landroid/os/Bundle;
    :cond_d
    move-object/from16 v17, v0

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    .line 225
    .end local v0    # "uuid":Ljava/lang/String;
    .end local v5    # "authSkipResultPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .end local v6    # "requestParams":Landroid/os/Bundle;
    :goto_4
    return-void

    .line 222
    :catch_1
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v1, "getAuthContentOrAutoAuth rpc exception "

    invoke-static {v13, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-direct {v11, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Ljava/lang/Exception;)V

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public sendResult(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "obj"    # Lcom/alibaba/fastjson/JSONObject;

    .line 245
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-ne v2, v0, :cond_0

    .line 247
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->f:Z

    goto :goto_0

    .line 250
    :cond_0
    sput-boolean v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->f:Z

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b:Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;

    const-string v2, "H5OpenAuthHelper"

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result for provider: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->b:Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/provider/H5OpenAuthProvider$OnGetAuthListener;->onResult(Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result for jsbridge: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->c()V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 263
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 264
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v0

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5PageForTiny()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v4, v2

    .line 266
    .local v4, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "isTinyApp"

    invoke-static {v0, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    const-string v1, "alipayAuthChange"

    invoke-interface {v0, v1, p1, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 272
    .end local v4    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_3
    return-void
.end method

.method public setOpenAuthGrantFlag()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, "auth_user"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Flag;->setOpenAuthGrantFlag(Ljava/lang/String;Z)V

    .line 242
    :cond_0
    return-void
.end method
