.class public Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.super Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebulacore/core/H5PageImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_NOT_SHOW_LOADINGVIEW:Ljava/lang/String; = "Don\'t show loading view : "

.field public static final LOTTIE_LAUNCH_FILE_PATH:Ljava/lang/String; = "_animation/launch/"

.field public static final LOTTIE_LAUNCH_MANUAL_HIDE:Ljava/lang/String; = "manualHide"

.field public static final LOTTIE_PUSH_WINDOW_FILE_PATH:Ljava/lang/String; = "_animation/pushWindow/"

.field public static final TAG:Ljava/lang/String; = "H5PageImpl"

.field public static sIsLowerDevice:Ljava/lang/Boolean;


# instance fields
.field private A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field protected H5PAGE_INDEX:I

.field private I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Landroid/view/View$OnTouchListener;

.field private R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

.field private a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field activity:Landroid/app/Activity;

.field private b:Z

.field private c:Ljava/lang/String;

.field protected closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

.field private d:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private e:Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;

.field protected exited:Z

.field private f:Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;

.field private g:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private h:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

.field protected h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

.field protected h5PageHandler:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

.field protected h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

.field private i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

.field private j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field private k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field private l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

.field private m:J

.field private n:Landroid/view/GestureDetector;

.field private o:Landroid/view/View;

.field private p:Ljava/lang/String;

.field private q:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

.field private r:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

.field private s:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

.field protected startParams:Landroid/os/Bundle;

.field private t:Landroid/view/ViewGroup;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

