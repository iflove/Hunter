.class public Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;
    }
.end annotation


# static fields
.field public static final SHOW_SOFT_INPUT:Ljava/lang/String; = "showSoftInput"

.field public static final TAG:Ljava/lang/String; = "H5PagePlugin"

.field public static final TOGGLE_SOFT_INPUT:Ljava/lang/String; = "toggleSoftInput"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private c:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private d:I

.field private e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 86
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 87
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 88
    sget v0, Lcom/alipay/mobile/nebulacore/api/PageStatus;->NONE:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:I

    .line 89
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    .line 90
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backBehavior"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "behavior":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method private a()V
    .locals 10

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 565
    .local v0, "time":J
    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:I

    sget v3, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iget-boolean v2, v2, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 569
    .local v2, "sendIntent":Z
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iget-wide v6, v3, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1f4

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 570
    .local v3, "enoughElapse":Z
    :goto_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 572
    .local v4, "ignoreBridge":Z
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 573
    .local v5, "haveKeptAlive":Z
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v7, "H5PagePlugin"

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isTinyApp()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_7

    .line 574
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 575
    .local v6, "activity":Landroid/app/Activity;
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/app/Activity;)Z

    move-result v8

    .line 576
    if-eqz v8, :cond_7

    .line 578
    iget v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    sget v9, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    if-ne v8, v9, :cond_4

    .line 579
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v5

    goto :goto_4

    .line 581
    :cond_4
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    .line 585
    :cond_5
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v8

    .line 586
    invoke-interface {v8}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v8

    .line 587
    if-gtz v8, :cond_7

    .line 588
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v5

    goto :goto_4

    .line 582
    :cond_6
    :goto_3
    const-string v8, "webview can\'t go back and do exit!"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v5

    .line 596
    .end local v6    # "activity":Landroid/app/Activity;
    :cond_7
    :goto_4
    if-eqz v5, :cond_8

    .line 597
    return-void

    .line 600
    :cond_8
    if-nez v4, :cond_9

    .line 601
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(J)V

    return-void

    .line 603
    :cond_9
    const-string v6, "ignore bridge, perform back!"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b()V

    .line 606
    return-void
.end method

