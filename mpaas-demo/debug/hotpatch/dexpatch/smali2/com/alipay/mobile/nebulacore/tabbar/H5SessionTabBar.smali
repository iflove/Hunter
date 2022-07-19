.class public Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
.super Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;
.source "H5SessionTabBar.java"


# static fields
.field public static final SWITCH_TAB:Ljava/lang/String; = "switchTab"


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;)V
    .locals 3
    .param p1, "h5Session"    # Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 104
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->f:Landroid/util/SparseArray;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h:Z

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->i:Z

    .line 84
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->j:J

    .line 92
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->k:Z

    .line 93
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->l:Z

    .line 105
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 106
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 689
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 690
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 691
    .local v2, "key":I
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    return v2

    .line 689
    .end local v2    # "key":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private a(ILcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .line 184
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "url":Ljava/lang/String;
    const-string v2, "launchParams"

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 188
    .local v2, "launchParams":Lcom/alibaba/fastjson/JSONObject;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v5, v3

    .line 189
    .local v5, "tabStartParams":Landroid/os/Bundle;
    move-object v5, v4

    invoke-virtual {v4, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 190
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->toBundle(Lcom/alibaba/fastjson/JSONObject;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 192
    const-string v4, "launchParamsTag"

    invoke-static {p2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "launchParamsTag":Ljava/lang/String;
    const-string v6, "appId"

    invoke-static {p3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 196
    .local v3, "launcher":Landroid/os/Bundle;
    move-object v3, v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "launchParamsTag "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "H5BaseTabBar"

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 200
    :cond_0
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "waitRender"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    const-string v7, "tabanimstartoff"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "transDuration"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    const-string v7, "tabanimduration"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->f:Landroid/util/SparseArray;

    const-string v7, "tag"

    invoke-static {p2, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "launchParams":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "launcher":Landroid/os/Bundle;
    .end local v4    # "launchParamsTag":Ljava/lang/String;
    .end local v5    # "tabStartParams":Landroid/os/Bundle;
    .end local v6    # "appId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private a(ILcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "sessionId"    # Ljava/lang/String;

    .line 864
    const-string v0, "H5BaseTabBar"

    const-string v1, "sendTabClickEventToServiceWorker"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "workerId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendTabClickEventToServiceWorker, workerId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    return-void

    .line 870
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 871
    .local v4, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 872
    const-string v2, "sendTabClickEventToServiceWorker, return by h5Service == null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    return-void

    .line 876
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "tabClick+"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    .local v2, "clientId":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v6, v3

    .line 879
    .local v6, "messageData":Ljava/util/HashMap;
    move-object v6, v5

    const-string v7, "appId"

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 881
    .local v3, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v5

    const-string v7, "func"

    const-string v8, "tabClick"

    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string v5, "clientId"

    invoke-virtual {p2, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v5, "param"

    invoke-virtual {v3, v5, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    .line 886
    .local v5, "message":Ljava/lang/String;
    const-string v7, "message"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string v7, "messageId"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    invoke-virtual {v4, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V

    .line 889
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendBackEventToServiceWorker, message = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    .end local v2    # "clientId":Ljava/lang/String;
    .end local v3    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "messageData":Ljava/util/HashMap;
    return-void

    .line 890
    :catchall_0
    move-exception v2

    .line 891
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "catch exception "

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 893
    .end local v2    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)V
    .locals 5
    .param p1, "currentIndex"    # I
    .param p2, "h5FragmentManager"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 671
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragments()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 672
    .local v2, "tabFragments":Ljava/util/Map;
    move-object v2, v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 673
    .local v1, "index":Ljava/lang/Integer;
    move-object v1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 676
    if-eqz p2, :cond_1

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detachOtherFragment index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5BaseTabBar"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroidx/fragment/app/Fragment;Z)Z

    .line 680
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 681
    :cond_2
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 682
    .local v0, "eventBuilder":Lcom/alipay/mobile/h5container/api/H5Event$Builder;
    move-object v0, v1

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_SWITCH_SESSIONTAB:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 683
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 684
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;->dispatch(Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 685
    return-void
.end method

.method private a(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "h5FragmentManager"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .param p3, "finalSessionId"    # Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->setCurrentIndex(I)V

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 580
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragmentByIndex(I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 582
    .local v2, "selectedFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    move-object v2, v0

    const-string v3, ", obj "

    const-string v4, "H5BaseTabBar"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 584
    if-eqz p2, :cond_1

    .line 585
    invoke-virtual {p2, v2, v5, v5}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reuse sub fragment index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 592
    .local v1, "startParams":Landroid/os/Bundle;
    move-object v1, v0

    const-string v6, "sessionId"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "fragmentType"

    const-string v6, "subtab"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    if-eqz p2, :cond_1

    .line 595
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Landroid/os/Bundle;)Z

    move-result v0

    .line 596
    .local v0, "withAnim":Z
    invoke-virtual {p2, v1, v0, v5}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 597
    nop

    .line 598
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->peekFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 599
    .local v5, "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v6

    .line 600
    invoke-virtual {v6, p1, v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "add new sub fragment index "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", withAnim "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v0    # "withAnim":Z
    .end local v1    # "startParams":Landroid/os/Bundle;
    .end local v5    # "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)V

    .line 607
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 7
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 370
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->i:Z

    if-eqz v0, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->i:Z

    .line 374
    new-instance v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$4;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Bridge;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "h5Bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p2, "index"    # I
    .param p3, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "h5FragmentManager"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .param p5, "sessionId"    # Ljava/lang/String;

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendTabClickEventToBridge, index = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BaseTabBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sendTabClickEventToBridge, data = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sendTabClickEventToBridge, sessionId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-direct {p0, p2, p3, p5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(ILcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    return-void

    .line 853
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b(Lcom/alipay/mobile/h5container/api/H5Bridge;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 16
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "tag"    # Ljava/lang/String;

    .line 293
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v12, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 294
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 296
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    move-object v2, v1

    .line 297
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v5, v0

    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .local v5, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v1

    .line 299
    .local v2, "startParams":Landroid/os/Bundle;
    move-object v13, v0

    .end local v2    # "startParams":Landroid/os/Bundle;
    .local v13, "startParams":Landroid/os/Bundle;
    const-string v2, "tabBarJson"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v1, "tabBarJson":Ljava/lang/String;
    move-object v14, v0

    .end local v1    # "tabBarJson":Ljava/lang/String;
    .local v14, "tabBarJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v15, "appId"

    if-nez v0, :cond_0

    .line 301
    new-instance v6, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$2;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 329
    invoke-static {v13, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v14, v6, v0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_0
    iget-object v0, v12, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    new-instance v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;

    move-object v6, v1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$3;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 359
    invoke-static {v13, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 362
    .end local v5    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v13    # "startParams":Landroid/os/Bundle;
    .end local v14    # "tabBarJson":Ljava/lang/String;
    :cond_1
    return-void

    .line 364
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v12, v1, v0, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->switchTab(Lcom/alipay/mobile/h5container/api/H5Event;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Bridge;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "x4"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .param p5, "x5"    # Ljava/lang/String;

    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/h5container/api/H5Bridge;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "x3"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "x4"    # Landroid/content/Context;
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Landroid/os/Bundle;

    .line 65
    invoke-super/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 610
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b()V

    .line 611
    const-string v0, "tabanimstartoff"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 612
    .local v0, "startOff":I
    const-string v1, "tabanimduration"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 613
    .local v1, "duration":I
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->l:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 16

    .line 407
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 408
    return v4

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object/from16 v5, p2

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    .line 412
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_b

    .line 414
    nop

    .line 415
    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "H5BaseTabBar"

    if-eqz v3, :cond_8

    .line 416
    const-string v9, "url"

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v10, "appId"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 418
    const-string v11, "disableOnInit"

    invoke-static {v2, v11, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v11

    .line 419
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "disableOnInit "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-eqz v11, :cond_1

    if-nez p4, :cond_1

    .line 421
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h:Z

    .line 423
    :cond_1
    const-string v11, "items"

    invoke-static {v2, v11, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v11

    .line 424
    invoke-static {v10, v0, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->ifUrlMatch(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v10

    .line 425
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 426
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    .line 427
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_5

    .line 428
    const/4 v0, 0x5

    if-ge v13, v0, :cond_5

    .line 432
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 433
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 434
    invoke-virtual {v14, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v14, v9, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v15, "icon"

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 438
    const-string v6, "activeIcon"

    invoke-virtual {v14, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    :try_start_0
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    if-nez v0, :cond_2

    .line 442
    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v14, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_2
    goto :goto_1

    .line 445
    :catchall_0
    move-exception v0

    .line 446
    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v14, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :goto_1
    :try_start_1
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    if-nez v0, :cond_3

    .line 452
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {v14, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    :cond_3
    goto :goto_2

    .line 455
    :catchall_1
    move-exception v0

    .line 456
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {v14, v6, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :goto_2
    invoke-direct {v1, v13, v14, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(ILcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V

    .line 427
    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 463
    :cond_5
    if-eqz p4, :cond_6

    .line 464
    move-object/from16 v4, p5

    invoke-direct {v1, v4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Ljava/lang/String;)I

    move-result v10

    .line 466
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "selectedIndex "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    if-ne v10, v7, :cond_7

    .line 468
    const/4 v2, 0x0

    return v2

    .line 467
    :cond_7
    move v7, v10

    .line 472
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "selectedIndex"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 475
    const/4 v4, 0x0

    invoke-super {v1, v2, v4, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->createTabBar(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)V

    .line 477
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    .line 478
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 479
    const-string v5, "fragmentType"

    const-string v6, "subtab"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v9}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 500
    nop

    .line 501
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->peekFragment()Landroidx/fragment/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 502
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v10

    invoke-virtual {v10, v7, v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 505
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->setCurrentIndex(I)V

    .line 507
    const-string v9, "sessionId"

    invoke-static {v4, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 508
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "finalSessionId is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v9, "autoPreRender"

    invoke-static {v2, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    nop

    .line 513
    const-string v9, "isTinyApp"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b()V

    .line 515
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "autoPreRender "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", isTinyApp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", enableAutoRender "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->k:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v9, "YES"

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v3, :cond_a

    iget-boolean v2, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->k:Z

    if-eqz v2, :cond_a

    .line 518
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 519
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_a

    .line 520
    iget-object v9, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 521
    if-eq v9, v7, :cond_9

    .line 522
    const-string v10, "##h5prerender## add prerender in sessiontabbar"

    invoke-static {v8, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 524
    invoke-virtual {v9}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 525
    const-string v10, "isPrerender"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 526
    invoke-virtual {v9, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    nop

    .line 528
    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addPreFragment(Landroid/os/Bundle;I)V

    goto :goto_4

    .line 521
    :cond_9
    const/4 v10, 0x0

    .line 519
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 533
    :cond_a
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    new-instance v3, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;

    invoke-direct {v3, v1, v0, v4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$5;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setTabListener(Lcom/alipay/mobile/nebula/view/H5TabbarLayout$H5TabListener;)V

    .line 572
    :cond_b
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 65
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 6
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Landroid/os/Bundle;
    .param p4, "x5"    # Ljava/lang/String;

    .line 65
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 109
    nop

    .line 110
    const-string v0, "h5_tabBarOptimizeConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 111
    .local v0, "optimizeCfgObj":Lcom/alibaba/fastjson/JSONObject;
    nop

    .line 112
    const-string v1, "enableAutoRender"

    const-string v2, "YES"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->k:Z

    .line 113
    nop

    .line 114
    const-string v1, "enableWaitRender"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->l:Z

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableAutoRender "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enableWaitRender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5BaseTabBar"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Bridge;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "h5Bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p2, "index"    # I
    .param p3, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "h5FragmentManager"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .param p5, "sessionId"    # Ljava/lang/String;

    .line 858
    const-string v0, "H5BaseTabBar"

    const-string v1, "sendTabClickEventToWeb"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v0, "tabClick"

    const/4 v1, 0x0

    invoke-interface {p1, v0, p3, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 860
    invoke-direct {p0, p2, p4, p5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method private static c()Z
    .locals 2

    .line 839
    const-string v0, "h5_enableReCreateTabBar"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const/4 v1, 0x0

    return v1

    .line 843
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private d()Z
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    const-string v1, "tabClick"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->enableEventThroughWorker(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 17
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "iconArea"    # Landroid/widget/TextView;
    .param p3, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "drawableSize"    # I
    .param p6, "isCheckedState"    # Z
    .param p7, "startParams"    # Landroid/os/Bundle;

    .line 752
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p7

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    return-void

    .line 756
    :cond_0
    const-string v0, "sessionId"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 758
    .local v2, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v13, v0

    .end local v2    # "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .local v13, "h5ContentPackage":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    if-eqz v0, :cond_3

    .line 759
    nop

    .line 760
    invoke-virtual {v13, v10}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v0

    move-object v2, v1

    .line 761
    .local v2, "data":[B
    move-object v2, v0

    if-eqz v0, :cond_2

    .line 762
    const-string v0, "H5BaseTabBar"

    const-string v3, "loadImageAsync offlinepkg preFetchPackage"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    array-length v0, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 764
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v5, v1

    .line 765
    .local v5, "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v5, v4

    move/from16 v14, p5

    invoke-virtual {v4, v3, v3, v14, v14}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 766
    if-eqz p6, :cond_1

    .line 767
    invoke-static {v11, v5}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addCheckedState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 769
    :cond_1
    invoke-static {v11, v5}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->addNormalState(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 771
    :goto_0
    move-object/from16 v15, p2

    invoke-virtual {v15, v1, v11, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 772
    return-void

    .line 761
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "topDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    move-object/from16 v15, p2

    move/from16 v14, p5

    move-object v1, v2

    goto :goto_1

    .line 758
    .end local v2    # "data":[B
    :cond_3
    move-object/from16 v15, p2

    move/from16 v14, p5

    .line 776
    :goto_1
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 777
    const-string v0, "onlineHost"

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v1, "onlineHost":Ljava/lang/String;
    move-object v8, v0

    .end local v1    # "onlineHost":Ljava/lang/String;
    .local v8, "onlineHost":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    iget-object v0, v9, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v7

    new-instance v6, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p2

    move-object v11, v7

    move-object/from16 v7, p1

    move-object/from16 v16, v8

    .end local v8    # "onlineHost":Ljava/lang/String;
    .local v16, "onlineHost":Ljava/lang/String;
    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$6;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Landroid/content/Context;IZLandroid/graphics/drawable/StateListDrawable;Landroid/widget/TextView;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v11, v10, v9}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    return-void

    .line 778
    .end local v16    # "onlineHost":Ljava/lang/String;
    .restart local v8    # "onlineHost":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v8

    .line 809
    .end local v8    # "onlineHost":Ljava/lang/String;
    .restart local v16    # "onlineHost":Ljava/lang/String;
    invoke-super/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 811
    .end local v16    # "onlineHost":Ljava/lang/String;
    return-void

    .line 812
    :cond_5
    invoke-super/range {p0 .. p7}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/graphics/drawable/StateListDrawable;Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 815
    return-void
.end method

.method public addTabBar()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const-string v1, "H5BaseTabBar"

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v2, 0x0

    .line 124
    .local v2, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    .line 127
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 132
    const-string v3, "h5_resetTabBarHeight"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    const-string v3, "reset tabbar height true!"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 135
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    :cond_2
    return-void

    .line 140
    :cond_3
    const-string v0, "not in h5activity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public addTabBarNoDisplay()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const-string v1, "H5BaseTabBar"

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v2, 0x0

    .line 148
    .local v2, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    .line 151
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_4

    .line 155
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 156
    const-string v3, "h5_resetTabBarHeight"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    const-string v3, "reset tabbar height true!"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 159
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/high16 v3, 0x42500000    # 52.0f

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, -0x70707

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 170
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-nez v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 175
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    :cond_4
    return-void

    .line 178
    :cond_5
    const-string v0, "not in h5activity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public createDefaultSessionTab(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .line 700
    const-string v0, "H5BaseTabBar"

    const/4 v1, 0x2

    if-lt p2, v1, :cond_2

    .line 702
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 703
    .local v3, "rootDefaultView":Landroid/widget/LinearLayout;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 704
    new-instance v1, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;-><init>(Landroid/content/Context;)V

    .line 705
    .local v1, "defaultTabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    const/4 v5, 0x0

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    .local v5, "i":I
    :goto_0
    const/4 v9, 0x0

    if-ge v5, p2, :cond_0

    .line 706
    const/4 v10, 0x5

    if-ge v5, v10, :cond_0

    .line 710
    const-string v6, ""

    .line 711
    .local v6, "title":Ljava/lang/String;
    new-instance v10, Lcom/alipay/mobile/nebula/view/H5TabbarItem;

    invoke-direct {v10, p1}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;-><init>(Landroid/content/Context;)V

    .line 712
    .local v7, "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    move-object v7, v10

    invoke-virtual {v10}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getIconAreaView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 713
    .local v8, "iconArea":Landroid/widget/TextView;
    move-object v8, v10

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/alipay/mobile/nebula/R$drawable;->h5_sessiontab_defaultitem:I

    .line 715
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 716
    .local v10, "defaultIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a()I

    move-result v11

    .line 717
    .local v11, "drawableSize":I
    invoke-virtual {v10, v9, v9, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 718
    invoke-virtual {v8, v2, v10, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 719
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/view/H5TabbarItem;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->addTab(Landroid/view/View;)V

    .line 705
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "tabbarItem":Lcom/alipay/mobile/nebula/view/H5TabbarItem;
    .end local v8    # "iconArea":Landroid/widget/TextView;
    .end local v10    # "defaultIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "drawableSize":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 721
    .end local v5    # "i":I
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    .local v2, "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 724
    .local v6, "borderLine":Landroid/view/View;
    move-object v6, v4

    const v7, -0x545452

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 725
    invoke-virtual {v3, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    const v4, -0x70707

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->setBackgroundColor(I)V

    .line 728
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 730
    .local v4, "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    instance-of v7, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v7, :cond_1

    .line 732
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 733
    .local v0, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    nop

    .line 734
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    .line 735
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v5, v7

    .line 738
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 739
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 740
    .end local v0    # "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    return-void

    .line 741
    :cond_1
    const-string v5, "not in h5activity"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .end local v1    # "defaultTabHost":Lcom/alipay/mobile/nebula/view/H5TabbarLayout;
    .end local v2    # "rootLayoutParams4Line":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "rootDefaultView":Landroid/widget/LinearLayout;
    .end local v4    # "rootLayoutParams4Tab":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "borderLine":Landroid/view/View;
    return-void

    .line 744
    :cond_2
    const-string v1, "createDefaultSessionTab num < 2"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public createSessionTab(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "startParams"    # Landroid/os/Bundle;

    .line 400
    const/4 v4, 0x0

    const-string v5, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 13
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 231
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "action":Ljava/lang/String;
    const-string v1, "switchTab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 233
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h:Z

    .line 234
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v5, v4

    .line 235
    .local v5, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    const-string v6, "tag"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "tag":Ljava/lang/String;
    const-string v6, "recreate"

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    move v7, v3

    .line 237
    .local v7, "reCreate":Z
    if-eqz v6, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v6, :cond_2

    .line 238
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 239
    const-string v6, "H5BaseTabBar"

    const-string v8, "tabBar recreate"

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->clearTabFragments()V

    .line 242
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->i:Z

    .line 244
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getPages()Ljava/util/Stack;

    move-result-object v6

    .line 245
    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 246
    .local v4, "item":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 247
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    .line 248
    .local v8, "itemParams":Landroid/os/Bundle;
    move-object v8, v9

    const-string v10, "fragmentType"

    const-string v11, "normal"

    invoke-static {v9, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 250
    const-string v12, "subtab"

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    const-string v9, "isPrerender"

    invoke-static {v5, v9, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 253
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendExitEvent()V

    .line 254
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v4    # "item":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v8    # "itemParams":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 259
    :cond_1
    new-instance v3, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;-><init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    const-wide/16 v8, 0x1f4

    invoke-static {v3, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 265
    return v2

    .line 267
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 268
    return v2

    .line 270
    .end local v1    # "tag":Ljava/lang/String;
    .end local v5    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "reCreate":Z
    :cond_3
    const-string v1, "setTabBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 271
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    move-object v5, v4

    .line 272
    .restart local v5    # "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v1

    const-string v6, "actionType"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v4

    .line 273
    .local v6, "actionType":Ljava/lang/String;
    move-object v6, v1

    const-string v7, "redDot"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    invoke-virtual {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createTabBadge(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_1

    .line 275
    :cond_4
    const-string v1, "enable"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h:Z

    goto :goto_1

    .line 277
    :cond_5
    const-string v1, "disable"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->h:Z

    goto :goto_1

    .line 279
    :cond_6
    const-string v1, "textColor"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    invoke-virtual {p0, v5, v4}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createTabTextColor(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_1

    .line 281
    :cond_7
    const-string v1, "icon"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 282
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 283
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v1

    if-eqz v1, :cond_8

    .line 284
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->createTabIcon(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/os/Bundle;)V

    .line 287
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_8
    :goto_1
    return v2

    .line 289
    .end local v5    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "actionType":Ljava/lang/String;
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public declared-synchronized isFastClick()Z
    .locals 7

    monitor-enter p0

    .line 822
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 824
    .local v2, "currentTime":J
    move-wide v2, v0

    iget-wide v4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->j:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 826
    const/4 v0, 0x0

    .local v0, "isFastClick":Z
    goto :goto_0

    .line 828
    .end local v0    # "isFastClick":Z
    :cond_0
    const/4 v0, 0x1

    .line 830
    .restart local v0    # "isFastClick":Z
    :goto_0
    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    monitor-exit p0

    return v0

    .line 821
    .end local v0    # "isFastClick":Z
    .end local v2    # "currentTime":J
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 210
    const-string v0, "switchTab"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v0, "setTabBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/tabbar/H5BaseTabBar;->onRelease()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->d:Landroid/widget/RelativeLayout;

    .line 218
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 219
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    .line 220
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->c:Landroid/widget/LinearLayout;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 227
    :cond_1
    return-void
.end method

.method public processTabClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "clientId"    # Ljava/lang/String;

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processTabClick, clientId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BaseTabBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "tabClick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 904
    :cond_0
    const-string v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 905
    .local v1, "data":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 906
    return-void

    .line 908
    :cond_1
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 909
    .local v0, "index":I
    const/4 v2, 0x2

    aget-object v2, v1, v2

    .line 911
    .local v2, "sessionId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v3, :cond_2

    goto :goto_0

    .line 914
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 915
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v3

    .line 916
    .local v3, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    invoke-direct {p0, v0, v3, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Ljava/lang/String;)V

    .line 917
    return-void

    .line 912
    .end local v3    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    :cond_3
    :goto_0
    return-void

    .line 902
    .end local v0    # "index":I
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "sessionId":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method public setHasShowTab(Z)V
    .locals 0
    .param p1, "hasShowTab"    # Z

    .line 835
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->i:Z

    .line 836
    return-void
.end method

.method public setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 102
    return-void
.end method

.method public switchTab(Lcom/alipay/mobile/h5container/api/H5Event;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 14
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 617
    move-object v0, p0

    const-string v1, "H5BaseTabBar"

    if-nez p2, :cond_0

    .line 618
    const-string v2, "activity == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void

    .line 621
    :cond_0
    move-object/from16 v2, p2

    check-cast v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v3, 0x0

    move-object v4, v3

    .line 622
    .local v4, "h5Activity":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    move-object v4, v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 623
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v5, "tag"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "tag":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    .line 625
    .local v7, "index":I
    move v7, v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 627
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getId()Ljava/lang/String;

    move-result-object v5

    .line 628
    .local v5, "sessionId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v8

    .line 630
    .local v8, "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 631
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getTabFragmentByIndex(I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    move-result-object v9

    .line 633
    .local v9, "selectedFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->setCurrentIndex(I)V

    .line 634
    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->b:Lcom/alipay/mobile/nebula/view/H5TabbarLayout;

    invoke-virtual {v10, v7}, Lcom/alipay/mobile/nebula/view/H5TabbarLayout;->selectTab(I)V

    .line 635
    const-string v10, ", obj "

    if-eqz v9, :cond_1

    .line 637
    if-eqz v8, :cond_2

    .line 638
    invoke-virtual {v8, v9, v6, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->attachFragment(Landroidx/fragment/app/Fragment;ZZ)Z

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "reuse sub fragment index "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_1
    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->e:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 645
    .local v3, "startParams":Landroid/os/Bundle;
    move-object v3, v11

    const-string v12, "sessionId"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v11, "fragmentType"

    const-string v12, "subtab"

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-eqz v8, :cond_2

    .line 648
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(Landroid/os/Bundle;)Z

    move-result v11

    .line 649
    .local v11, "withAnim":Z
    invoke-virtual {v8, v3, v11, v6}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 650
    nop

    .line 651
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->peekFragment()Landroidx/fragment/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 652
    .local v6, "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->g:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v12

    .line 653
    invoke-virtual {v12, v7, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->addTabFragment(ILcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 654
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "add new sub fragment index "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", withAnim "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .end local v3    # "startParams":Landroid/os/Bundle;
    .end local v6    # "subFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v11    # "withAnim":Z
    :cond_2
    :goto_0
    invoke-direct {p0, v7, v8}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->a(ILcom/alipay/mobile/nebulacore/ui/H5FragmentManager;)V

    .line 660
    .end local v5    # "sessionId":Ljava/lang/String;
    .end local v8    # "h5FragmentManager":Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .end local v9    # "selectedFragment":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    return-void

    .line 661
    :cond_3
    const-string v3, "invalid tag name"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-interface {v5, p1, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_1

    .line 622
    .end local v2    # "tag":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_4
    move-object v3, p1

    move-object/from16 v5, p3

    .line 667
    :goto_1
    return-void
.end method