.field private w:Landroid/view/View;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/alipay/mobile/nebula/view/H5TitleView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    .line 2419
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$18;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$18;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 10

    .line 238
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    .line 187
    const-string v1, "_animation/launch/"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    .line 188
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    .line 204
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    .line 205
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    .line 213
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->Q:Landroid/view/View$OnTouchListener;

    .line 223
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "h5startParamTime currentTimeMillis "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5PageImpl"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 243
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 244
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->G:Z

    .line 245
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H:Z

    .line 246
    new-instance p3, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {p3, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 247
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 248
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 249
    new-instance p3, Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-direct {p3}, Lcom/alipay/mobile/h5container/api/H5PageData;-><init>()V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v6, 0x5

    invoke-virtual {p3, v8, v9, v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 251
    new-instance p3, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-direct {p3}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;-><init>()V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 252
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J

    .line 253
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    .line 254
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->E:Z

    .line 255
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    .line 256
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->K:Z

    .line 257
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->P:Ljava/util/Map;

    .line 259
    sget-boolean p3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p3, :cond_0

    .line 260
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "h5 page host in activity "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 266
    if-nez p2, :cond_1

    .line 268
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_0

    .line 269
    :catch_0
    move-exception p3

    .line 270
    const-string v6, "startParams getExtras Exception"

    invoke-static {v7, v6, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez p3, :cond_2

    .line 276
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 279
    :cond_2
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Landroid/os/Bundle;)V

    .line 280
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a()V

    .line 282
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {p3, v7}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 283
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {p3, v2}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p3

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 284
    invoke-static {p3}, Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;->checkParams(Landroid/os/Bundle;)V

    .line 285
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e()V

    .line 287
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v6, "hasH5Pkg"

    invoke-static {p3, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 288
    const-string p3, "setContentBeforeRedirect true"

    invoke-static {v7, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContentBeforeRedirect(Z)V

    .line 292
    :cond_3
    new-instance p3, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {p3}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 294
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v6, "bizType"

    invoke-static {p3, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 295
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 297
    const-string p3, "publicId"

    invoke-static {p2, p3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 299
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    const-string p3, "appId"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 303
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    invoke-virtual {v1, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object p3

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 308
    if-eqz p3, :cond_6

    .line 309
    sget-object v6, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_CreateWebView:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p3, p0, v6}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 311
    :cond_6
    new-instance v6, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v6, p1, p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 312
    if-eqz p3, :cond_7

    .line 313
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_CreateWebViewFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p3, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 316
    :cond_7
    const-string v1, "h5_create_webview appId={} params={}"

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f()Z

    move-result v1

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "allow webview access from file URL "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v6, :cond_8

    .line 320
    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 323
    new-instance v1, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v1, v6, p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 325
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 326
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 328
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 329
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 332
    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c()V

    .line 334
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 336
    if-eqz p3, :cond_9

    .line 337
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_PageInitPlugins:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p3, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 339
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initPlugins()V

    .line 340
    if-eqz p3, :cond_a

    .line 341
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_PageInitPluginsFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p3, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 345
    :cond_a
    iget v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 346
    const-string v1, "url"

    invoke-static {p2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alipay/mobile/h5container/api/H5PageCount;->addUrl(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    .line 376
    if-eqz p3, :cond_b

    .line 377
    :try_start_1
    sget-object p2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_PageApplyParams:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {p3, p0, p2}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 379
    :cond_b
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    goto :goto_1

    .line 380
    :catchall_0
    move-exception p2

    .line 381
    invoke-static {v7, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    :goto_1
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;

    invoke-direct {p3, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Landroid/view/GestureDetector;

    .line 395
    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz p2, :cond_c

    .line 396
    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->Q:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    :cond_c
    new-instance p2, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    invoke-direct {p2, p1, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->r:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    .line 401
    new-instance p2, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;

    invoke-direct {p2, p1, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->s:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    .line 403
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUcFistWebView()V

    .line 405
    const-string p1, "create_page"

    invoke-static {p1, v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;J)V

    .line 408
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 409
    const-string p2, "enablePolyfillWorker"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 408
    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 411
    if-eqz p1, :cond_d

    .line 412
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d()V

    .line 415
    :cond_d
    sget-boolean p2, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object p2

    sget-object p3, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne p2, p3, :cond_e

    if-nez p1, :cond_e

    .line 417
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 418
    const-string p1, "showUCFailDialog"

    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 419
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b()V

    .line 422
    :cond_e
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p()V

    .line 423
    const-string p1, "h5PageStart"

    invoke-virtual {p0, p1, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 424
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/h5container/api/H5Bridge;Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;)V
    .locals 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "h5ViewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .param p4, "h5WebView"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .param p5, "h5Bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;
    .param p6, "h5ChromeClient"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    .param p7, "h5ViewClient"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .param p8, "h5ScriptLoader"    # Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 544
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 152
    const/4 v4, 0x0

    iput v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    .line 187
    const-string v0, "_animation/launch/"

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    .line 188
    const-string v5, ""

    iput-object v5, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    .line 194
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    .line 204
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    .line 205
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    .line 213
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->Q:Landroid/view/View$OnTouchListener;

    .line 223
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 545
    iput-boolean v6, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Z

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 547
    .local v8, "startTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "h5startParamTime currentTimeMillis "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "H5PageImpl"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    move-object/from16 v11, p3

    iput-object v11, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 551
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 552
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->G:Z

    .line 553
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H:Z

    .line 554
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 555
    iput-object v2, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 556
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 557
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x5

    invoke-virtual {v0, v12, v13, v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 559
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 560
    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J

    .line 561
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    .line 562
    iput-boolean v6, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->E:Z

    .line 563
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    .line 564
    iput-boolean v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->K:Z

    .line 565
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->P:Ljava/util/Map;

    .line 567
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 568
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "hostName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "h5 page host in activity "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    .end local v0    # "hostName":Ljava/lang/String;
    :cond_0
    move-object v0, v7

    .line 572
    :goto_0
    iput-object v3, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 574
    if-nez v3, :cond_1

    .line 576
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    iput-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "startParams getExtras Exception"

    invoke-static {v10, v12, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez v12, :cond_2

    .line 584
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 586
    :cond_2
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v12}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Landroid/os/Bundle;)V

    .line 587
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a()V

    .line 588
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v12, v6}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v12

    iput-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 589
    invoke-static {v12}, Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;->checkParams(Landroid/os/Bundle;)V

    .line 590
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e()V

    .line 592
    iget-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v13, "hasH5Pkg"

    invoke-static {v12, v13, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 593
    const-string v4, "setContentBeforeRedirect true"

    invoke-static {v10, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContentBeforeRedirect(Z)V

    .line 597
    :cond_3
    new-instance v4, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 599
    iget-object v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v10, "bizType"

    invoke-static {v4, v10, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v0, "bizType":Ljava/lang/String;
    move-object v0, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 602
    const-string v4, "publicId"

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 606
    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 609
    invoke-virtual {v4, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    move-object/from16 v4, p4

    iput-object v4, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 613
    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 614
    move-object/from16 v10, p6

    iput-object v10, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 615
    move-object/from16 v12, p7

    iput-object v12, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 616
    move-object/from16 v13, p8

    iput-object v13, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 619
    iget v14, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    add-int/2addr v14, v6

    iput v14, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 620
    const-string v6, "url"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/h5container/api/H5PageCount;->addUrl(Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v14, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;

    invoke-direct {v14, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$7;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v6, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 674
    new-instance v6, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    invoke-direct {v6, v2, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->r:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    .line 675
    new-instance v6, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;

    invoke-direct {v6, v2, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->s:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    .line 677
    iget-object v6, v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUcFistWebView()V

    .line 679
    const-string v6, "create_page"

    invoke-static {v6, v8, v9}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;J)V

    .line 687
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p()V

    .line 688
    const-string v6, "h5PageStart"

    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 689
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "h5ViewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 461
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    .line 187
    const-string v1, "_animation/launch/"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    .line 188
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    .line 204
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    .line 205
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->Q:Landroid/view/View$OnTouchListener;

    .line 223
    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 463
    .local v3, "startTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "h5startParamTime currentTimeMillis "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H5PageImpl"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 466
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->setContext(Landroid/content/Context;)V

    .line 467
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->G:Z

    .line 468
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H:Z

    .line 469
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {v5, p1}, Lcom/alipay/mobile/h5container/api/H5Context;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 470
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 471
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 472
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-direct {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x5

    invoke-virtual {v5, v7, v8, v9}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCreate(JI)V

    .line 474
    new-instance v5, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    invoke-direct {v5}, Lcom/alipay/mobile/h5container/api/H5AvailablePageData;-><init>()V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    .line 475
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J

    .line 476
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    .line 477
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->E:Z

    .line 478
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    .line 479
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->K:Z

    .line 480
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->P:Ljava/util/Map;

    .line 482
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "hostName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "h5 page host in activity "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v0    # "hostName":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 488
    const-string v5, "isTinyApp"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 490
    new-instance v0, Lcom/alipay/mobile/nebulacore/data/H5MemData;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/data/H5MemData;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->mH5Data:Lcom/alipay/mobile/h5container/api/H5Data;

    .line 493
    const-string v0, "tiny_app"

    .line 494
    .local v0, "bizType":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v2, "webViewConfig":Landroid/os/Bundle;
    move-object v2, v5

    const-string v6, "bizType"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v5, p1, p0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 498
    if-eqz v5, :cond_1

    .line 499
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 500
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 501
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 502
    new-instance v5, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 503
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 506
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c()V

    .line 509
    iget v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 511
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-direct {v1, p1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Landroid/view/GestureDetector;

    .line 522
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_2

    .line 523
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->Q:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUcFistWebView()V

    .line 527
    new-instance v1, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->r:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    .line 528
    new-instance v1, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5NewEmbedViewProviderImpl;-><init>(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->s:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    .line 529
    const-string v1, "create_page"

    const-string v5, "precreate"

    invoke-static {v1, v5, v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 530
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a()V

    .line 531
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p()V

    .line 532
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2410
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;-><init>(Landroid/os/Parcel;)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    .line 187
    const-string v1, "_animation/launch/"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    .line 188
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    .line 204
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    .line 205
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->Q:Landroid/view/View$OnTouchListener;

    .line 223
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->R:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 2411
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p()V

    .line 2412
    return-void
.end method

.method private a()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 445
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v2, v0

    const-string v3, "com.eg.android.AlipayGphone.action.CDP_CLOSE_ANNOUNCEMENT_VIEW_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    .line 447
    .local v1, "h5Context":Lcom/alipay/mobile/h5container/api/H5Context;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 450
    :cond_1
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "param"    # Landroid/os/Bundle;

    .line 857
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "appId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppId(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v1, "publicId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPublicId(Ljava/lang/String;)V

    .line 859
    const-string v0, "appVersion"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "appVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->setAppVersion(Ljava/lang/String;)V

    .line 861
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "openAppId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setOpenAppId(Ljava/lang/String;)V

    .line 862
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "shopId"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setShopId(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v2, "customParams"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setCustomParams(Ljava/lang/String;)V

    .line 864
    const-string v1, "release_type"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "releaseType":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setReleaseType(Ljava/lang/String;)V

    .line 867
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v3, "sessionId"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setSessionId(Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v3, "onlineHost"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v2, "isTinyApp"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 871
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v5, "YES"

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setIsTinyApp(Ljava/lang/String;)V

    .line 872
    const-string v2, "DEBUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/h5container/api/H5Flag;->sInjectDebugConsoleJS:Ljava/lang/Boolean;

    .line 873
    const-string v2, "nbsource"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "debug"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 874
    const-string v2, "isRemoteDebug"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "true"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 876
    const-string v2, "launchParams"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 877
    const-string v5, "bugmeNext"

    invoke-static {v2, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v5, "preview"

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setBugmeEnv(Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setBugmeNext(Z)V

    .line 881
    :cond_0
    goto :goto_0

    .line 883
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    const-string v5, "NO"

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setIsTinyApp(Ljava/lang/String;)V

    .line 886
    :cond_2
    :goto_0
    const-string v2, "tinySource"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 887
    const-string v5, "miniservice"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 889
    const-string v2, "parentAppId"

    const-string v5, ""

    invoke-static {p1, v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 890
    .local v5, "parentAppId":Ljava/lang/String;
    move-object v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 891
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->setParentAppId(Ljava/lang/String;)V

    .line 895
    .end local v5    # "parentAppId":Ljava/lang/String;
    :cond_3
    const-string v2, "isPrerender"

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 896
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPreRender(I)V

    return-void

    .line 898
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPreRender(I)V

    .line 900
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Bridge;)V
    .locals 2
    .param p1, "bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 798
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/h5container/api/H5Bridge;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 812
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->addListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 813
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/h5container/api/H5Bridge;)V
    .locals 5
    .param p1, "nt"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "bridge"    # Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 843
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    const-string v0, "H5PageImpl"

    const-string v1, "H5_NETWORK_CHANGE"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->TransferNetworkType(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, "networkType":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 847
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 848
    .local v2, "isConnected":Z
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isConnected"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string v3, "networkType"

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    if-eqz p2, :cond_0

    .line 851
    const/4 v3, 0x0

    const-string v4, "h5NetworkChange"

    invoke-interface {p2, v4, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 854
    .end local v0    # "networkType":Ljava/lang/String;
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "isConnected":Z
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 2034
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    const-string v0, "H5PageImpl"

    const-string v1, "h5 url isEmpty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    return-void

    .line 2038
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerLoadUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 2039
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_1

    .line 2040
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 2042
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 14
    .param p1, "exitTabScene"    # Z

    .line 1148
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    if-eqz v0, :cond_0

    .line 1149
    return-void

    .line 1151
    :cond_0
    nop

    .line 1152
    const-string v0, "h5_logNewBlankScreenConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1153
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_5

    .line 1154
    const-string v0, "enable"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "enable":Ljava/lang/String;
    const-string v2, "appId"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1156
    .local v2, "regex":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1157
    const-string v3, "script"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 1159
    :cond_1
    const-string v3, "testFilter"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1160
    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    .line 1161
    .local v3, "filterTime":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1162
    .local v6, "currentTime":J
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v8

    .line 1163
    .local v8, "startTime":J
    sub-long v10, v6, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    int-to-long v12, v3

    cmp-long v4, v10, v12

    if-gez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1164
    .local v4, "filter":Z
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "check dsl currentTime : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " startTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " filterTime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " filter : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "H5PageImpl"

    invoke-static {v11, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1167
    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1168
    const-string v10, "yes"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 1169
    invoke-virtual {v10}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v4, :cond_4

    .line 1170
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1172
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    .line 1173
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    sget-object v10, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    new-instance v11, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;

    invoke-direct {v11, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    invoke-virtual {v5, v10, v11}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1193
    new-instance v5, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;

    invoke-direct {v5, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$11;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    const-wide/16 v10, 0xc8

    invoke-static {v5, v10, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    return-void

    .line 1203
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 1205
    .end local v0    # "enable":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    .end local v3    # "filterTime":I
    .end local v4    # "filter":Z
    .end local v6    # "currentTime":J
    .end local v8    # "startTime":J
    return-void

    .line 1206
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 1208
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # J

    .line 143
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/h5container/api/H5Bridge;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/h5container/api/H5Bridge;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    return v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->J:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l()V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 143
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .param p1, "x1"    # Z

    .line 143
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Z)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 784
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 785
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isLogBlankScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 790
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "errorType"

    const-string v3, "errorRender"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const v0, -0x927c1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send page abnormal event : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5PageImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v0, "h5PageAbnormal"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 795
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "startParams"    # Landroid/os/Bundle;

    .line 1568
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    const-string v0, "showLoading"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1570
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isFirstPage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1572
    const-string v1, "appId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1573
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "h5_show_tiny_loading"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1574
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1575
    .local v4, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v4, v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "all"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1576
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not show TinyLoading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5PageImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1578
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1579
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "isTinyApp"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1585
    .end local v1    # "appId":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    return-void
.end method

.method private b(Z)V
    .locals 4
    .param p1, "exitTabScene"    # Z

    .line 1226
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    if-eqz v0, :cond_0

    .line 1227
    return-void

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v0, :cond_1

    .line 1230
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    .line 1231
    iput-boolean p1, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    .line 1232
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    .line 1233
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    const-string v3, "collectDestroyJsApi"

    invoke-interface {v0, v3, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 1235
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$12;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 1246
    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    .line 817
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "isTinyApp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 818
    const-string v1, "enablePolyfillWorker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v3, 0x0

    .line 821
    .local v3, "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v3, v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->isWebWorkerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "H5PageImpl"

    const-string v1, "degradeToSystemWebView...switch is supported"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .end local v3    # "h5TinyAppService":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_0

    .line 834
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 835
    .local v1, "bundle":Landroid/os/Bundle;
    move-object v1, v0

    if-eqz v0, :cond_0

    const-string v0, "enablePolyfillWorker"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "H5PageImpl"

    const-string v2, "degradeToSystemWebView...add ENABLE_POLY_FILL_WORKER to session!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 904
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "H5 start params:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 906
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 907
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 908
    .local v3, "value":Ljava/lang/Object;
    const-string v4, "\n["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ==> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "paramsStr":Ljava/lang/String;
    const-string v2, "H5PageImpl"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public static enableNebulaAppLoadingView()Z
    .locals 6

    .line 1964
    const/4 v0, 0x0

    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "h5_enableNebulaAppLoadingView"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1965
    move-object v0, v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1966
    const-string v1, "enable"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1967
    .local v1, "enable":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1968
    return v4

    .line 1970
    :cond_0
    const-string v3, "yes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1971
    const-string v3, "supportLower"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1972
    .local v3, "supportLower":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isLowerDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1974
    const-string v2, "H5PageImpl"

    const-string v5, "Don\'t show loading view : device not support"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    return v4

    .line 1979
    .end local v1    # "enable":Ljava/lang/String;
    .end local v3    # "supportLower":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private f()Z
    .locals 11

    .line 919
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 920
    .local v2, "urlStr":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v3, v1

    .line 921
    .local v3, "uri":Landroid/net/Uri;
    move-object v3, v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 922
    return v4

    .line 925
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "scheme":Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 927
    return v4

    .line 929
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 930
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uri path : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5PageImpl"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 934
    :cond_2
    const-string v6, "/android_asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "/android_res"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 937
    :cond_3
    const-class v6, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;

    .line 938
    .local v1, "fileAccessProvider":Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;
    move-object v1, v6

    if-eqz v6, :cond_4

    .line 939
    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;->allowFileAccess(Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 942
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 943
    .local v6, "fileDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fileDir : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 945
    return v4

    .line 947
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 948
    .local v8, "checkPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkPath : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableAllowFileAccess(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 950
    .end local v6    # "fileDir":Ljava/lang/String;
    .end local v8    # "checkPath":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 951
    .local v6, "throwable":Ljava/lang/Throwable;
    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 952
    return v4

    .line 935
    .end local v1    # "fileAccessProvider":Lcom/alipay/mobile/nebula/provider/H5AllowFileAccessProvider;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_6
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 932
    :cond_7
    :goto_1
    return v4
.end method

.method private static g()Z
    .locals 2

    .line 958
    const-string v0, "h5_useNewSearchPageRemove"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    const/4 v1, 0x0

    return v1

    .line 962
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private h()Z
    .locals 3

    .line 1139
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isCloseCheckDsl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    nop

    .line 1140
    return v2

    .line 1143
    :cond_1
    return v2
.end method

.method private i()Z
    .locals 5

    .line 1212
    const-string v0, "h5_isCollectDestroyJsApi"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 1213
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_1

    .line 1214
    const-string v0, "enable"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "enable":Ljava/lang/String;
    const-string v3, "appId"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, "regex":Ljava/lang/String;
    const-string v4, "yes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1217
    const/4 v2, 0x1

    return v2

    .line 1219
    :cond_0
    return v2

    .line 1222
    .end local v0    # "enable":Ljava/lang/String;
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isLowerDevice()Z
    .locals 2

    .line 1983
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 1984
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDevicePerformanceScore()I

    move-result v0

    const/16 v1, 0x7df

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    .line 1986
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sIsLowerDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 6

    .line 1484
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1485
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1487
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebulacore/Nebula;->enableOpenScheme(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exitPage()Z

    .line 1489
    return-void

    .line 1492
    :cond_0
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5InPageRenderProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5InPageRenderProvider;

    .line 1493
    if-eqz v3, :cond_4

    .line 1494
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v5, "enableInPageRender"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "YES"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1495
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-interface {v3, v1, v4}, Lcom/alipay/mobile/nebula/provider/H5InPageRenderProvider;->addInPageRender(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1498
    :cond_1
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5InPageRenderProvider;->getInPageRenderType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 1499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1500
    if-eqz v3, :cond_4

    .line 1501
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    goto :goto_0

    .line 1504
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1505
    if-lez v3, :cond_3

    .line 1506
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1508
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "put inPageRenderType "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "H5PageImpl"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inPageRenderType"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_4
    invoke-static {p0}, Lcom/alipay/mobile/nebula/log/H5MainLinkMonitor;->triggerHandleUrlLink(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1515
    const-string v3, "main"

    const-string v4, "H5PageImpl.loadUrl()"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v3, :cond_6

    .line 1519
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1520
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1521
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 1522
    const-string v2, "appId"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1521
    invoke-static {v1, v0, p0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;->interceptXiaoChengXu(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1523
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Ljava/lang/String;)V

    .line 1525
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1526
    if-eqz v0, :cond_5

    .line 1527
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_PageDoLoadUrl:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 1530
    :cond_5
    return-void

    .line 1534
    :cond_6
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->matchAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1535
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;

    .line 1536
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1535
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;

    .line 1538
    if-eqz v3, :cond_7

    .line 1539
    invoke-interface {v3, p0, v1}, Lcom/alipay/mobile/nebula/provider/H5ABTestProvider;->handleURL(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1540
    move-object v1, v3

    .line 1545
    :cond_7
    const-string v3, "h5PageLoadUrl"

    .line 1546
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 1548
    const-string v2, "requestPreAuth"

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1547
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v2, "Referer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1550
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v2, "publicId"

    const-string v4, ""

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1557
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 1558
    if-eqz v1, :cond_9

    .line 1559
    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_PageDispatchLoadUrl:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, p0, v2}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 1561
    :cond_9
    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1564
    :cond_a
    return-void
.end method

.method private k()V
    .locals 5

    .line 1718
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v0, :cond_3

    .line 1719
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1720
    .local v2, "h5Scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    move-object v2, v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1723
    :cond_0
    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 1724
    const-string v3, "h5_font_size"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    .local v1, "sizeStr":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    return-void

    .line 1729
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1730
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setTextSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    .end local v0    # "size":I
    return-void

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "H5PageImpl"

    const-string v4, "failed to parse scenario font size."

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1721
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "sizeStr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1735
    .end local v2    # "h5Scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    :cond_3
    :goto_1
    return-void
.end method

.method private l()V
    .locals 5

    const-string v0, "H5PageImpl"

    .line 1740
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    if-eqz v1, :cond_3

    .line 1741
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1742
    .local v3, "h5Scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1745
    :cond_0
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v1

    .line 1746
    const-string v4, "h5_font_size"

    invoke-interface {v1, v4}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1747
    .local v2, "sizeStr":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1748
    return-void

    .line 1751
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1752
    .local v1, "size":I
    const-string v4, "initTextSizeAsync"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$16;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;I)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    .end local v1    # "size":I
    return-void

    .line 1759
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "failed to parse scenario font size."

    invoke-static {v0, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1743
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "sizeStr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1763
    .end local v3    # "h5Scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    :cond_3
    :goto_1
    return-void
.end method

.method private m()Z
    .locals 4

    .line 1800
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->enableNebulaAppLoadingView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1801
    return v1

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v2, "isNebulaApp"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1806
    const-string v2, "H5PageImpl"

    if-nez v0, :cond_1

    .line 1807
    const-string v0, "Don\'t show loading view : isn\'t nebula app"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    return v1

    .line 1812
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v3, "packageLoadingShown"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1813
    if-eqz v0, :cond_2

    .line 1814
    const-string v0, "Don\'t show loading view : packageLoadingShown"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    return v1

    .line 1819
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v3, "ucInitLoadingShown"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1820
    if-eqz v0, :cond_3

    .line 1821
    const-string v0, "Don\'t show loading view : UCInitLoadingShown"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    return v1

    .line 1826
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v3, "isPrerender"

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 1827
    if-eqz v0, :cond_4

    .line 1828
    const-string v0, "Don\'t show loading view : is pre render page"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1833
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NotReachable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1834
    const-string v0, "Don\'t show loading view : network is unreachable"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    return v1

    .line 1838
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private n()Lcom/alibaba/fastjson/JSONObject;
    .locals 8

    .line 1843
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "lottieAnimation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1844
    .local v2, "lottieConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "H5PageImpl"

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1849
    :cond_0
    const/4 v0, 0x0

    .line 1850
    .local v0, "loadingConfig":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v5, "fromType"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1851
    .local v4, "fromTypeStr":Ljava/lang/String;
    const-string v5, "startApp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1852
    const-string v5, "launchConfig"

    invoke-static {v2, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 1853
    :cond_1
    const-string v5, "pushWindow"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1854
    const-string v5, "_animation/pushWindow/"

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    .line 1855
    const-string v5, "pushWindowConfig"

    invoke-static {v2, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1858
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1859
    const-string v5, "matchUrl"

    invoke-static {v0, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1860
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 1861
    .local v5, "pattern":Ljava/util/regex/Pattern;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v7, "url"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1862
    .local v6, "url":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 1863
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1864
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1865
    const-string v7, "Don\'t show loading view : not match url"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-object v1

    .line 1870
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "url":Ljava/lang/String;
    :cond_3
    return-object v0

    .line 1845
    .end local v0    # "loadingConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "fromTypeStr":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v0, "Don\'t show loading view : lack lottie config"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    return-object v1
.end method

.method private static o()Z
    .locals 2

    .line 2045
    const-string v0, "h5_enableLoadUrlWithWebView"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2047
    const/4 v1, 0x0

    return v1

    .line 2049
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private p()V
    .locals 3

    .line 2387
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2388
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->enterNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    :cond_0
    return-void

    .line 2390
    :catchall_0
    move-exception v0

    .line 2391
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5PageImpl"

    const-string v2, "onEnter"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2393
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method private q()V
    .locals 3

    .line 2397
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2398
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getExtensionManager()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->exitNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    :cond_0
    return-void

    .line 2400
    :catchall_0
    move-exception v0

    .line 2401
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5PageImpl"

    const-string v2, "onExit"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2403
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public applyParams()V
    .locals 10

    .line 1649
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Z

    if-eqz v0, :cond_0

    .line 1650
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParamsX()V

    .line 1651
    return-void

    .line 1653
    :cond_0
    const-string v0, "H5PageImpl"

    const-string v1, "very important step applyParams!!!!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    if-eqz v1, :cond_1

    .line 1655
    const-string v1, "applyParams only invoke once"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    return-void

    .line 1658
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    .line 1659
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2, p0}, Lcom/alipay/mobile/h5container/api/H5Session;->addPage(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    .line 1661
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v2

    const/4 v3, 0x0

    .line 1662
    .local v3, "h5Pages":Ljava/util/Stack;
    move-object v3, v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1663
    const-string v2, " is First Page"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/h5container/api/H5Bridge;)V

    .line 1670
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V

    .line 1672
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j()V

    .line 1674
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Landroid/os/Bundle;)V

    .line 1676
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1677
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1678
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1679
    .local v6, "intentName":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1680
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v8, "url"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1681
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " already sendEvent use loadUrlEvent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    goto :goto_0

    .line 1683
    :cond_3
    const-string v8, "showLoading"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1684
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v8, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 1685
    .local v4, "value":Z
    if-eqz v8, :cond_5

    .line 1686
    const-string v6, "showLoading"

    goto :goto_1

    .line 1688
    .end local v4    # "value":Z
    :cond_4
    const-string v8, "backgroundColor"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1689
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const/high16 v8, -0x1000000

    invoke-static {v4, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    .line 1691
    .local v4, "color":I
    or-int/2addr v4, v8

    .line 1692
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    const-string v6, "h5PageBackground"

    goto :goto_2

    .line 1688
    .end local v4    # "color":I
    :cond_5
    :goto_1
    nop

    .line 1696
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1697
    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1699
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "intentName":Ljava/lang/String;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    goto :goto_0

    .line 1700
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    .line 1701
    const-string v2, "requestPreAuth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1703
    :cond_8
    const-string v1, "h5_initTextSizeAsync"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1704
    const-string v1, "URGENT"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$15;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$15;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1711
    :cond_9
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k()V

    .line 1714
    :goto_3
    const-string v1, "H5pageImpl applyParam"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    return-void
.end method

.method public applyParamsIfNeed()V
    .locals 0

    .line 2227
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V

    .line 2228
    return-void
.end method

.method public applyParamsX()V
    .locals 10

    .line 1588
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    const-string v1, "H5PageImpl"

    if-eqz v0, :cond_0

    .line 1589
    const-string v0, "applyParams only invoke once"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    return-void

    .line 1592
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->M:Z

    .line 1593
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getPages()Ljava/util/Stack;

    move-result-object v2

    const/4 v3, 0x0

    .line 1594
    .local v3, "h5Pages":Ljava/util/Stack;
    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1595
    const-string v2, " is First Page"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Lcom/alipay/mobile/h5container/api/H5Bridge;)V

    .line 1602
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->setWebProvider(Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;)V

    .line 1605
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Landroid/os/Bundle;)V

    .line 1607
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1608
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1609
    .local v5, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1610
    .local v6, "intentName":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1611
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v8, "url"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " already sendEvent use loadUrlEvent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    goto :goto_0

    .line 1614
    :cond_2
    const-string v8, "showLoading"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1615
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v8, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 1616
    .local v4, "value":Z
    if-eqz v8, :cond_4

    .line 1617
    const-string v6, "showLoading"

    goto :goto_1

    .line 1619
    .end local v4    # "value":Z
    :cond_3
    const-string v8, "backgroundColor"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1620
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const/high16 v8, -0x1000000

    invoke-static {v4, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v4

    .line 1622
    .local v4, "color":I
    or-int/2addr v4, v8

    .line 1623
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-string v6, "h5PageBackground"

    goto :goto_2

    .line 1619
    .end local v4    # "color":I
    :cond_4
    :goto_1
    nop

    .line 1627
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1628
    invoke-virtual {p0, v6, v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1630
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "intentName":Ljava/lang/String;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    goto :goto_0

    .line 1631
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 1632
    const-string v2, "requestPreAuth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1634
    :cond_7
    const-string v0, "h5_initTextSizeAsync"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1635
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1642
    :cond_8
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k()V

    .line 1645
    :goto_3
    const-string v0, "H5pageImpl applyParam"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    return-void
.end method

.method public checkIfShowLoadingView()V
    .locals 11

    .line 1900
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1903
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->n()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1904
    .local v2, "loadingConfig":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-nez v0, :cond_2

    .line 1907
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    .line 1908
    if-eqz v0, :cond_2

    .line 1909
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->getLottieView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    .line 1912
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setLoadingConfig(Lcom/alibaba/fastjson/JSONObject;)V

    .line 1915
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    if-nez v0, :cond_3

    return-void

    .line 1916
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    move-object v3, v1

    .line 1917
    .local v3, "h5ContentProvider":Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    move-object v3, v0

    if-nez v0, :cond_4

    return-void

    .line 1918
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "loading.json"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLocalResource(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v1

    .line 1919
    .local v4, "jsonBytes":[B
    move-object v4, v0

    if-eqz v0, :cond_b

    array-length v0, v4

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-nez v0, :cond_5

    goto/16 :goto_2

    .line 1920
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v0, :cond_6

    .line 1921
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v0, v5, v4}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setMainJson(Landroid/view/View;[B)V

    .line 1925
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "images"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLottieAnimationImgsCount(Ljava/lang/String;)I

    move-result v0

    .line 1926
    .local v0, "loadingImgCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loading img count "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H5PageImpl"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1928
    .local v5, "map":Ljava/util/Map;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_8

    .line 1929
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->x:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "images/img_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1930
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getLocalResource(Ljava/lang/String;)[B

    move-result-object v9

    .line 1931
    .local v1, "bytes":[B
    move-object v1, v9

    if-eqz v9, :cond_7

    array-length v9, v1

    if-lez v9, :cond_7

    .line 1932
    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    .end local v1    # "bytes":[B
    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1935
    .end local v7    # "i":I
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1936
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v1, v7, v5}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setImgs(Landroid/view/View;Ljava/util/Map;)V

    .line 1941
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->showLoadingView()V

    .line 1942
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$17;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$17;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 1955
    .local v1, "task":Ljava/lang/Runnable;
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1956
    .local v7, "handler":Landroid/os/Handler;
    iget-boolean v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    if-eqz v8, :cond_a

    const/16 v8, 0xbb8

    goto :goto_1

    :cond_a
    const/16 v8, 0x2710

    .line 1957
    .local v8, "time":I
    :goto_1
    int-to-long v9, v8

    invoke-virtual {v7, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    nop

    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v8    # "time":I
    return-void

    .line 1958
    :catchall_0
    move-exception v1

    .line 1959
    .local v1, "e":Ljava/lang/Throwable;
    const-string v7, "play lottie loading animation failed"

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1961
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 1919
    .end local v0    # "loadingImgCount":I
    .end local v5    # "map":Ljava/util/Map;
    :cond_b
    :goto_2
    return-void

    .line 1904
    .end local v3    # "h5ContentProvider":Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    .end local v4    # "jsonBytes":[B
    :cond_c
    :goto_3
    return-void
.end method

.method public doExitPage(Z)Z
    .locals 10
    .param p1, "exitTabScene"    # Z

    const-string v0, "h5_page_resume"

    .line 1261
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    const/4 v2, 0x0

    const-string v3, "H5PageImpl"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;->shouldExit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1262
    const-string v0, "page exit intercepted by host!"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    return v2

    .line 1266
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    if-eqz v1, :cond_1

    .line 1267
    const-string v0, "page already exited!"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    return v2

    .line 1270
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    .line 1273
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1274
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->closeAnnouncementreceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1276
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->logNetworkUnFinish()V

    .line 1288
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v4, :cond_3

    .line 1289
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendExitEvent()V

    .line 1295
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;

    const/4 v5, 0x0

    move-object v6, v5

    .line 1296
    .local v6, "h5SharePanelProvider":Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;
    move-object v6, v4

    if-eqz v4, :cond_4

    .line 1297
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v6, v4}, Lcom/alipay/mobile/nebula/provider/H5SharePanelProvider;->removeMenuList(I)V

    .line 1300
    :cond_4
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;

    move-object v7, v5

    .line 1301
    .local v7, "provider":Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;
    move-object v7, v4

    if-eqz v4, :cond_5

    .line 1302
    invoke-interface {v7, p0}, Lcom/alipay/mobile/nebula/provider/H5PreConnectProvider;->clearPreRequest(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 1305
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "h5page quit , hashCode = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "H5SharePanelProviderImp"

    invoke-static {v8, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    .line 1307
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v8, "url"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/h5container/api/H5PageCount;->removeUrl(Ljava/lang/String;)V

    .line 1308
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "H5PAGE_INDEX exit "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H5PAGE_INDEX:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v4, "exitPage"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v4, "h5PageClosed"

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1312
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v4, :cond_6

    .line 1317
    :try_start_0
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V

    .line 1318
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v8, "input_method"

    .line 1319
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    move-object v8, v5

    .line 1320
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v4, v9, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    nop

    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 1321
    :catch_0
    move-exception v4

    .line 1322
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1326
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_9

    .line 1327
    const/4 v8, 0x1

    .line 1328
    .local v8, "finish":Z
    instance-of v4, v4, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    if-eqz v4, :cond_8

    .line 1331
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v4

    .line 1332
    .local v5, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v5, v4

    if-eqz v4, :cond_7

    .line 1333
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v4

    .line 1334
    invoke-interface {v4, v0, v0}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->isExited()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "NO"

    const-string v4, "h5_exitSessionWithAnim"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;->setUseTranslateAnim(Z)V

    .line 1341
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v4, p1}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->removeFragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;Landroid/os/Bundle;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v0, v1

    move v8, v0

    .line 1346
    .end local v5    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    goto :goto_1

    .line 1342
    :catchall_0
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "exception detail"

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_8
    :goto_1
    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "createPageSence"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5Activity"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1353
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1356
    .end local v8    # "finish":Z
    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/h5container/api/H5Session;->removePage(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    return v0
.end method

.method public execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    .line 2054
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 2057
    :cond_0
    return-void
.end method

.method public exitPage()Z
    .locals 6

    .line 1096
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "createPageSence"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "createPageScene":Ljava/lang/String;
    const-string v2, "H5Activity"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 1098
    invoke-static {p0, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->needPageKeepAlive(Lcom/alipay/mobile/h5container/api/H5Page;Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 1099
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulacore/Nebula;->doKeepAlive(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1100
    const-string v2, "H5KeepAliveUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "needPageKeepAlive true with createPageScene: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return v3

    .line 1104
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1105
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Z)V

    .line 1106
    return v0

    .line 1108
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Z)V

    .line 1110
    return v0

    .line 1112
    :cond_2
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1115
    .end local v1    # "createPageScene":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1116
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "H5PageImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1118
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return v0
.end method

.method public exitTabPage()Z
    .locals 2

    .line 1124
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1125
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b(Z)V

    .line 1126
    return v1

    .line 1128
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Z)V

    .line 1130
    return v1

    .line 1132
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    move-result v0

    return v0
.end method

.method public getAPWebViewClient()Lcom/alipay/mobile/nebula/webview/APWebViewClient;
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAdvertisementViewTag()Ljava/lang/String;
    .locals 1

    .line 2278
    const-string v0, "fragmentRootView"

    return-object v0
.end method

.method public getAutoHideLoading()Z
    .locals 1

    .line 2382
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    return v0
.end method

.method public getAvailablePageData()Lcom/alipay/mobile/h5container/api/H5AvailablePageData;
    .locals 1

    .line 2081
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h:Lcom/alipay/mobile/h5container/api/H5AvailablePageData;

    return-object v0
.end method

.method public getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    return-object v0
.end method

.method public getBridgeToken()Ljava/lang/String;
    .locals 1

    .line 2373
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 2003
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2005
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Lcom/alipay/mobile/h5container/api/H5Context;
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    return-object v0
.end method

.method public getEmbededViewProvider()Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;
    .locals 1

    .line 2140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->r:Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2237
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->P:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getH5Fragment()Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .line 2216
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;
    .locals 1

    .line 2135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->z:Lcom/alipay/mobile/nebula/view/H5TitleView;

    return-object v0
.end method

.method public getLastTouch()J
    .locals 2

    .line 2094
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->m:J

    return-wide v0
.end method

.method public getNewEmbedViewProvider()Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;
    .locals 1

    .line 2145
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->s:Lcom/alipay/mobile/nebula/newembedview/H5NewEmbedViewProvider;

    return-object v0
.end method

.method public declared-synchronized getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    monitor-enter p0

    .line 2253
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->t:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2254
    monitor-exit p0

    return-object v0

    .line 2256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2257
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 2252
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local p1    # "listener":Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;
    .locals 1

    .line 2077
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    return-object v0
.end method

.method public getPageId()I
    .locals 1

    .line 2156
    iget v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->B:I

    return v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerformance()Ljava/lang/String;
    .locals 1

    .line 2109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1056
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 2099
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Landroid/view/View;

    return-object v0
.end method

.method public getScopeType()Ljava/lang/Class;
    .locals 1

    .line 2335
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method public getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    return-object v0
.end method

.method public getSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 1

    .line 1021
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 3

    .line 1035
    const-string v0, "h5_ShareUrlConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "config":Ljava/lang/String;
    const-string v1, "NEW"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1040
    :cond_0
    return-object v2

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v1, :cond_2

    .line 1044
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1046
    :cond_2
    return-object v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentTitle":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1071
    .end local v0    # "currentTitle":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    .line 1073
    .restart local v0    # "currentTitle":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method public getTitleBarReadyCallBack()Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;
    .locals 1

    .line 2171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f:Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1029
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 2086
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 2087
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2089
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 2313
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_0

    .line 2314
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    .line 2316
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebChromeClient()Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
    .locals 1

    .line 1090
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    return-object v0
.end method

.method public bridge synthetic getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    return-object v0
.end method

.method public getWebViewClient()Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;
    .locals 1

    .line 1086
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    return-object v0
.end method

.method public getWebViewId()I
    .locals 1

    .line 2166
    iget v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->C:I

    return v0
.end method

.method public hasContentBeforeRedirect()Z
    .locals 1

    .line 2263
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->N:Z

    return v0
.end method

.method public hideLoadingView()V
    .locals 5

    .line 1783
    const-string v0, "H5PageImpl"

    const-string v1, "hide web loading view"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->E:Z

    .line 1785
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1786
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 1787
    .local v2, "webContent":Landroid/view/ViewGroup;
    move-object v2, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1788
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    .line 1789
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1790
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->stopAnimation(Landroid/view/View;)V

    .line 1791
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_0

    .line 1792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setLottieLoadingAnimEnd(J)V

    .line 1796
    .end local v2    # "webContent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public ifContainsEmbedSurfaceView()Z
    .locals 1

    .line 2191
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H:Z

    return v0
.end method

.method public ifContainsEmbedView()Z
    .locals 1

    .line 2181
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->G:Z

    return v0
.end method

.method public initPlugins()V
    .locals 7

    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1393
    .local v0, "timeMillis":J
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 1394
    .local v4, "pm":Lcom/alipay/mobile/h5container/api/H5PluginManager;
    move-object v4, v2

    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;-><init>()V

    invoke-interface {v2, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1395
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1396
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1397
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5BridgePlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1398
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5PagePlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1399
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1400
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1401
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5HttpPlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1402
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5UrlInterceptPlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1404
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1406
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1408
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1411
    :cond_0
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5PermissionPlugin;-><init>()V

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1412
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v2, :cond_3

    .line 1413
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5NumInputKeyboard()Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v2

    move-object v5, v3

    .line 1414
    .local v5, "numInputPlugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    move-object v5, v2

    if-eqz v2, :cond_1

    .line 1415
    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1417
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getH5NativeInput()Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v2

    .line 1418
    .local v3, "nativeInputPlugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    move-object v3, v2

    if-eqz v2, :cond_2

    .line 1419
    invoke-interface {v4, v3}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1423
    .end local v3    # "nativeInputPlugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    .end local v5    # "numInputPlugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    :cond_2
    move-object v2, v3

    move-object v3, v5

    goto :goto_0

    .line 1412
    :cond_3
    move-object v2, v3

    .line 1423
    :goto_0
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1425
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    instance-of v5, v5, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v5, :cond_4

    .line 1427
    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletPageNotifyPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1430
    :cond_4
    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1432
    new-instance v5, Lcom/alipay/mobile/nebulacore/wallet/H5AutoClickPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/wallet/H5AutoClickPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1433
    new-instance v5, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1434
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;-><init>(Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1435
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5StartParamPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1436
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5EmbedViewPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1437
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5CameraPreviewSizesPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1438
    new-instance v5, Lcom/alipay/mobile/nebulacore/embedview/H5WalletWebViewMessagePlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/embedview/H5WalletWebViewMessagePlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1440
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWallet()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1442
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1444
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;

    move-result-object v5

    .line 1445
    .local v3, "em":Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;
    const-string v6, "page"

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/nebulacore/config/H5PluginConfigManager;->createPlugin(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5PluginManager;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v5

    .line 1446
    .local v2, "extPagePlugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    move-object v2, v5

    if-eqz v5, :cond_6

    .line 1447
    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1449
    :cond_6
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_7

    .line 1450
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5JSInjectPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1453
    :cond_7
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/plugin/H5NewJSAPIPermissionPlugin;-><init>()V

    invoke-interface {v4, v5}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 1454
    const-string v5, "create_page"

    const-string v6, "init_plugin"

    invoke-static {v5, v6, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1456
    return-void
.end method

.method protected initSession()Lcom/alipay/mobile/h5container/api/H5Session;
    .locals 6

    .line 1459
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "sessionId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1460
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    .line 1461
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 1463
    .local v3, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 1464
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v1

    .line 1465
    .local v1, "h5Scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v5, "bizScenario"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1467
    .local v2, "scenarioName":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 1468
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set session scenario "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5PageImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;

    invoke-direct {v4, v2}, Lcom/alipay/mobile/nebulacore/core/H5ScenarioImpl;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 1470
    invoke-interface {v3, v1}, Lcom/alipay/mobile/h5container/api/H5Session;->setScenario(Lcom/alipay/mobile/h5container/api/H5Scenario;)V

    .line 1473
    .end local v1    # "h5Scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    .end local v2    # "scenarioName":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public injectPageReady()V
    .locals 3

    .line 2325
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 2326
    const-string v1, "javascript:(function(){window.ALIPAYVIEWAPPEARED=1})();"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v0, :cond_1

    .line 2329
    const-string v1, "appearAfterPreRender"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 2331
    :cond_1
    return-void
.end method

.method public isFirstPage()Z
    .locals 1

    .line 1478
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->L:Z

    return v0
.end method

.method public isNebulaX()Z
    .locals 1

    .line 2302
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b:Z

    return v0
.end method

.method public isTinyApp()Z
    .locals 5

    .line 2283
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2284
    return v1

    .line 2286
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 2287
    .local v3, "context":Landroid/content/Context;
    move-object v3, v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;

    if-nez v0, :cond_3

    instance-of v0, v3, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2291
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "appId"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 2292
    .local v1, "appId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2293
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v4, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v0, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2296
    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5NebulaAppCacheManager;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2297
    .local v0, "appType":Ljava/lang/String;
    const-string v2, "nebulaH5TinyApp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 2289
    .end local v0    # "appType":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1
.end method

.method public isTransparentTitleState()Z
    .locals 3

    .line 2221
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v1, "transparentTitle"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2222
    .local v1, "transparentTitle":Ljava/lang/String;
    move-object v1, v0

    const-string v2, "auto"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "always"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "custom"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .line 2012
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 2013
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    const-string v2, "baseUrl"

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    const-string v0, "data"

    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    const-string v0, "mimeType"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    const-string v0, "encoding"

    invoke-virtual {v1, v0, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    const-string v0, "historyUrl"

    invoke-virtual {v1, v0, p5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2018
    const-string v0, "h5PageShouldLoadData"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2019
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 2023
    invoke-static {p1, p0}, Lcom/alipay/mobile/nebulacore/Nebula;->interceptSchemeForTiny(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    const-string v1, "H5PageImpl"

    if-eqz v0, :cond_0

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "interceptSchemeForTiny "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    return-void

    .line 2027
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 2028
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "url"

    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    const-string v0, "h5PageLoadUrl"

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 2030
    const-string v0, "page loadurl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    return-void
.end method

.method protected logNetworkUnFinish()V
    .locals 4

    .line 1360
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1361
    .local v0, "resourceInfoMap":Ljava/util/Map;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1362
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->getRequestMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1364
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    return-void

    .line 1368
    :cond_1
    const-string v1, "H5_AL_NETWORK_UNFINISH"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1369
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 1370
    .local v1, "networkData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$13;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Ljava/util/Map;Lcom/alipay/mobile/nebula/log/H5LogData;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1388
    return-void
.end method

.method public onInterceptError(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "errorUrl"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "intercepted":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;

    if-eqz v1, :cond_0

    .line 1252
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;->shouldInterceptError(Ljava/lang/String;I)Z

    move-result v1

    .line 1253
    move v0, v1

    if-eqz v1, :cond_0

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page error intercepted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PageImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :cond_0
    return v0
.end method

.method public onRelease()V
    .locals 3

    .line 967
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q()V

    .line 969
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->z:Lcom/alipay/mobile/nebula/view/H5TitleView;

    instance-of v1, v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5TitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->isSearchPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 972
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputListen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 975
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 977
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputListen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->removeProvider(Ljava/lang/String;)Z

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    if-eqz v0, :cond_2

    .line 982
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onRelease()V

    .line 984
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->k:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .line 985
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    if-eqz v1, :cond_3

    .line 986
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->onRelease()V

    .line 988
    :cond_3
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->j:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 990
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v1, :cond_4

    .line 991
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Bridge;->onRelease()V

    .line 994
    :cond_4
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 995
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 996
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    .line 997
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    .line 998
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_5

    .line 999
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 1000
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V

    .line 1002
    :cond_5
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 1003
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Context:Lcom/alipay/mobile/h5container/api/H5Context;

    .line 1004
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 1005
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    .line 1006
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->getInstance()Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->removeListener(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;)V

    .line 1007
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->q:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;

    .line 1008
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->I:Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    .line 1009
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    .line 1010
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    .line 1011
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->onRelease()V

    .line 1012
    return-void
.end method

.method public pageIsClose()Z
    .locals 2

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pageIsClose "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PageImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->exited:Z

    return v0
.end method

.method public replace(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 2321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:location.replace(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->loadUrl(Ljava/lang/String;)V

    .line 2322
    return-void
.end method

.method public scriptbizLoadedAndBridgeLoaded()Z
    .locals 1

    .line 2119
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendExitEvent()V
    .locals 3

    .line 2206
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->K:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2209
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->K:Z

    .line 2210
    const-string v1, "beforeunload"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 2211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    const-string v1, "beforeDestroy"

    invoke-interface {v0, v1, v2, v2}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 2212
    return-void

    .line 2207
    :cond_1
    :goto_0
    return-void
.end method

.method public setBridgeToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "bridgeToken"    # Ljava/lang/String;

    .line 2378
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->c:Ljava/lang/String;

    .line 2379
    return-void
.end method

.method public setContainsEmbedSurfaceView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .line 2196
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->H:Z

    .line 2197
    return-void
.end method

.method public setContainsEmbedView(Z)V
    .locals 0
    .param p1, "ifContains"    # Z

    .line 2186
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->G:Z

    .line 2187
    return-void
.end method

.method public setContentBeforeRedirect(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .line 2268
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->O:Z

    if-nez v0, :cond_0

    .line 2269
    const-string v0, "H5PageImpl"

    const-string v1, "setContentBeforeRedirect set only once"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->N:Z

    .line 2272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->O:Z

    .line 2273
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .line 2232
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->P:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2233
    return-void
.end method

.method public setH5ErrorHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;)V
    .locals 0
    .param p1, "h5ErrorHandler"    # Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;

    .line 1996
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e:Lcom/alipay/mobile/h5container/api/H5Page$H5ErrorHandler;

    .line 1997
    return-void
.end method

.method public setH5Fragment(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 0
    .param p1, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 2072
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->i:Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 2073
    return-void
.end method

.method public setH5TitleBar(Lcom/alipay/mobile/nebula/view/H5TitleView;)V
    .locals 0
    .param p1, "h5TitleBar"    # Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 2130
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->z:Lcom/alipay/mobile/nebula/view/H5TitleView;

    .line 2131
    return-void
.end method

.method public setHandler(Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    .line 1991
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5PageHandler:Lcom/alipay/mobile/h5container/api/H5Page$H5PageHandler;

    .line 1992
    return-void
.end method

.method public setLoadingConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "loadingConfig"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1874
    const-string v0, "mode"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1875
    .local v0, "launchMode":Ljava/lang/String;
    const-string v2, "manualHide"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1876
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->F:Z

    .line 1878
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-nez v2, :cond_1

    return-void

    .line 1879
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    if-nez v2, :cond_2

    return-void

    .line 1880
    :cond_2
    const-string v2, "width"

    invoke-static {p1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 1881
    .local v2, "width":I
    const-string v4, "height"

    invoke-static {p1, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 1882
    .local v4, "height":I
    const-string v5, "locationX"

    invoke-static {p1, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    .line 1883
    .local v5, "locationX":I
    const-string v6, "locationY"

    invoke-static {p1, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 1884
    .local v3, "locationY":I
    if-gtz v2, :cond_3

    if-gtz v4, :cond_3

    if-gtz v5, :cond_3

    if-lez v3, :cond_4

    .line 1885
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v6, v7, v2, v4}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setWidthAndHeight(Landroid/view/View;II)V

    .line 1886
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v6, v7, v5, v3}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setLocationXY(Landroid/view/View;II)V

    .line 1888
    :cond_4
    const-string v6, "bgColor"

    invoke-static {p1, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    .line 1889
    .local v6, "bgColorStr":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1891
    :try_start_0
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1892
    .local v1, "bgColor":I
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v7, v8, v1}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->setBackgroundColor(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    .end local v1    # "bgColor":I
    return-void

    .line 1893
    :catchall_0
    move-exception v1

    .line 1894
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v7, "H5PageImpl"

    const-string v8, "loadingview setBgColor failed"

    invoke-static {v7, v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1897
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_5
    return-void
.end method

.method public declared-synchronized setNewEmbedViewRoot(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    monitor-enter p0

    .line 2242
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2243
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;

    .line 2244
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;->onNewEmbedBaseViewReady(Landroid/view/View;)V

    .line 2245
    goto :goto_0

    .line 2246
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2248
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->t:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    monitor-exit p0

    return-void

    .line 2241
    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPageId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 2150
    iput p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->B:I

    .line 2151
    return-void
.end method

.method public setPerformance(Ljava/lang/String;)V
    .locals 0
    .param p1, "pagePerformance"    # Ljava/lang/String;

    .line 2114
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->p:Ljava/lang/String;

    .line 2115
    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 2104
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->o:Landroid/view/View;

    .line 2105
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSize"    # I

    .line 2061
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setTextSize(I)V

    .line 2065
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 2124
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->y:Ljava/lang/String;

    .line 2125
    return-void
.end method

.method public setTitleBarReadyCallBack(Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;)V
    .locals 0
    .param p1, "h5TitleBarReadyCallback"    # Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;

    .line 2176
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f:Lcom/alipay/mobile/h5container/api/H5Page$H5TitleBarReadyCallback;

    .line 2177
    return-void
.end method

.method public setUpPage(Landroid/os/Bundle;)V
    .locals 7

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 693
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 695
    const-string v2, "H5PageImpl"

    if-nez p1, :cond_0

    .line 697
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v3

    .line 699
    const-string v4, "startParams getExtras Exception"

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 704
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 705
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 708
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a(Landroid/os/Bundle;)V

    .line 710
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 711
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    .line 712
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/H5ParamCheckUtil;->checkParams(Landroid/os/Bundle;)V

    .line 713
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->e()V

    .line 715
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v5, "hasH5Pkg"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 716
    const-string v3, "setContentBeforeRedirect true"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setContentBeforeRedirect(Z)V

    .line 720
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v3, :cond_3

    .line 721
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->f()Z

    move-result v3

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "allow webview access from file URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->init(Z)V

    .line 724
    new-instance v3, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {v3, v4, p0}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Lcom/alipay/mobile/h5container/api/H5Page;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 728
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->setPageUrl(Ljava/lang/String;)V

    .line 729
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->l:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 730
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initPlugins()V

    .line 731
    invoke-static {p1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/mobile/h5container/api/H5PageCount;->addUrl(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v3, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$8;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 759
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->initSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->h5Session:Lcom/alipay/mobile/h5container/api/H5Session;

    .line 761
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->applyParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    goto :goto_1

    .line 762
    :catchall_0
    move-exception p1

    .line 763
    invoke-static {v2, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->startParams:Landroid/os/Bundle;

    const-string v2, "enablePolyfillWorker"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 769
    if-eqz p1, :cond_4

    .line 770
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->d()V

    .line 773
    :cond_4
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v2, v3, :cond_5

    if-nez p1, :cond_5

    .line 775
    sput-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 776
    const/4 p1, 0x0

    const-string v2, "showUCFailDialog"

    invoke-virtual {p0, v2, p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 777
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->b()V

    .line 779
    :cond_5
    const-string p1, "create_page"

    const-string v2, "setUpPage"

    invoke-static {p1, v2, v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 780
    return-void
.end method

.method public setWebViewId(I)V
    .locals 0
    .param p1, "i"    # I

    .line 2161
    iput p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->C:I

    .line 2162
    return-void
.end method

.method public showLoadingView()V
    .locals 4

    .line 1766
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->E:Z

    if-nez v0, :cond_0

    return-void

    .line 1767
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    if-eqz v0, :cond_1

    return-void

    .line 1768
    :cond_1
    const-string v0, "H5PageImpl"

    const-string v1, "show web loading view"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1770
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->A:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getContent()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 1771
    .local v1, "webContent":Landroid/view/ViewGroup;
    move-object v1, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1772
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->g:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v0, :cond_2

    .line 1773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setLottieLoadingAnimStart(J)V

    .line 1775
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z

    .line 1776
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1777
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->v:Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->w:Landroid/view/View;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5LottieViewProvider;->playAnimation(Landroid/view/View;)V

    .line 1780
    .end local v1    # "webContent":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2416
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5CoreTarget;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2417
    return-void
.end method