.method private a(J)V
    .locals 4
    .param p1, "time"    # J

    .line 711
    const-string v0, "H5PagePlugin"

    const-string v1, "send back event to bridge!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z

    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    iput-wide p1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->lastBack:J

    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c()V

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    const-string v3, "back"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 720
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V
    .locals 0
    .param p0, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "e"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 486
    if-eqz p0, :cond_0

    .line 487
    invoke-interface {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p1, "obj"    # Lcom/alibaba/fastjson/JSONObject;

    .line 492
    if-eqz p0, :cond_0

    .line 493
    invoke-interface {p0, p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 495
    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 609
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 610
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "url"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 611
    .local v4, "url":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "H5PagePlugin"

    const-string v1, "h5_url_isnull"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->getBugmeViewId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v3, "loadUrl"

    invoke-static {v3, v0, v5}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5BugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setWebViewDebugging(Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 619
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerLoadUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 622
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 624
    .local v1, "startParams":Landroid/os/Bundle;
    move-object v1, v0

    const-string v3, "openUrlMethod"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    const-string v5, "POST"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    const-string v0, "openUrlPostParams"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "postParams":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 628
    const-string v6, "GET"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->postUrl(Ljava/lang/String;[B)V

    .line 632
    return-void

    .line 636
    .end local v1    # "startParams":Landroid/os/Bundle;
    .end local v5    # "postParams":Ljava/lang/String;
    :cond_2
    const-string v0, "Referer"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 637
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 638
    .local v1, "additionalHeaders":Ljava/util/Map;
    move-object v1, v3

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v4, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 640
    .end local v1    # "additionalHeaders":Ljava/util/Map;
    return-void

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 453
    const-string v0, "page is null"

    invoke-static {p2, v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 454
    return-void

    .line 457
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 458
    .local v3, "startParams":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 463
    :cond_1
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/Nebula;->removeKeysFromStartParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 465
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v1, v2

    .line 466
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v4, "key"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    invoke-static {p2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 469
    :cond_2
    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 470
    .local v2, "keys":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 471
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 472
    .local v0, "resultObj":Lcom/alibaba/fastjson/JSONObject;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 473
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 475
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getValue(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v5    # "key":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 478
    .end local v4    # "i":I
    :cond_4
    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alibaba/fastjson/JSONObject;)V

    .line 479
    .end local v0    # "resultObj":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 480
    :cond_5
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result v0

    const-string v4, "\u65e0\u6548\u7684api\u5165\u53c2"

    invoke-static {p2, v0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 483
    .end local v2    # "keys":Lcom/alibaba/fastjson/JSONArray;
    return-void

    .line 459
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :goto_1
    const-string v0, "params is null"

    invoke-static {p2, v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    .line 460
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "behavior"    # Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setBackBehavior "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PagePlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "pop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget v0, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    return-void

    .line 162
    :cond_0
    sget v0, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    .line 164
    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "exitTabScene"    # Z

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_3

    .line 544
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    .line 547
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "h5page close, setRefer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PagePlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_1
    if-eqz p1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitTabPage()Z

    goto :goto_0

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    .line 556
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/h5container/api/H5PageLoader;->isPageClose:Z

    .line 558
    :cond_3
    return-void
.end method

.method private b()V
    .locals 5

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "perform back behavior "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PagePlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    sget v2, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    const/4 v3, 0x0

    const-string v4, "h5PageClose"

    if-ne v0, v2, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 667
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    sget v2, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    if-ne v0, v2, :cond_4

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    .line 675
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 676
    if-gtz v0, :cond_2

    .line 677
    const-string v0, "webview with no history and do exit!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 679
    return-void

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->goBack()V

    goto :goto_1

    .line 669
    :cond_3
    :goto_0
    const-string v0, "webview can\'t go back and do exit!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 671
    return-void

    .line 684
    :cond_4
    :goto_1
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 14
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 646
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 647
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "baseUrl"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "baseUrl":Ljava/lang/String;
    const-string v2, "data"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, "data":Ljava/lang/String;
    const-string v3, "mimeType"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 650
    .local v10, "mimeType":Ljava/lang/String;
    const-string v3, "encoding"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 651
    .local v11, "encoding":Ljava/lang/String;
    const-string v3, "historyUrl"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 652
    .local v12, "historyUrl":Ljava/lang/String;
    new-instance v13, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;

    move-object v3, v13

    move-object v4, p0

    move-object v5, v0

    move-object v6, v2

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v3 .. v9}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 660
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 26
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 498
    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    const/4 v3, 0x0

    .line 501
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 498
    const-string v4, "success"

    const-string v5, "H5PagePlugin"

    if-nez v0, :cond_1

    .line 499
    const-string v0, "inputFocus4Android h5WebView == null"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    if-eqz v1, :cond_0

    .line 501
    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 503
    :cond_0
    return-void

    .line 505
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x0

    move-object v7, v6

    .line 506
    .local v7, "realWebView":Landroid/view/View;
    move-object v7, v0

    if-nez v0, :cond_3

    .line 507
    const-string v0, "inputFocus4Android realWebView == null"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-eqz v1, :cond_2

    .line 509
    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 511
    :cond_2
    return-void

    .line 513
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v3, v6

    .line 514
    .local v3, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    const-string v4, "coordinateX"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "xstr":Ljava/lang/String;
    const-string v0, "coordinateY"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "ystr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "x "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", y "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 519
    .local v13, "x":F
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 520
    .local v14, "y":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v8, 0x0

    .line 521
    .local v8, "downTime":J
    move-wide/from16 v16, v10

    .end local v8    # "downTime":J
    .local v16, "downTime":J
    const/4 v12, 0x0

    const/4 v15, 0x0

    move-wide v8, v10

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 523
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const-wide/16 v8, 0x12c

    add-long v20, v16, v8

    .line 524
    const/16 v22, 0x1

    const/16 v25, 0x0

    move-wide/from16 v18, v20

    move/from16 v23, v13

    move/from16 v24, v14

    invoke-static/range {v18 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 526
    .local v8, "upEvent":Landroid/view/MotionEvent;
    invoke-virtual {v7, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 527
    invoke-virtual {v7, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 528
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 529
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 530
    if-eqz v1, :cond_4

    .line 531
    invoke-interface/range {p2 .. p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v0    # "downEvent":Landroid/view/MotionEvent;
    .end local v8    # "upEvent":Landroid/view/MotionEvent;
    .end local v13    # "x":F
    .end local v14    # "y":F
    .end local v16    # "downTime":J
    :cond_4
    return-void

    .line 533
    :catchall_0
    move-exception v0

    .line 534
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    if-eqz v1, :cond_5

    .line 536
    const/4 v5, 0x2

    const-string v8, "invalid parameter!"

    invoke-interface {v1, v5, v8}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 540
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 788
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v1, "H5PagePlugin"

    if-nez v0, :cond_0

    .line 789
    const-string v0, "performTabClick, return by h5Page == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void

    .line 792
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v2, 0x0

    .line 793
    .local v2, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v2, v0

    if-eqz v0, :cond_2

    instance-of v0, v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-nez v0, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 798
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabBar()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->processTabClick(Ljava/lang/String;)V

    .line 799
    return-void

    .line 794
    :cond_2
    :goto_0
    const-string v0, "performTabClick, return by h5session == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method private c()V
    .locals 11

    .line 723
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v1, "H5PagePlugin"

    if-nez v0, :cond_0

    .line 724
    const-string v0, "sendBackEventToServiceWorker, return by h5Page == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void

    .line 727
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 728
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v0

    if-nez v0, :cond_1

    .line 729
    const-string v0, "sendBackEventToServiceWorker, return by h5session == null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void

    .line 732
    :cond_1
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getServiceWorkerID()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "workerId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendBackEventToServiceWorker, workerId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 735
    return-void

    .line 737
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v4

    move-object v5, v2

    .line 738
    .local v5, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v5, v4

    if-nez v4, :cond_3

    .line 739
    const-string v2, "sendBackEventToServiceWorker, return by h5Service == null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void

    .line 743
    :cond_3
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "back+"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Ljava/lang/String;

    .line 745
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v6, v2

    .line 746
    .local v6, "data":Ljava/util/HashMap;
    move-object v6, v4

    const-string v7, "appId"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v7, v2

    .line 748
    .local v7, "jo":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v4

    const-string v8, "func"

    const-string v9, "back"

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v8, v2

    .line 750
    .local v8, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v8, v4

    const-string v9, "clientId"

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 753
    .local v2, "subData":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v4

    const-string v9, "NBPageUrl"

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string v4, "data"

    invoke-virtual {v8, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v4, "param"

    invoke-virtual {v7, v4, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->enableViewId()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 758
    const-string v4, "viewId"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_4
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    .line 761
    .local v4, "message":Ljava/lang/String;
    const-string v9, "message"

    invoke-virtual {v6, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v9, "messageId"

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/h5container/service/H5Service;->sendServiceWorkerPushMessage(Ljava/util/HashMap;)V

    .line 764
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sendBackEventToServiceWorker, message = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;->waiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    .end local v2    # "subData":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "data":Ljava/util/HashMap;
    .end local v7    # "jo":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "param":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 768
    :catchall_0
    move-exception v2

    .line 769
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "catch exception "

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 771
    .end local v2    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private d()Z
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 775
    return v1

    .line 778
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isTinyApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 779
    if-nez v0, :cond_1

    .line 780
    return v1

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "back_h5EventThroughWorker"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 783
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableSendBackEventToServiceWorker return "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PagePlugin"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12

    .line 168
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 170
    const-string v2, "h5PageBackBehavior"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    .line 188
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 170
    if-eqz v2, :cond_0

    .line 171
    const-string p1, "backBehavior"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Ljava/lang/String;)V

    .line 173
    goto/16 :goto_4

    :cond_0
    const-string v2, "h5PageLoadUrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "url"

    if-eqz v2, :cond_4

    .line 174
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 176
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object p1

    .line 177
    if-eqz p1, :cond_1

    .line 178
    const-string p2, "appId"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string p2, "preSSOLogin"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 180
    nop

    .line 181
    const-string v0, "preSSOLoginBindingPage"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    nop

    .line 183
    const-string v2, "preSSOLoginUrl"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    const-string v2, "ps"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string p2, "psb"

    invoke-virtual {v1, p2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string p2, "psu"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    const-string p1, "start_up_url"

    invoke-virtual {v1, p1, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    .line 190
    if-eqz p1, :cond_2

    .line 191
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStartUrl(Ljava/lang/String;)V

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string p2, "h5PageShouldLoadUrl"

    invoke-virtual {p1, p2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 194
    goto/16 :goto_4

    .line 195
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 197
    goto/16 :goto_4

    :cond_4
    const-string v2, "h5PageLoadData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto/16 :goto_4

    .line 199
    :cond_5
    const-string v2, "h5PageDoLoadUrl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    .line 200
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "force"

    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 204
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setCheckingUrl(Ljava/lang/String;)V

    .line 207
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 208
    if-eqz v2, :cond_7

    .line 209
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_PageDoLoadUrl:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 212
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz v1, :cond_9

    .line 213
    :cond_8
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 215
    :cond_9
    goto/16 :goto_4

    :cond_a
    const-string v2, "h5PageReload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 216
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V

    goto/16 :goto_4

    .line 217
    :cond_b
    const-string v7, "h5PageBack"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a()V

    goto/16 :goto_4

    .line 219
    :cond_c
    const-string v7, "h5PagePause"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "H5PagePlugin"

    const/4 v9, 0x0

    if-eqz v7, :cond_e

    .line 220
    const-string p1, "sendToWeb page event pause"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz p1, :cond_d

    .line 222
    const-string p2, "pause"

    invoke-interface {p1, p2, v9, v9}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 224
    :cond_d
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz p1, :cond_3e

    .line 225
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    goto/16 :goto_4

    .line 227
    :cond_e
    const-string v7, "h5PageResume"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 228
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object p1

    if-nez p1, :cond_f

    goto/16 :goto_1

    .line 232
    :cond_f
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object p1

    .line 233
    const-string p2, "h5_session_pop_param"

    invoke-interface {p1, p2}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object p2

    .line 235
    const-string v0, "h5_session_resume_param"

    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 238
    const-string v1, "h5_page_resume"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Data;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 242
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 243
    const-string v4, "data"

    if-eqz v2, :cond_10

    .line 244
    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :cond_10
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_11

    .line 248
    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :cond_11
    invoke-virtual {v1, v4, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_12
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 255
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "resumeParams"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_13
    const-string p1, "sendToWeb page event resume"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 261
    const-string p1, "sendToWeb page event pageResume"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const-string p2, "pageResume"

    invoke-interface {p1, p2, v1, v9}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 265
    :cond_14
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const-string p2, "resume"

    invoke-interface {p1, p2, v1, v9}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 267
    sget-boolean p1, Lcom/alipay/mobile/h5container/api/H5PageLoader;->isPageClose:Z

    if-eqz p1, :cond_16

    .line 268
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    sget-object p2, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setReferUrl(Ljava/lang/String;)V

    .line 269
    sget-boolean p1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p1, :cond_15

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "h5page resume, getRefer : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/alipay/mobile/nebula/appcenter/model/H5Refer;->referUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_15
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string p2, "H5_AL_PAGE_RESUME"

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 273
    sput-boolean v6, Lcom/alipay/mobile/h5container/api/H5PageLoader;->isPageClose:Z

    .line 275
    :cond_16
    goto/16 :goto_4

    .line 229
    :cond_17
    :goto_1
    const-string p1, "resume fatal error"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v3

    .line 275
    :cond_18
    const-string v7, "h5PageFontSize"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 276
    const-string p1, "size"

    const/4 p2, -0x1

    invoke-static {v1, p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result p1

    .line 277
    if-eq p1, p2, :cond_19

    .line 278
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 280
    :cond_19
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 281
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object p2

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 282
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 283
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object p2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 284
    const-string v0, "h5_font_size"

    invoke-interface {p2, v0, p1}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1a
    goto/16 :goto_4

    :cond_1b
    const-string v7, "h5PageStarted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 287
    sget p1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->LOADING:I

    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:I

    .line 288
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object p1

    .line 289
    const-string p2, "showLoading"

    invoke-static {p1, p2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 290
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_4

    .line 291
    :cond_1c
    const-string p2, "showTitleLoading"

    invoke-static {p1, p2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 292
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 294
    :cond_1d
    goto/16 :goto_4

    :cond_1e
    const-string v7, "h5PageFinished"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v10, "show"

    if-eqz v7, :cond_22

    .line 300
    sget p1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:I

    .line 301
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getAutoHideLoading()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 302
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 304
    :cond_1f
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string p2, "hideLoading"

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 305
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string p2, "hideTitleLoading"

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 308
    const-string p1, "historySize"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result p1

    .line 321
    if-le p1, v3, :cond_21

    sget p1, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    iget p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->f:I

    if-ne p1, p2, :cond_21

    .line 322
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->HIDE_CLOSE_BUTTON:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    const-string p2, "yes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 324
    const-string p1, "set hideCloseButton yes"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 326
    :cond_20
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 327
    invoke-virtual {p1, v10, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v0, "h5PageShowClose"

    invoke-virtual {p2, v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 331
    :cond_21
    goto/16 :goto_4

    :cond_22
    const-string v4, "h5PageReceivedTitle"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 332
    sget p1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:I

    goto/16 :goto_4

    .line 333
    :cond_23
    nop

    .line 334
    const-string v4, "h5PageClose"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "h5PageClose_tab"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    goto/16 :goto_3

    .line 340
    :cond_24
    const-string v4, "h5ToolbarMenuBt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "error"

    const/4 v11, 0x2

    if-eqz v4, :cond_2d

    .line 341
    const-string p1, "tag"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 342
    const-string v0, "h5MenuActionOfFont"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 343
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string p2, "showFontBar"

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_4

    .line 344
    :cond_25
    const-string v0, "refresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 345
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1, v2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_4

    .line 346
    :cond_26
    const-string v0, "copy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 347
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 348
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getShareUrl()Ljava/lang/String;

    move-result-object p2

    .line 349
    const-string v0, "text"

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v0, "setClipboard"

    invoke-virtual {p2, v0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 351
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/alipay/mobile/nebula/R$string;->h5_copied:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 352
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 353
    invoke-static {p2, p1, v6}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 354
    goto/16 :goto_4

    :cond_27
    const-string v0, "openInBrowser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 355
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getShareUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 356
    if-nez p1, :cond_28

    .line 357
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 358
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 361
    :cond_28
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getShareUrl()Ljava/lang/String;

    move-result-object p2

    .line 363
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 364
    return v6

    .line 366
    :cond_29
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->getPackageInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->getUCMPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_2a

    .line 370
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 371
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0, v9}, Lcom/alipay/mobile/nebulacore/Nebula;->startUCMIntentLoadUrl(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 373
    const-string p1, "H5_OPEN_URL_UC"

    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-virtual {p1, v5, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object p1

    .line 373
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 375
    const-string p1, "log open url in uc"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 377
    :cond_2a
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 378
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alipay/mobile/nebula/R$string;->h5_menu_open_in_browser:I

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-static {p2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 380
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    nop

    .line 382
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 381
    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_2b

    .line 383
    invoke-static {v9, p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 386
    :cond_2b
    :goto_2
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    sget-object p2, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_OPEN_IN_BROWSER:Ljava/lang/String;

    invoke-virtual {p1, p2, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 388
    goto/16 :goto_4

    .line 389
    :cond_2c
    return v6

    .line 391
    :cond_2d
    const-string v2, "toggleSoftInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "input_method"

    if-eqz v2, :cond_2e

    .line 392
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 393
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 394
    invoke-virtual {p1, v6, v11}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 395
    goto/16 :goto_4

    :cond_2e
    const-string v2, "showSoftInput"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 396
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 397
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    .line 398
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 399
    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    .line 401
    if-eqz p1, :cond_2f

    .line 402
    invoke-virtual {p2, v0, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_4

    .line 404
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2, p1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 406
    goto/16 :goto_4

    .line 407
    :cond_30
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 408
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v0, "you should specify whether to or not to show soft input or internal error occurred!"

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {p2, p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 412
    goto/16 :goto_4

    .line 413
    :cond_31
    const-string v2, "stopLoading"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 414
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz p1, :cond_3e

    .line 415
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    goto/16 :goto_4

    .line 417
    :cond_32
    const-string v2, "inputFocus4Android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 418
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_4

    .line 419
    :cond_33
    const-string v2, "setGestureBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 420
    const-string p1, "This is an empty implementation for SET_GESTURE_BACK"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_4

    .line 422
    :cond_34
    const-string v2, "getStartupParams"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 423
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto/16 :goto_4

    .line 424
    :cond_35
    const-string p1, "coolLoadingCtrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 425
    const-string p1, "action"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "close"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 426
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 427
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_4

    .line 429
    :cond_36
    sget-object p1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event$Error;->ordinal()I

    move-result p1

    const-string v0, "\u65e0\u6548\u7684api\u5165\u53c2"

    invoke-static {p2, p1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;ILjava/lang/String;)V

    goto :goto_4

    .line 431
    :cond_37
    const-string p1, "executeDefaultBehavior"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 432
    const-string p1, "clientId"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "EXECUTE_DEFAULT_BEHAVIOR with clientId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this.clientId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_38

    .line 435
    return v6

    .line 438
    :cond_38
    const-string p2, "back"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_39

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 439
    const-string p1, "EXECUTE_DEFAULT_BEHAVIOR performBack"

    invoke-static {v8, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b()V

    .line 441
    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->g:Ljava/lang/String;

    goto :goto_4

    .line 442
    :cond_39
    const-string p2, "tabClick"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 443
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b(Ljava/lang/String;)V

    .line 445
    :cond_3a
    goto :goto_4

    .line 446
    :cond_3b
    return v6

    .line 335
    :cond_3c
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 336
    invoke-direct {p0, v6}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Z)V

    goto :goto_4

    .line 338
    :cond_3d
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a(Z)V

    .line 448
    :cond_3e
    :goto_4
    return v3
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 146
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 148
    return v2

    .line 150
    :cond_0
    const-string v1, "h5PageError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    sget v1, Lcom/alipay/mobile/nebulacore/api/PageStatus;->ERROR:I

    iput v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->d:I

    .line 152
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_1
    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 117
    const-string v0, "h5PageBackBehavior"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v0, "h5PageReceivedTitle"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v0, "h5PageLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v0, "h5PageLoadData"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "h5PageReload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v0, "h5PageFontSize"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v0, "h5PageResume"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v0, "h5PageError"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v0, "h5PageClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v0, "h5PageClose_tab"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v0, "h5ToolbarMenuBt"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v0, "h5PageDoLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "toggleSoftInput"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v0, "showSoftInput"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v0, "stopLoading"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v0, "inputFocus4Android"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v0, "getStartupParams"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v0, "coolLoadingCtrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v0, "setGestureBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "executeDefaultBehavior"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onRelease()V
    .locals 5

    .line 97
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 98
    .local v2, "cardShareProvider":Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5CardShareProvider;->release()V

    .line 101
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    move-object v3, v1

    .line 102
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v3, v0}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->hideDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 105
    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    move-object v4, v1

    .line 106
    .local v4, "tipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->hideWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 109
    :cond_2
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->c:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 110
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 111
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 112
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;->e:Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin$H5BackHandler;

    .line 113
    return-void
.end method
