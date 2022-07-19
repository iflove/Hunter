.class public Lcom/alipay/mobile/nebulacore/web/H5WebView;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/refresh/H5PullableView;
.implements Lcom/alipay/mobile/nebula/webview/APWebView;
.implements Lcom/alipay/mobile/nebula/webview/APWebViewPerformance;


# static fields
.field private static b:I


# instance fields
.field public TAG:Ljava/lang/String;

.field protected a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:F

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/h5container/api/H5Page;

.field private k:Landroid/os/Bundle;

.field private l:J

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "H5WebView"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:F

    .line 94
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h:Z

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->l:J

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->m:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "webViewConfig"    # Landroid/os/Bundle;

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "webViewConfig"    # Landroid/os/Bundle;
    .param p4, "outerApWebView"    # Lcom/alipay/mobile/nebula/webview/APWebView;
    .param p5, "outerApWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "H5WebView"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:F

    .line 94
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h:Z

    .line 98
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->l:J

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->m:Ljava/lang/String;

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->c:Landroid/os/Bundle;

    .line 114
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 115
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->k:Landroid/os/Bundle;

    .line 116
    const-string v3, "isPrerender"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preRender"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    .line 119
    :cond_0
    const-string v0, "bizType"

    invoke-static {p3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "bizType":Ljava/lang/String;
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->i:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createWebView bizType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-nez p4, :cond_1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->instance()Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;

    move-result-object v2

    .line 125
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    .line 124
    invoke-virtual {v2, p1, v0, p1, v3}, Lcom/alipay/mobile/nebulacore/wallet/H5WebViewFactory;->createWebView(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    goto :goto_0

    .line 127
    :cond_1
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 129
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getWebViewId()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->setWebViewId(I)V

    .line 131
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v2, :cond_2

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v2, "apWebView == null return"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_2
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "webViewVersion":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "webViewVersion is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " webViewId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->disableHWACByUCStyle()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->k:Landroid/os/Bundle;

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->disableHardwareAccelerate(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    const-string v3, "H5UcService"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string v5, "\u786c\u4ef6\u52a0\u901f\u5173\u95ed\u4e86"

    invoke-virtual {v3, v5, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 141
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v3

    move-object v5, v1

    .line 142
    .local v5, "webView":Landroid/view/View;
    move-object v5, v3

    if-eqz v3, :cond_3

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v6, "diable webview layer hardware accelerate."

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v5, v4, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    goto :goto_1

    .line 146
    :catchall_0
    move-exception v1

    .line 147
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v6, "set webview layer exception."

    invoke-static {v3, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v5    # "webView":Landroid/view/View;
    :cond_3
    :goto_1
    if-eqz p5, :cond_4

    .line 153
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, p5}, Lcom/alipay/mobile/nebula/webview/APWebView;->setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    goto :goto_2

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    .line 281
    :goto_2
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "enableScrollBar"

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    .line 283
    .local v1, "enableScrollBar":Z
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "enableScrollBar:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-nez v1, :cond_5

    .line 285
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 286
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollBarEnabled(Z)V

    .line 289
    :cond_5
    sget v3, Lcom/alipay/mobile/nebulacore/web/H5WebView;->b:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/alipay/mobile/nebulacore/web/H5WebView;->b:I

    iput v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    .line 290
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 535
    const-string v0, ""

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 536
    nop

    .line 538
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 539
    if-eqz v1, :cond_1

    .line 541
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 542
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 543
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v4, v2, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->getHeight(Lcom/alipay/mobile/h5container/api/H5Page;FLandroid/util/DisplayMetrics;)I

    move-result v1

    .line 544
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getEnabledAccessibilities()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ")"

    const-string v6, ",ws:"

    const-string v7, " AlipayDefined(nt:"

    const-string v8, "|"

    if-eqz v4, :cond_0

    .line 545
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getEnabledAccessibilities()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 549
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 539
    :cond_1
    move-object v1, v0

    .line 555
    :goto_0
    goto :goto_1

    .line 553
    :catch_0
    move-exception v1

    .line 554
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 557
    :goto_1
    nop

    .line 558
    const/4 v2, 0x0

    .line 560
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 561
    if-eqz v3, :cond_2

    .line 562
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->isConcaveScreen()Z

    move-result v2

    .line 567
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 571
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->useH5StatusBar(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " useStatusBar/true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 575
    :cond_3
    if-eqz v2, :cond_4

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isConcaveScreen/true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 578
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isConcaveScreen/false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 581
    :goto_2
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 583
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 584
    if-nez v0, :cond_5

    .line 585
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "failed to get app info!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-object p1

    .line 589
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->k:Landroid/os/Bundle;

    const-string v1, "host"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    .line 596
    :cond_6
    const/4 v0, 0x0

    .line 597
    if-eqz v3, :cond_7

    .line 598
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getRpcUrl()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "test.alipay.net"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 602
    const-string v0, "test"

    goto :goto_3

    .line 603
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "mobilegwpre.alipay.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    const-string v0, "rc"

    goto :goto_3

    .line 606
    :cond_9
    const-string v0, "dev"

    .line 608
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ProductType/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "debug ua"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 593
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "can\'t parse host parameter as json"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-object p1

    .line 611
    :cond_b
    :goto_5
    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 9

    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 316
    .local v2, "url":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    return-void

    .line 319
    :cond_1
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    move-object v3, v1

    .line 320
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    move-object v3, v0

    if-eqz v0, :cond_6

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->preConnect(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "onlineHost"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v1

    .line 326
    .local v4, "onlineHost":Ljava/lang/String;
    move-object v4, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 328
    .local v0, "startsWithOnlineHost":Z
    :goto_0
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v6

    .line 330
    .local v7, "urlWithAppId":Z
    const-class v8, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;

    .line 331
    .local v1, "autoLoginProvider":Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;
    move-object v1, v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;->canAutoLogin(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    .line 333
    .local v5, "canAutoLogin":Z
    :cond_3
    if-nez v0, :cond_5

    if-nez v7, :cond_5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 337
    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3, v2, v6}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->preRequest(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V

    goto :goto_2

    .line 334
    :cond_5
    :goto_1
    return-void

    .line 339
    .end local v0    # "startsWithOnlineHost":Z
    .end local v1    # "autoLoginProvider":Lcom/alipay/mobile/nebula/provider/H5AutoLoginProvider;
    .end local v4    # "onlineHost":Ljava/lang/String;
    .end local v5    # "canAutoLogin":Z
    .end local v7    # "urlWithAppId":Z
    :cond_6
    :goto_2
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "time"    # I

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "loadBlankPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "H5WebView onWebViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->ifContainsEmbedView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    .line 1107
    .local v1, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 1108
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onWebViewDestory()V

    .line 1113
    .end local v1    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 1114
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1115
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    const-string v0, "YES"

    const-string v2, "mp_h5_dont_reload_when_release"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    .end local v1    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_2
    goto :goto_0

    .line 1118
    :catchall_0
    move-exception v0

    .line 1120
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v2, "loadBlankPage exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1123
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView$7;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1129
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/webview/APWebSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "settings"    # Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "originalUA"    # Ljava/lang/String;

    .line 513
    const-string v0, "h5_handle4ua"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 515
    .local v1, "h5_handle4uaJsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-interface {p1, p3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 518
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->k:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MiniProgram"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 526
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mPaaSClient"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 528
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p1, "x1"    # I

    .line 79
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 684
    :try_start_0
    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 685
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 686
    .local v0, "meetApiLevel19":Z
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v4, "UCBS"

    .line 687
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    const-string v4, "UWS"

    .line 688
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    const-string v4, "U3"

    .line 689
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 690
    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_4

    .line 692
    if-nez p2, :cond_3

    .line 693
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 695
    :cond_3
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 704
    :cond_4
    if-eqz v0, :cond_6

    .line 705
    if-nez p2, :cond_5

    .line 706
    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 708
    :cond_5
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$5;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 717
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 720
    .end local v0    # "meetApiLevel19":Z
    return-void

    .line 721
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    return-void

    .line 724
    :catchall_0
    move-exception v0

    .line 726
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v2, "loadUrl exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 728
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 730
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Z)V
    .locals 7
    .param p1, "allowAccessFromFileURL"    # Z

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyCustomSettings allowAccessFromFileURL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 349
    .local v2, "settings":Lcom/alipay/mobile/nebula/webview/APWebSettings;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setEnableFastScroller(Z)V

    .line 350
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setPageCacheCapacity(I)V

    .line 353
    const-string v0, "utf-8"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 355
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSupportMultipleWindows(Z)V

    .line 359
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    move-object v4, v1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v4

    .line 361
    .local v4, "e":Ljava/lang/NullPointerException;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v6, "Ignore the exception in AccessibilityInjector when init"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v6, "exception detail"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_0
    const/16 v5, 0x10

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDefaultFontSize(I)V

    .line 365
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 368
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSavePassword(Z)V

    .line 369
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSaveFormData(Z)V

    .line 370
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setLoadsImagesAutomatically(Z)V

    .line 372
    sget-object v5, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V

    .line 373
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDomStorageEnabled(Z)V

    .line 374
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowFileAccess(Z)V

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->getApplicationDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/app_h5container"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v4, "h5Folder":Ljava/lang/String;
    move-object v4, v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 380
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDatabaseEnabled(Z)V

    .line 381
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_0

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/databases"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 387
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/appcache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 389
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAppCacheEnabled(Z)V

    .line 393
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    .line 396
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v5

    .line 397
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getNetworkType()Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-ne v5, v6, :cond_1

    .line 398
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setCacheMode(I)V

    goto :goto_1

    .line 400
    :cond_1
    const/4 v5, -0x1

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setCacheMode(I)V

    .line 404
    :goto_1
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setBuiltInZoomControls(Z)V

    .line 405
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSupportZoom(Z)V

    .line 408
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setLoadWithOverviewMode(Z)V

    .line 409
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUseWideViewPort(Z)V

    .line 412
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setGeolocationEnabled(Z)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/geolocation"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->mkdirs(Ljava/lang/String;)Z

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 416
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v0, v5, :cond_2

    .line 418
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDisplayZoomControls(Z)V

    .line 421
    :cond_2
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 422
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 425
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v0, v5, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v0, v5, :cond_3

    .line 430
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 431
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 432
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 435
    :cond_3
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 436
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_4

    .line 437
    const-string v0, "mp_h5_allow_mix_content"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "YES"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setMixedContentMode(I)V

    .line 441
    :cond_4
    return-void
.end method

.method private b()V
    .locals 10

    .line 444
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    .line 447
    .local v0, "settings":Lcom/alipay/mobile/nebula/webview/APWebSettings;
    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 448
    .local v3, "ua":Ljava/lang/String;
    move-object v3, v1

    .line 451
    .local v1, "originalUA":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;

    .line 452
    .local v4, "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    const-string v5, "default"

    .line 453
    .local v5, "channelId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 454
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;->getChannelId()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 456
    :cond_0
    const-string v6, "5136"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 457
    const-string v6, "534.30"

    const-string v7, "537.36"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 458
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AlipayChannelId/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 461
    :cond_1
    const-string v6, "UCBS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "UWS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " UCBS/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 463
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 464
    .local v2, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v6

    if-eqz v6, :cond_3

    .line 465
    const-string v6, "NO"

    const-string v7, "h5_enableDetectIfHasContent"

    invoke-interface {v2, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 466
    .local v6, "enable":Z
    :goto_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ChannelId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v8}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 472
    .end local v2    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v6    # "enable":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " NebulaSDK/1.8.100112 Nebula"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .end local v3    # "ua":Ljava/lang/String;
    .local v2, "ua":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    .line 481
    .local v3, "uaProvider":Lcom/alipay/mobile/nebula/provider/H5UaProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;

    .line 483
    .local v6, "h5AliPayUaProvider":Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;
    if-eqz v3, :cond_4

    .line 484
    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebula/provider/H5UaProvider;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    goto :goto_1

    .line 487
    :cond_4
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    .line 490
    if-eqz v6, :cond_5

    .line 491
    invoke-interface {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    .line 502
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Lcom/alipay/mobile/nebula/webview/APWebSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "set final ua "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->g:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-boolean v7, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 505
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "final user agent "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v1    # "originalUA":Ljava/lang/String;
    .end local v2    # "ua":Ljava/lang/String;
    .end local v3    # "uaProvider":Lcom/alipay/mobile/nebula/provider/H5UaProvider;
    .end local v4    # "h5ChannelProvider":Lcom/alipay/mobile/nebula/provider/H5ChannelProvider;
    .end local v5    # "channelId":Ljava/lang/String;
    .end local v6    # "h5AliPayUaProvider":Lcom/alipay/mobile/nebula/provider/H5AliPayUaProvider;
    :cond_6
    return-void

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v3, "setUserAgent exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "releaseWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->ifContainsEmbedView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    move-object v2, v1

    .line 1136
    .local v2, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->releaseView()V

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    move-result-object v0

    move-object v3, v1

    .line 1140
    .local v3, "newEmbedViewProvider":Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 1141
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;->releaseView()V

    goto :goto_0

    .line 1145
    .end local v2    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    .end local v3    # "newEmbedViewProvider":Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
    :cond_1
    move-object v2, v1

    move-object v3, v2

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    .line 1148
    .local v2, "content":Landroid/view/View;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1149
    .local v3, "parent":Landroid/view/ViewParent;
    move-object v3, v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1150
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1153
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 1155
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1156
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 1157
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 1158
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 1159
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    .line 1160
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearHistory()V

    .line 1161
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearSslPreferences()V

    .line 1162
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 1163
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->freeMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    .end local v2    # "content":Landroid/view/View;
    .end local v3    # "parent":Landroid/view/ViewParent;
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V

    .line 1169
    return-void

    .line 1165
    :catchall_0
    move-exception v0

    .line 1166
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v2, "releaseWebView exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 1168
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V

    throw v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;

    .line 743
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 885
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 994
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearCache(Z)V

    .line 995
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearFormData()V

    .line 1000
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearHistory()V

    .line 1005
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearSslPreferences()V

    .line 1010
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public createWebMessageChannel()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->createWebMessageChannel()[Lcom/alipay/mobile/nebula/webview/APWebMessagePort;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->destroy()V

    .line 809
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "var1"    # Landroid/view/KeyEvent;

    .line 1250
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stringValueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 851
    return-void
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 665
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    return-void

    .line 669
    :cond_0
    move-object v0, p1

    .line 672
    .local v0, "finalUrl":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .line 753
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->flingScroll(II)V

    .line 754
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->freeMemory()V

    .line 990
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
    .locals 6
    .param p1, "dstRect"    # Landroid/graphics/Rect;
    .param p2, "srcRect"    # Landroid/graphics/Rect;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "clipByView"    # Z
    .param p5, "coordinate"    # I

    .line 1255
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getH5Page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .line 1179
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 803
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalContentView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1225
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:F

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getStartupPerformanceStatistics(Landroid/webkit/ValueCallback;)V
    .locals 2
    .param p1, "valueCallback"    # Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1271
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/nebula/webview/APWebViewPerformance;

    if-eqz v1, :cond_0

    .line 1272
    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebViewPerformance;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewPerformance;->getStartupPerformanceStatistics(Landroid/webkit/ValueCallback;)V

    .line 1274
    :cond_0
    return-void
.end method

.method public getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1
    .param p1, "textZoom"    # I

    .line 628
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 629
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0

    .line 630
    :cond_0
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1

    .line 631
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0

    .line 632
    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    .line 633
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0

    .line 634
    :cond_2
    const/16 v0, 0x4b

    if-lt p1, v0, :cond_3

    .line 635
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0

    .line 637
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 1203
    const-string v0, "(Null webview)"

    return-object v0

    .line 1205
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1194
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getWebViewConfig()Landroid/os/Bundle;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWebViewIndex()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    return v0
.end method

.method public goBack()V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBack()V

    .line 871
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "i"    # I

    .line 890
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBackOrForward(I)V

    .line 891
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goForward()V

    .line 881
    return-void
.end method

.method public init(Z)V
    .locals 2
    .param p1, "allowAccessFromFileURL"    # Z

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "initWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->b()V

    .line 300
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a()V

    .line 302
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Z)V

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "FATAL ERROR, the internal glue apWebView is null!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 309
    :cond_1
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->invokeZoomPicker()V

    .line 911
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->isPaused()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;
    .param p4, "s4"    # Ljava/lang/String;
    .param p5, "s5"    # Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->l:J

    .line 649
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->m:Ljava/lang/String;

    .line 653
    :cond_1
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 661
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "stringStringMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->l:J

    .line 829
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->m:Ljava/lang/String;

    .line 830
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 831
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->onPause()V

    .line 961
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "H5WebView onWebViewPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->ifContainsEmbedView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    const/4 v1, 0x0

    .line 964
    .local v1, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 965
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onWebViewPause()V

    .line 968
    .end local v1    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 8

    .line 1052
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h:Z

    if-eqz v0, :cond_0

    .line 1053
    return-void

    .line 1055
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->h:Z

    .line 1056
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "releaseWebView!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->l:J

    sub-long/2addr v0, v2

    .line 1060
    .local v0, "elapsed":J
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1061
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1062
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1063
    const-string v2, "H5_ABNORMAL_ERROR"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 1064
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "PAGE_STARTED_ABNORMAL"

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string v3, "NO_ON_PAGE_STARTED"

    invoke-virtual {v2, v3, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 1065
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "elapsed"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->m:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 1063
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logH5Exception(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 1068
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 1069
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1070
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_DEV_WEBVIEW_RELEASE:Ljava/lang/String;

    invoke-interface {v2, v3, v6}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1073
    :cond_2
    const/16 v2, 0x3e8

    .line 1075
    .local v2, "time":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->k:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/Nebula;->useSW(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->k:Landroid/os/Bundle;

    const/4 v4, 0x0

    const-string v5, "isTinyApp"

    invoke-static {v3, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1076
    :cond_3
    const-string v3, "h5_webview_release"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, "enable":Ljava/lang/String;
    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1078
    const/16 v2, 0x1f4

    .line 1079
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v5, "useSw use 500"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .end local v3    # "enable":Ljava/lang/String;
    :cond_4
    :try_start_0
    const-string v3, "h5WebViewReleaseUrl"

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1085
    const-string v3, "h5WebViewReleaseTime"

    .line 1086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 1085
    invoke-static {v3, v4}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    goto :goto_0

    .line 1087
    :catchall_0
    move-exception v3

    .line 1088
    .local v3, "throwable":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v5, "onRelease addCrashHeadInfo"

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1092
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_0
    move v3, v2

    .line 1093
    .local v3, "finalTime":I
    new-instance v4, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;

    invoke-direct {v4, p0, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1099
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->onResume()V

    .line 973
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    const-string v1, "H5WebView onWebViewResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->ifContainsEmbedView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->j:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    move-result-object v0

    const/4 v1, 0x0

    .line 976
    .local v1, "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 977
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;->onWebViewResume()V

    .line 980
    .end local v1    # "embededViewProvider":Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    :cond_0
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .line 900
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .line 895
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->postUrl(Ljava/lang/String;[B)V

    .line 836
    return-void
.end method

.method public postWebMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;Landroid/net/Uri;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobile/nebula/webview/APWebMessage;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .line 955
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->postWebMessage(Lcom/alipay/mobile/nebula/webview/APWebMessage;Landroid/net/Uri;)V

    .line 956
    return-void
.end method

.method public reload()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->reload()V

    .line 861
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeJavascriptInterface "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1039
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 823
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;

    .line 793
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 818
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0
    .param p1, "apWebViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 1190
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 1
    .param p1, "apDownloadListener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 1019
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 1020
    return-void
.end method

.method public setH5OverScrollListener(Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/refresh/H5OverScrollListener;

    .line 734
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->d:Ljava/lang/ref/WeakReference;

    .line 735
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .line 1235
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1236
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 768
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 769
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "s3"    # Ljava/lang/String;
    .param p4, "s4"    # Ljava/lang/String;

    .line 798
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "i"    # I

    .line 905
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setInitialScale(I)V

    .line 906
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 813
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setNetworkAvailable(Z)V

    .line 814
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V
    .locals 1
    .param p1, "changedCallback"    # Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;

    .line 1240
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setOnScrollChangedCallback(Lcom/alipay/mobile/nebula/webview/H5ScrollChangedCallback;)V

    .line 1241
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "v"    # F

    .line 1220
    iput p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:F

    .line 1221
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .line 617
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    .line 618
    .local v0, "settings":Lcom/alipay/mobile/nebula/webview/APWebSettings;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 619
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextZoom(I)V

    return-void

    .line 621
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v1

    .line 622
    .local v1, "textSize":Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V

    .line 624
    .end local v1    # "textSize":Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .line 1230
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollBarEnabled(Z)V

    .line 1231
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 773
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollbarOverlay(Z)V

    .line 774
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 1030
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 1031
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .line 748
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 749
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 1
    .param p1, "client"    # Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 1025
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 1026
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->stopLoading()V

    .line 856
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->zoomOut()Z

    move-result v0

    return v0
.end method
