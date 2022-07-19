.class public Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.super Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.source "H5Activity.java"

# interfaces
.implements Lcom/alipay/mobile/monitor/track/TrackPageConfig;
.implements Lcom/alipay/mobile/nebula/activity/INebulaActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity5;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity4;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity3;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity2;,
        Lcom/alipay/mobile/nebulacore/ui/H5Activity$H5Activity1;
    }
.end annotation


# static fields
.field public static final FILE_CHOOSER_REQUEST_CODE:I = 0x1

.field public static mspJsApiPayFinishTime:J


# instance fields
.field public TAG:Ljava/lang/String;

.field protected a:Landroid/os/Bundle;

.field b:Z

.field private c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

.field private i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

.field private j:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

.field private k:Z

.field private l:Z

.field private m:Z

.field public mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

.field private n:Z

.field private o:Z

.field private p:Landroid/widget/RelativeLayout;

.field private q:Z

.field private r:Z

.field private s:Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

.field public sceneParam:Landroid/os/Bundle;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 144
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;-><init>()V

    .line 94
    const-string v0, "H5Activity"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 104
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->f:Z

    .line 108
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->k:Z

    .line 120
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->l:Z

    .line 122
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->m:Z

    .line 124
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->n:Z

    .line 126
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->o:Z

    .line 130
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->q:Z

    .line 132
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->r:Z

    .line 134
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->s:Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

    .line 137
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b:Z

    .line 140
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->t:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    .line 1109
    const-string v0, "h5_preRenderInSysWebView"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->t:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "param"    # Landroid/os/Bundle;

    .line 303
    if-eqz p0, :cond_0

    const-string v0, "nebulaAuthCodeKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5BizProvider;

    const/4 v2, 0x0

    .line 305
    .local v2, "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 306
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5BizProvider;->cancelBizTimeoutCheck(Ljava/lang/String;)V

    .line 309
    .end local v2    # "bizProvider":Lcom/alipay/mobile/nebula/provider/H5BizProvider;
    :cond_0
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .line 939
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    return-void

    .line 942
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->k:Z

    if-eqz v0, :cond_1

    .line 943
    return-void

    .line 945
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->k:Z

    .line 946
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$13;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 971
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "from"    # Ljava/lang/String;

    .line 1059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b:Z

    .line 1060
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1061
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appPause from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v0, "appPause"

    .line 1064
    .local v0, "appPause":Ljava/lang/String;
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v3

    invoke-interface {v3, v0, v1, v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1065
    .end local v0    # "appPause":Ljava/lang/String;
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "h5page==null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 717
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getHomePage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "homePage":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v2, "do relaunch in nebula"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    const/4 v2, 0x1

    .line 727
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 719
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 720
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->getContent()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 721
    const-string v4, "enableTabBar"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "YES"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 722
    :goto_0
    const/4 v1, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 723
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->getCurrentIndex()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "relaunch with pushWindow"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v4, v1

    .line 732
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v2, "launchParamsTag"

    invoke-virtual {v4, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 735
    .local v1, "paramObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v2

    const-string v5, "closeAllWindow"

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v2, "fromRelaunch"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v2, "param"

    invoke-virtual {v4, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v2, "pushWindow"

    invoke-interface {p2, v2, v4}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 740
    .end local v1    # "paramObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 724
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "relaunch with tabbar"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 726
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v2

    const-string v4, "tag"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v2, "recreate"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v2, "switchTab"

    invoke-interface {p2, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 729
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "showTransAnimate"    # Z

    .line 443
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 446
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .local v1, "mainLayout":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " showTransAnimate : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "h5_open_transparent_bg"

    const-string v3, "no"

    if-eqz p1, :cond_0

    .line 449
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 450
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 452
    :cond_0
    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 455
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 456
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->j:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    .line 457
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->show()V

    .line 458
    if-eqz p1, :cond_1

    .line 459
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->j:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 468
    :cond_1
    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p2, "x2"    # Ljava/lang/ref/WeakReference;

    .line 92
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 386
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 387
    .local v0, "container":Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 388
    .local v2, "whiteBg":Landroid/view/View;
    move-object v2, v1

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 394
    return-void
.end method

.method private declared-synchronized b(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 317
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->f:Z

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 322
    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_LoadingStart:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 325
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    :cond_1
    const-string v1, "NebulaWalletAppName"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "title":Ljava/lang/String;
    const-string v2, "NebulaWalletAppIcon"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "icon":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "show loading view."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    .line 330
    if-eqz v3, :cond_2

    .line 331
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "got H5LoadingViewProvider: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    .line 335
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    if-nez v3, :cond_3

    .line 336
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "loadingView == null, use nebula LoadingView"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v3, Lcom/alipay/mobile/h5container/api/H5LoadingView;

    invoke-direct {v3}, Lcom/alipay/mobile/h5container/api/H5LoadingView;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    .line 338
    invoke-interface {v3, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    .line 341
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    .line 342
    .local v3, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 343
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v4, v1}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->setTitle(Ljava/lang/String;)V

    .line 345
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 346
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->setIcon(Ljava/lang/String;)V

    .line 349
    :cond_5
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 350
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isConfigSupport()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v0, v4, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 352
    const/high16 v0, 0x33000000

    .line 353
    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V

    .line 356
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b()V

    .line 358
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showFrameworkLoadingView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 361
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b()V

    .line 362
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 365
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    monitor-exit p0

    return-void

    .line 315
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "icon":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    .end local p1    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Activity;Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "h5Activity"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p2, "topActivityRef"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/ui/H5Activity;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .line 1345
    const/4 v0, 0x0

    .line 1347
    .local v0, "isTranslucent":Z
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1349
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    move-object p2, v1

    .line 1351
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1352
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    .line 1353
    .local v2, "topActivity":Landroid/app/Activity;
    move-object v2, v1

    if-eqz v1, :cond_2

    if-eq v2, p1, :cond_2

    .line 1354
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1355
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1359
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 1364
    .end local v2    # "topActivity":Landroid/app/Activity;
    :cond_2
    goto :goto_0

    .line 1362
    :catchall_0
    move-exception v1

    .line 1363
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "isTopActivityTranslucent Exception : "

    invoke-static {p0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1366
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isTopActivityTranslucent isTranslucent  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    return v0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 4

    .line 568
    const-string v0, "main"

    const-string v1, "package_prepare"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Activity.onPageParamReady()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent([Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 570
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ActivityOnPageParamReady:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "onPageParamReady"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 575
    const-string v0, "isTinyApp"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    const-class p1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 577
    if-eqz p1, :cond_1

    .line 578
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-interface {p1, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerStartParamsReady(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 581
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 582
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a()V

    return-void

    .line 584
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i()V

    .line 585
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e()I

    move-result p1

    .line 586
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v2, "firstInitAndroidWebview"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 589
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v0, "FIRST_INIT_USE_ANDROID_WEBVIEW"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a()V

    return-void

    .line 592
    :cond_3
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$5;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 607
    const-string p1, "NORMAL"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$6;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 632
    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->j()V

    return-void
.end method

.method private static c()Z
    .locals 4

    .line 428
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getLoadingPageManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 430
    return v1

    .line 432
    :cond_0
    const-string v0, "h5_enableNebulaAppLoadingView"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    .line 433
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    const-string v0, "framework"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "enable":Ljava/lang/String;
    const-string v3, "no"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    return v1

    .line 439
    .end local v0    # "enable":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method private d()V
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 529
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$4;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 543
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->m()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 544
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 546
    return-void

    .line 548
    :cond_1
    const-string v0, "landscape"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    .line 550
    .local v4, "landscape":Ljava/lang/String;
    move-object v4, v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 554
    :cond_2
    const-string v0, "auto"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 555
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 556
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setRequestedOrientation(I)V

    .line 559
    :cond_3
    :goto_0
    const-string v0, "asyncIndex"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v1, "asyncIndex":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->retrievePageParam(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;)V

    return-void

    .line 563
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;->onPageParam(Landroid/os/Bundle;)V

    .line 565
    return-void

    .line 527
    .end local v1    # "asyncIndex":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "landscape":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void
.end method

.method private e()I
    .locals 6

    .line 635
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    const/4 v0, -0x1

    return v0

    .line 639
    :cond_0
    const v0, 0xafc8

    .line 641
    .local v0, "time":I
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 642
    .local v3, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 643
    nop

    .line 644
    const-string v1, "h5WaitUCConfig"

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 645
    .local v2, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 646
    const/16 v1, 0x2ee0

    const-string v4, "waitTime"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTimeout from configservice "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .end local v2    # "configObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getTimeout final "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->l()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->k()V

    return-void
.end method

.method private f()Z
    .locals 1

    .line 655
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getRunningActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private g()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 3

    .line 743
    const/4 v0, 0x0

    .line 744
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    goto :goto_0

    .line 747
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v2, "h5Session==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_0
    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 92
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 792
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 793
    return-void

    .line 795
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$8;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 811
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 812
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "mspJsApiPayFinish"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 814
    return-void
.end method

.method private i()V
    .locals 3

    .line 817
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 818
    return-void

    .line 820
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$9;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    .line 844
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 845
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "h5_action_uc_init_finish"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 847
    return-void
.end method

.method private j()V
    .locals 1

    .line 919
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    return-void

    .line 923
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$12;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 936
    return-void
.end method

.method private k()V
    .locals 3

    .line 974
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "showSessionTabErrorToast"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 976
    nop

    .line 977
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_sessiontab_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 976
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v1, "H5_AL_TABBAR_ERROR"

    const-string v2, "H5-EM"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5Logger;->reportTabBarLog(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method private l()V
    .locals 10

    .line 985
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "showSessionTabErrorDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "configStr":Ljava/lang/String;
    const-string v1, "YES"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 989
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    const/4 v2, 0x0

    .line 990
    .local v2, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 991
    nop

    .line 992
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_sessiontab_notice_failtitle:I

    .line 993
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 994
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_sessiontab_notice_failmsg:I

    .line 995
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 996
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    .line 997
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 991
    move-object v3, v2

    move-object v4, p0

    invoke-interface/range {v3 .. v9}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 998
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$14;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 1014
    if-eqz v1, :cond_0

    .line 1015
    new-instance v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity$15;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$15;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1026
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 1029
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v2, "H5_AL_TABBAR_WARN"

    const-string v3, "H5-VM"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/log/H5Logger;->reportTabBarLog(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method private m()Landroid/os/Bundle;
    .locals 6

    .line 1266
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->q:Z

    if-eqz v0, :cond_2

    .line 1267
    const-string v0, "h5_isOnSavedInstanceInTinyProcess"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1268
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->v:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIntentParam  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->v:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->v:Landroid/os/Bundle;

    return-object v0

    .line 1272
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 1273
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 1274
    .local v1, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getIntentParam "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    if-eqz v1, :cond_1

    .line 1276
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1277
    .local v3, "appId":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1278
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/H5IntentUtil;->removeParam(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->v:Landroid/os/Bundle;

    .line 1279
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getIntentParam appId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->v:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->v:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1281
    return-object v2

    .line 1287
    .end local v3    # "appId":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 1288
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1292
    .end local v1    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 8

    .line 850
    const-string v0, "uc_init"

    const-string v1, "main"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Activity.initPageContent()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent([Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ActivityInitPageContent:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ActivityInitPageContent:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "initPageContent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    if-nez v0, :cond_4

    .line 860
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .line 862
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->hideLoadingView()V

    .line 864
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v1, "enableTabBar"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "enableTabBar":Ljava/lang/String;
    const-string v1, "YES"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "appId"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 866
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 867
    const-string v5, "tabBarJson"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    .line 868
    .local v5, "tabBarJsonUrl":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 869
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$10;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 885
    invoke-static {v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 869
    invoke-static {v5, v1, v6}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    new-instance v6, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$11;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 903
    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 887
    invoke-static {v1, v6, v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOfflineData(Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V

    .line 905
    .end local v5    # "tabBarJsonUrl":Ljava/lang/String;
    goto :goto_0

    .line 906
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v5, v4, v4}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->addFragment(Landroid/os/Bundle;ZZ)V

    .line 909
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v5, "isH5app"

    invoke-static {v1, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 910
    .local v1, "isH5App":Z
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v2, "appId":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 912
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->checkOffline(Landroid/app/Activity;Ljava/lang/String;)V

    .line 915
    .end local v0    # "enableTabBar":Ljava/lang/String;
    .end local v1    # "isH5App":Z
    .end local v2    # "appId":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public canUsePreRender()Z
    .locals 3

    .line 1120
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->u:Z

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v2, "canUsePreRender disable by system webview"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return v1

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 1125
    const-string v2, "isTinyApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1126
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->l:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1238
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1239
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->isIntercept()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1241
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 7

    .line 1169
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "appId":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->r:Z

    const-string v2, "exitAppPair"

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 1171
    const-string v3, "onlyOptionMenu"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "yes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    .line 1172
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTiny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 1188
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v2, "endAnimation"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noAnimation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1189
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 1190
    invoke-virtual {p0, v2, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->overridePendingTransition(II)V

    .line 1191
    return-void

    .line 1193
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const-string v3, "closeAllActivityAnimation"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1194
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 1195
    return-void

    .line 1197
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    const/4 v3, 0x1

    const-string v4, "nebula_showActivityFinishAnimation"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "finish:"

    if-nez v1, :cond_4

    .line 1198
    const-string v1, "h5_showActivityFinishAnimation"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "value":Ljava/lang/String;
    const-string v4, "no"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1200
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1201
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    .line 1202
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity$16;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$16;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    const-wide/16 v5, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1213
    .end local v3    # "handler":Landroid/os/Handler;
    return-void

    .line 1214
    :cond_3
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 1215
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    return-void

    .line 1220
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 1221
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1223
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFadingFinish()V

    return-void

    .line 1224
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->presentWithAnimation(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1225
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v2, "setActivityPresentFinish finish"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityPresentFinish()V

    return-void

    .line 1228
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityFinish(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1230
    return-void

    .line 1175
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v3, "finish needAnimInTiny true"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->finish()V

    .line 1177
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    .line 1178
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1181
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1182
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tiny_fading_in"

    const-string v4, "anim"

    invoke-static {v1, v3, v4, v2}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1183
    .local v1, "animIn":I
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1184
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "tiny_push_down_out"

    invoke-static {v2, v5, v4, v3}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1185
    .local v2, "animOut":I
    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->overridePendingTransition(II)V

    .line 1186
    return-void
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUri()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->c:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    return-object v0
.end method

.method public getH5Session()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    return-object v0
.end method

.method public getPageSpmId()Ljava/lang/String;
    .locals 1

    .line 1249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionTabContainer()Landroid/view/View;
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->p:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1098
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontab_stub:I

    .line 1099
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const/4 v1, 0x0

    .line 1100
    .local v1, "tabStub":Landroid/view/ViewStub;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->p:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 1103
    :cond_0
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontabcontainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->p:Landroid/widget/RelativeLayout;

    .line 1106
    .end local v1    # "tabStub":Landroid/view/ViewStub;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public hideLoadingView()V
    .locals 5

    .line 1033
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "hide loading view"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h:Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1035
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;->stopLoading(Landroid/app/Activity;)V

    .line 1036
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_fragment:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v1

    .line 1037
    .local v2, "rootView":Landroid/view/ViewGroup;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1040
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    .line 1043
    .end local v2    # "rootView":Landroid/view/ViewGroup;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1044
    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_LoadingEnd:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1047
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->stopLoading()Z

    .line 1049
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->j:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-eqz v0, :cond_3

    .line 1050
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->dismiss()V

    .line 1051
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->j:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    .line 1053
    :cond_3
    return-void
.end method

.method public isBetweenResumePause()Z
    .locals 1

    .line 1134
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->m:Z

    return v0
.end method

.method public isTabContainerVisible()Z
    .locals 3

    .line 1088
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontab_stub:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1089
    return v1

    .line 1091
    :cond_0
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_sessiontabcontainer:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    .line 1092
    .local v2, "container":Landroid/view/View;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isTrackPage()Z
    .locals 1

    .line 1259
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->sendResult(IILandroid/content/Intent;)V

    .line 151
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 371
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->isFoldingScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->resetScreenWidthHeight(Landroid/content/Context;)V

    .line 375
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 376
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED_NEBULA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 377
    .local v2, "intent":Landroid/content/Intent;
    move-object v2, v1

    const-string v3, "config"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 380
    .end local v0    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 157
    const-string v0, "main"

    const-string v1, "H5Activity.onCreate()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getSceneParams()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ActivityOnCreate:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->onH5ActivityCreated(Landroid/app/Activity;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with savedInstanceState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    .line 178
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 184
    const-string v1, "savedInstanceStateKey"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "h5_savedInstanceState"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " savedInstanceState "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isInTinyProcess"

    invoke-virtual {p1, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 188
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->q:Z

    .line 191
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "not handler savedInstanceState in isInTinyProcess"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 195
    return-void

    .line 200
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->m()Landroid/os/Bundle;

    move-result-object p1

    .line 201
    if-nez p1, :cond_4

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 203
    return-void

    .line 205
    :cond_4
    nop

    .line 207
    const-string v1, "snapshot"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "fullscreen"

    invoke-static {p1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    goto :goto_2

    .line 210
    :catch_0
    move-exception v3

    .line 211
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 213
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "no"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 214
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "snapshot "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x2000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 219
    :cond_5
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->requestWindowFeature(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    goto :goto_3

    .line 220
    :catchall_1
    move-exception v1

    .line 221
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    :goto_3
    if-eqz v3, :cond_6

    .line 225
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x400

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 229
    :cond_6
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 231
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "h5_activity "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_activity:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->setContentView(I)V

    .line 235
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "needAnimInTiny"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "create needAnimInTiny true"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->r:Z

    .line 238
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 239
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tiny_push_up_in"

    const-string v6, "anim"

    invoke-static {v1, v5, v6, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 241
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "tiny_fading_out"

    invoke-static {v4, v7, v6, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 242
    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->overridePendingTransition(II)V

    .line 245
    :cond_7
    const-string v1, "showLoadingView"

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 246
    if-nez v1, :cond_8

    if-nez v3, :cond_8

    .line 248
    :try_start_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b(Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 251
    goto :goto_4

    .line 249
    :catchall_2
    move-exception v4

    .line 250
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->notNeedInitUc(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 256
    if-nez v1, :cond_9

    if-eqz v3, :cond_c

    .line 257
    :cond_9
    if-nez v1, :cond_b

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_5
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Z)V

    .line 260
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v0, :cond_d

    .line 261
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->i:Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 263
    :cond_d
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0, p0}, Lcom/alipay/mobile/nebulacore/Nebula;->initInfo(Ljava/lang/String;Landroid/app/Activity;)V

    .line 266
    :try_start_4
    invoke-static {p0, v0, p1, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->setWindowSoftInputMode(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 269
    goto :goto_6

    .line 267
    :catch_1
    move-exception v0

    .line 268
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    :goto_6
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getChInfo(Landroid/content/Intent;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->t:Ljava/lang/String;

    .line 274
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Landroid/os/Bundle;)V

    .line 276
    nop

    .line 277
    const-string p1, "h5_enableAppPauseWhenTranslucent"

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    const-string v0, "NO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 280
    new-instance p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->s:Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

    .line 281
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->s:Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 285
    :cond_e
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of p1, p1, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_f

    .line 286
    const-string p1, "NORMAL"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 297
    :cond_f
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    if-eqz p1, :cond_10

    .line 298
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ActivityOnCreateFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 300
    :cond_10
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 474
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->canUsePreRender()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    move-result-object v1

    move-object v2, v0

    .line 476
    .local v2, "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->release()V

    .line 478
    .end local v2    # "h5PreRenderPool":Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onDestroy()V

    .line 479
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 481
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d:Landroid/content/BroadcastReceiver;

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 485
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mspJsApiPayFinishTime:J

    .line 489
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g:Landroid/view/View;

    .line 490
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->e:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 491
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->hasManagerInstance()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    invoke-static {}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->getInstance()Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/ManagerToastLikeDialog;->cancelAllToastLikeDialogs()V

    .line 495
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->s:Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

    if-eqz v1, :cond_4

    .line 496
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 497
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->s:Lcom/alipay/mobile/nebulacore/ui/H5Activity$ActivityLifecycleCallback;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 500
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDestroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    return-void

    .line 501
    :catchall_0
    move-exception v1

    .line 502
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v3, "destroy exception."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    const-string v2, "H5_DESTROY_EXCEPTION"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 504
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 503
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 507
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "intent"    # Landroid/view/KeyEvent;

    .line 1139
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 1140
    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v1, v0

    if-eqz v0, :cond_0

    instance-of v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v0, :cond_0

    .line 1141
    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1143
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .line 667
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 670
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 671
    .local v2, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v2, v0

    if-eqz v0, :cond_4

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->o:Z

    .line 675
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v3, v3, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    if-eqz v3, :cond_0

    .line 676
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v3, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->takeLastRestartParam()Landroid/os/Bundle;

    .line 679
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 680
    .local v9, "appId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 682
    .local v3, "needClientRelaunch":Z
    if-nez p1, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    move-object v10, v4

    .line 683
    .local v10, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "chInfoMutable"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->getRawChInfo(Landroid/os/Bundle;Lcom/alipay/mobile/framework/app/MicroApplication;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v5

    invoke-static {v9, p1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5KeepAliveUtil;->needRelaunchInNebula(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/alipay/mobile/framework/app/MicroApplication;)Z

    move-result v4

    move v3, v4

    move v11, v3

    goto :goto_1

    .line 683
    :cond_2
    move v11, v3

    .line 689
    .end local v3    # "needClientRelaunch":Z
    .local v11, "needClientRelaunch":Z
    :goto_1
    if-eqz v11, :cond_3

    if-eqz v10, :cond_3

    .line 690
    const-string v3, "shouldNotReLaunch"

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 693
    :cond_3
    move v5, v11

    .line 694
    .local v5, "finalNeedClientRelaunch":Z
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p1

    move-object v7, v9

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$7;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;ZLandroid/content/Intent;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-static {v2, v10, v0}, Lcom/alipay/mobile/nebulacore/Nebula;->sendAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 705
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v3, "appResume form onNewIntent"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 707
    const-string v0, "keepAlivePagePerformance"

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    .end local v2    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v5    # "finalNeedClientRelaunch":Z
    .end local v9    # "appId":Ljava/lang/String;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v11    # "needClientRelaunch":Z
    :cond_4
    return-void

    .line 710
    :catchall_0
    move-exception v0

    .line 711
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 1073
    :try_start_0
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onPause()V

    .line 1074
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->m:Z

    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->b:Z

    .line 1076
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const-string v1, "h5SessionPause"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :cond_0
    return-void

    .line 1081
    :catchall_0
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1085
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1372
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1373
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5Session()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1374
    .local v2, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 1375
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v0

    .line 1376
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1377
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v3

    .line 1378
    .local v1, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 1379
    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 1381
    .end local v1    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    goto :goto_0

    .line 1383
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 755
    :try_start_0
    const-string v0, "main"

    const-string v1, "H5Activity.onResume()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 758
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ActivityOnResume:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 761
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onResume()V

    .line 762
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->m:Z

    .line 764
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->d()V

    .line 765
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->h()V

    .line 766
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 767
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->o:Z

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v3, "hasSendResumeFromOnNewIntent"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->o:Z

    goto :goto_1

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    move-object v3, v2

    .line 772
    .local v3, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v3, v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 773
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "appResume form onResume"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5Application;->takeLastRestartParam()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 775
    .local v0, "param":Landroid/os/Bundle;
    :goto_0
    invoke-static {v3, v0, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->sendAppResume(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 776
    .end local v0    # "param":Landroid/os/Bundle;
    goto :goto_1

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v4, "h5page==null"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .end local v3    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_4
    :goto_1
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->n:Z

    .line 783
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 784
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->g()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    const-string v1, "h5SessionResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_5
    return-void

    .line 786
    :catchall_0
    move-exception v0

    .line 787
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 789
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :try_start_0
    const-string v0, "savedInstanceStateKey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    .line 1161
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1165
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 512
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onStart()V

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 518
    invoke-super {p0}, Lcom/alipay/mobile/nebula/activity/H5BaseActivity;->onStop()V

    .line 519
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public openPreRenderByPlugin(Z)V
    .locals 0
    .param p1, "openPreRenderByPlugin"    # Z

    .line 1130
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->l:Z

    .line 1131
    return-void
.end method

.method public showFrameworkLoadingView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show framework loading view."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    instance-of v0, p1, Lcom/alipay/mobile/framework/loading/LoadingView;

    if-eqz v0, :cond_0

    .line 399
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addLoadingView(Lcom/alipay/mobile/framework/loading/LoadingView;)V

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 404
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity$2;

    invoke-direct {v1, p0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 420
    .local v2, "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    move-object v2, v1

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->addLoadingView(Lcom/alipay/mobile/framework/loading/LoadingView;)V

    .line 424
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "loadingView":Lcom/alipay/mobile/framework/loading/LoadingView;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startLoading()Z

    .line 425
    return-void
.end method
