.class public Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
.super Landroidx/fragment/app/Fragment;
.source "H5Fragment.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5BaseFragment;


# static fields
.field public static final fragmentType:Ljava/lang/String; = "fragmentType"

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/track/TrackId;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/track/TrackId;",
            ">;"
        }
    .end annotation
.end field

.field public static final normal:Ljava/lang/String; = "normal"

.field public static final subtab:Ljava/lang/String; = "subtab"


# instance fields
.field protected a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field protected b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/view/animation/Animation;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->l:Ljava/util/List;

    .line 172
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$3;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$3;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Z

    .line 64
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->f:Z

    .line 73
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->g:Z

    .line 75
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h:Z

    .line 77
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->i:Z

    .line 81
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->k:Z

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 4

    .line 139
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 140
    .local v1, "view":Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 141
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    const-string v0, "fragmentRootView"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setTag(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/nebula/R$color;->h5_transparent:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentRootView;->setBackgroundColor(I)V

    .line 147
    return-object v1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 572
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_ENTRY_ERROR:Ljava/lang/String;

    const/4 v2, 0x0

    .line 575
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 578
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 579
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 580
    .local v2, "eventName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 581
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v4, "showFavorites"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 582
    invoke-static {p1, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 583
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "hideFavorites"

    :goto_1
    move-object v2, v4

    .line 585
    goto :goto_2

    :cond_2
    const-string v4, "toolbarMenu"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 586
    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 588
    const-string v2, "setToolbarMenu"

    .line 589
    :cond_3
    goto :goto_2

    :cond_4
    const-string v4, "prefetchLocation"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 590
    invoke-static {p1, v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    .line 591
    if-eqz v4, :cond_5

    .line 592
    const-string v2, "prefetchLocation"

    .line 596
    :cond_5
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 597
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 599
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "eventName":Ljava/lang/String;
    .end local v3    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    goto :goto_0

    .line 600
    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h:Z

    return v0
.end method

.method private b()V
    .locals 9

    .line 293
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 294
    .local v2, "sessionId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    move-object v3, v1

    .line 296
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "workId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "workId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5Fragment"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "h5_detectWorkId"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "no"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 301
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v6, v1

    .line 302
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v6, v4

    const-string v7, "errorType"

    const-string v8, "workIdsNull"

    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const v4, -0x927c2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "errorCode"

    invoke-virtual {v6, v7, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v4

    .line 305
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v1, v4

    if-eqz v4, :cond_0

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "send page abnormal event : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v4, "h5PageAbnormal"

    invoke-interface {v1, v4, v6}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 313
    .end local v0    # "workId":Ljava/lang/String;
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v3    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c()V
    .locals 8

    .line 316
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->i:Z

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "H5Fragment"

    const-string v1, "hasPreRender not to postPreRenderRunnable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->i:Z

    .line 322
    nop

    .line 323
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isTinyApp"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 324
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 329
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$4;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 408
    .local v1, "preRunnable":Ljava/lang/Runnable;
    const/16 v2, 0xbb8

    .line 410
    .local v2, "time":I
    const/4 v3, 0x1

    .line 411
    .local v3, "useIdle":Z
    const-string v4, "h5_addIdleHandler"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    .line 413
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    const-string v4, "useIdle"

    invoke-static {v5, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 415
    const/16 v0, 0xbb8

    const-string v4, "time"

    invoke-static {v5, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 419
    :cond_2
    if-nez v3, :cond_3

    .line 420
    int-to-long v6, v2

    invoke-static {v1, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    return-void

    .line 423
    :cond_3
    move v0, v2

    .line 424
    .local v0, "finalTime":I
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;

    invoke-direct {v4, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$5;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;ILjava/lang/Runnable;)V

    int-to-long v6, v2

    invoke-static {v4, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 444
    .end local v0    # "finalTime":I
    return-void

    .line 325
    .end local v1    # "preRunnable":Ljava/lang/Runnable;
    .end local v2    # "time":I
    .end local v3    # "useIdle":Z
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b()V

    return-void
.end method

.method private static d()Z
    .locals 4

    .line 702
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 703
    move-object v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 704
    const-string v1, "h5_fragClearDisappearingChild"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "config":Ljava/lang/String;
    const-string v3, "NO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 708
    .end local v1    # "config":Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method public getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    return-object v0

    .line 676
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootViewHolder()Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    return-object v0
.end method

.method public isUseTranslateAnim()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->g:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttach "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->sServiceStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->sServiceStart:J

    .line 103
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 107
    sget v0, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_in_right:I

    if-ne v0, p3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    .local v1, "anim":Landroid/view/animation/Animation;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;

    invoke-direct {v2, p0, p3}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 128
    return-object v1

    .line 129
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_0
    sget v0, Lcom/alipay/mobile/nebula/R$anim;->h5_translate_out_left:I

    if-ne v0, p3, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 131
    .local v0, "anim":Landroid/view/animation/Animation;
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->j:Landroid/view/animation/Animation;

    .line 132
    return-object v0

    .line 134
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 181
    move-object v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreateView "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5Fragment"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "mp_h5_back_key_ignore_repeat_count"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "YES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->k:Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mp_h5_back_key_ignore_repeat_count: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->k:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;

    if-nez v0, :cond_e

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 188
    .local v0, "onCreateViewTime":Ljava/lang/Long;
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a()Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;

    .line 189
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string v4, "activity is finish"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v3

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 194
    .local v4, "params":Landroid/os/Bundle;
    const-string v5, "main"

    const-string v6, "H5Fragment.onCreateView()"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->getPreloadedViewHolder(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 199
    :cond_1
    iget-object v5, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-nez v5, :cond_2

    .line 200
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;-><init>(Landroid/app/Activity;)V

    .line 201
    .local v5, "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v6

    iput-object v6, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    goto :goto_0

    .line 199
    .end local v5    # "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
    :cond_2
    move-object v5, v3

    .line 205
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 206
    .local v5, "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    move-object v5, v6

    if-eqz v6, :cond_8

    .line 208
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_4

    .line 209
    sget-object v6, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v9, v7

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 210
    .local v11, "trackId":Lcom/alipay/mobile/nebulax/kernel/track/TrackId;
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    iget-object v12, v12, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->sceneParam:Landroid/os/Bundle;

    invoke-virtual {v11}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 211
    .local v9, "stubTime":J
    move-wide v9, v12

    cmp-long v14, v12, v7

    if-lez v14, :cond_3

    .line 214
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v12}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v12

    invoke-interface {v5, v12, v11, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 216
    nop

    .end local v9    # "stubTime":J
    .end local v11    # "trackId":Lcom/alipay/mobile/nebulax/kernel/track/TrackId;
    goto :goto_1

    .line 208
    :cond_4
    move-object v6, v3

    .line 219
    :cond_5
    if-eqz v4, :cond_7

    .line 220
    sget-object v6, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 221
    .local v9, "trackId":Lcom/alipay/mobile/nebulax/kernel/track/TrackId;
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-lez v12, :cond_6

    .line 222
    iget-object v10, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v10

    .line 223
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 222
    invoke-interface {v5, v10, v9, v11, v12}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->cost(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 225
    .end local v9    # "trackId":Lcom/alipay/mobile/nebulax/kernel/track/TrackId;
    :cond_6
    goto :goto_2

    .line 228
    :cond_7
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    sget-object v8, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_FragmentOnCreateView:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 228
    invoke-interface {v5, v7, v8, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    goto :goto_3

    .line 206
    :cond_8
    move-object v6, v3

    .line 232
    :goto_3
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->parseNoAlphaColor(Landroid/os/Bundle;)V

    .line 233
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setRootView(Landroid/view/ViewGroup;)V

    .line 234
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5Fragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V

    .line 235
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setRootView(Landroid/view/View;)V

    .line 236
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V

    .line 237
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a(Landroid/os/Bundle;)V

    .line 238
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v7

    iput-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 240
    if-nez v7, :cond_9

    .line 241
    return-object v3

    .line 245
    :cond_9
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isShowTransAnimate(Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 246
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v7

    const-string v8, "backgroundColor"

    .line 247
    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v8

    .line 246
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 250
    :cond_a
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->transparentBackground(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 251
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/alipay/mobile/h5container/api/H5PageData;->walletServiceStart:J

    .line 254
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->refreshView()V

    .line 256
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 257
    iget-object v7, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 258
    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getTitleBarReadyCallBack()Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;

    move-result-object v7

    .line 259
    .local v6, "h5TitleBarReadyCallback":Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;
    move-object v6, v7

    if-eqz v7, :cond_c

    .line 260
    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;->onCreate()V

    .line 263
    .end local v6    # "h5TitleBarReadyCallback":Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;
    :cond_c
    if-eqz v5, :cond_d

    .line 264
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_FragmentOnCreateViewFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 264
    invoke-interface {v5, v6, v7, v8, v9}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 268
    .end local v0    # "onCreateViewTime":Ljava/lang/Long;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "eventTrackerProvider":Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;
    :cond_d
    goto :goto_4

    .line 270
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    move-object v4, v3

    .line 271
    .local v4, "animation":Landroid/view/animation/Animation;
    move-object v4, v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->j:Landroid/view/animation/Animation;

    if-ne v4, v0, :cond_f

    .line 272
    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 273
    const-string v0, "h5Fragment onCreateView clearDisappearingChildren!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->clearDisappearingChildren()V

    .line 277
    :cond_f
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v5, v3

    .line 278
    .local v5, "parent":Landroid/view/ViewParent;
    move-object v5, v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 279
    move-object v0, v5

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 283
    .end local v4    # "animation":Landroid/view/animation/Animation;
    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_10
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    .end local v0    # "e":Ljava/lang/Throwable;
    return-object v3
.end method

.method public onDestroy()V
    .locals 4

    .line 635
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 636
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Z

    if-nez v0, :cond_0

    .line 637
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Z

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5Fragment"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 643
    .local v3, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object v3, v1

    if-eqz v1, :cond_1

    .line 644
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 647
    :cond_1
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c:Landroid/view/View;

    .line 648
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 649
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 650
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroyView "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->j:Landroid/view/animation/Animation;

    .line 656
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 657
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDetach "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "intent"    # Landroid/view/KeyEvent;

    .line 605
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->k:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "backEvent":Z
    :goto_0
    goto :goto_1

    .line 608
    .end local v0    # "backEvent":Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 609
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 611
    .restart local v0    # "backEvent":Z
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v1, :cond_4

    .line 612
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebChromeClient()Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 615
    .local v4, "h5WebChromeClient":Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    move-object v4, v1

    const-string v5, "H5Fragment"

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_3

    .line 617
    :try_start_0
    iget-object v1, v4, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->mCustomViewCallback:Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 622
    :cond_3
    const-string v1, "onKeyDown H5_PAGE_PHYSICAL_BACK"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    const-string v5, "h5PagePhysicalBack"

    invoke-virtual {v1, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 626
    :goto_3
    return v2

    .line 628
    .end local v4    # "h5WebChromeClient":Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    :cond_4
    return v3
.end method

.method public onPageFinish()V
    .locals 2

    .line 693
    const-string v0, "H5Fragment"

    const-string v1, "onPageFinish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->c()V

    .line 695
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 473
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->f:Z

    .line 476
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 453
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResume "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getWebDriverHelper()Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5WebDriverHelper;->onWebViewCreated(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    move-object v2, v0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v2

    .line 458
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    .line 462
    .local v2, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    move-object v2, v1

    .line 463
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "fullscreen"

    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 465
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->f:Z

    if-nez v1, :cond_0

    .line 466
    const-string v1, "h5PageResume"

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 469
    .end local v2    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 663
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 480
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->f:Z

    .line 483
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_0

    .line 485
    :try_start_0
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    goto :goto_0

    .line 486
    :catchall_0
    move-exception v2

    .line 487
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "webview onResume exception."

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 491
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    move-object v2, v3

    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Z

    if-nez v1, :cond_1

    .line 492
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->e:Z

    goto :goto_2

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    move-object v1, v2

    .line 496
    .local v1, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    const-string v2, "h5PageResume"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 499
    .end local v1    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setTabbarVisible()V

    .line 500
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 552
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 557
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    .line 559
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "webview onPause exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 565
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isPrerender"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 566
    const/4 v1, 0x0

    const-string v2, "h5PagePause"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 569
    .end local v0    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_1
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onViewStateRestored "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Fragment"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 669
    return-void
.end method

.method public setShouldResumeWebView(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 698
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->h:Z

    .line 699
    return-void
.end method

.method public setTabbarVisible()V
    .locals 14

    .line 503
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isPrerender"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 504
    .local v0, "isPrerender":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    .line 505
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 506
    .local v5, "currentSession":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v5, v3

    if-eqz v3, :cond_6

    .line 507
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Stack;

    .line 509
    .local v3, "clonePages":Ljava/util/Stack;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->a:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v6

    move-object v7, v4

    .line 510
    .local v7, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v7, v6

    if-eqz v6, :cond_6

    .line 511
    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    .line 512
    const-string v8, "fragmentType"

    const-string v9, "normal"

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    const-string v10, "subtab"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v11, "H5Fragment"

    if-eqz v6, :cond_4

    .line 518
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v12, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 521
    .local v4, "item":Lcom/alipay/mobile/h5container/api/H5Page;
    move-object v4, v13

    if-eqz v13, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 524
    :cond_1
    if-eqz v4, :cond_2

    .line 525
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v13

    .line 526
    .local v12, "params":Landroid/os/Bundle;
    move-object v12, v13

    invoke-static {v13, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 528
    invoke-static {v13, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 531
    nop

    .line 532
    invoke-static {v12, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_2

    .line 533
    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 537
    .end local v4    # "item":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v12    # "params":Landroid/os/Bundle;
    :cond_2
    goto :goto_0

    .line 538
    :cond_3
    const-string v1, "switchTab VISIBLE"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isTabContainerVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 541
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getSessionTabContainer()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 543
    :cond_5
    const-string v1, "switchTab GONE"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v3    # "clonePages":Ljava/util/Stack;
    .end local v5    # "currentSession":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v7    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_6
    return-void
.end method

.method public setUseTranslateAnim(Z)V
    .locals 0
    .param p1, "use"    # Z

    .line 684
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->g:Z

    .line 685
    return-void
.end method
