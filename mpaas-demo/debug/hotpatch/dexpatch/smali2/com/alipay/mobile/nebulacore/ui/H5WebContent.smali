.class public Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5WebContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;,
        Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;,
        Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WebContent"

.field private static a:[Ljava/util/regex/Pattern;

.field private static b:[Ljava/lang/String;


# instance fields
.field private A:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

.field private c:Z

.field private d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

.field private e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

.field private f:Lcom/alipay/mobile/nebula/view/H5Progress;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private m:Z

.field private n:Z

.field private o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

.field private s:Lcom/alipay/mobile/h5container/api/H5Bridge;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:[Ljava/util/regex/Pattern;

    .line 70
    sput-object v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:[Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a()V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 6
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 242
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Z

    .line 108
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->u:Z

    .line 110
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    .line 112
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->w:Z

    .line 114
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->x:Z

    .line 116
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->y:Z

    .line 119
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->z:Z

    .line 149
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->A:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    .line 243
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    .line 245
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h:Z

    .line 246
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->m:Z

    .line 247
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    .line 248
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->p:Z

    .line 249
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    .line 250
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->s:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 253
    sget-object v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:[Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:[Ljava/util/regex/Pattern;

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 256
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 257
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Z

    .line 259
    const-string v0, "H5WebContent"

    const-string v1, "disable pullDown by config"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    goto :goto_1

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c()V

    .line 265
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;
    .locals 1
    .param p0, "x1"    # Landroid/content/Context;
    .param p1, "x2"    # Landroid/view/ViewGroup;

    .line 60
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private static a()V
    .locals 6

    .line 126
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 127
    move-object v0, v1

    if-nez v1, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    const-string v1, "h5_disablePullDownPatterns"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 131
    .local v2, "configArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 133
    .local v3, "size":I
    move v3, v1

    new-array v1, v1, [Ljava/util/regex/Pattern;

    sput-object v1, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:[Ljava/util/regex/Pattern;

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 135
    sget-object v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a:[Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    const-string v1, "h5_tiny_pulldown_text_blacklist"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 140
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    .line 142
    .restart local v3    # "size":I
    move v3, v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:[Ljava/lang/String;

    .line 143
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 144
    sget-object v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .line 468
    const-string v0, "onlineHost"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "onlineHost":Ljava/lang/String;
    const-string v1, "cdnBaseUrl"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "cdnBaseUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " after replace "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5WebContent"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImageKeepSize(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageListener;)V

    .line 485
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isBackToTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const/16 v0, 0xa

    const-string v1, "\u5f53\u524d\u6b63\u5728\u4e0b\u62c9\u4e2d"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 689
    return-void

    .line 691
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->u:Z

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->startPullToRefresh()V

    .line 693
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 694
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 416
    .local v2, "params":Landroid/os/Bundle;
    move-object v2, v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setBackgroundImage(Landroid/graphics/Bitmap;)V

    .line 424
    return-void

    .line 426
    :cond_1
    const-string v0, "url"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlWithURLLib(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 429
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imageUrl : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5WebContent"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 431
    return-void

    .line 417
    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 434
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    const-string v0, "onlineHost"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 437
    .local v1, "onlineHost":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    return-void

    .line 460
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 462
    .end local v1    # "onlineHost":Ljava/lang/String;
    return-void

    .line 463
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->y:Z

    return p1
.end method

.method private b()I
    .locals 14

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pullRefreshStyle"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 282
    .local v3, "paramStyle":Ljava/lang/String;
    move-object v3, v0

    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    return v1

    .line 284
    :cond_1
    const-string v0, "transparent"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 285
    return v4

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v2, v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    .line 291
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    move v5, v1

    .line 292
    .local v5, "color":I
    move v5, v0

    const/high16 v6, 0xff0000

    and-int/2addr v0, v6

    shr-int/lit8 v0, v0, 0x10

    .line 293
    .local v0, "red":I
    const v6, 0xff00

    and-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0x8

    .line 294
    .local v6, "green":I
    and-int/lit16 v7, v5, 0xff

    .line 295
    .local v7, "blue":I
    int-to-double v8, v0

    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    mul-double v8, v8, v10

    int-to-double v10, v6

    const-wide v12, 0x3fe2c8b439581062L    # 0.587

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    int-to-double v10, v7

    const-wide v12, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double v10, v10, v12

    add-double/2addr v8, v10

    .line 297
    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    cmpl-double v12, v8, v10

    if-lez v12, :cond_3

    .line 298
    return v1

    .line 300
    :cond_3
    return v4

    .line 304
    .end local v0    # "red":I
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "color":I
    .end local v6    # "green":I
    .end local v7    # "blue":I
    :cond_4
    return v1

    .line 279
    .end local v3    # "paramStyle":Ljava/lang/String;
    :cond_5
    :goto_0
    return v1
.end method

.method private static b(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 268
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;

    const/4 v1, 0x0

    .line 270
    .local v1, "headerViewProvider":Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;->enableUsePullHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/provider/H5PullHeaderViewProvider;->createPullHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5PullHeader;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/h5container/api/H5PullHeader;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;

    .line 710
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 711
    .local v0, "pullFreshCallback":Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    const-string v2, "H5WebContent"

    if-eqz v1, :cond_1

    .line 712
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 713
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->u:Z

    if-eqz v5, :cond_0

    const-string v5, "code"

    goto :goto_0

    :cond_0
    const-string v5, "manual"

    :goto_0
    const-string v6, "from"

    invoke-virtual {v1, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 715
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v1

    const-string v5, "data"

    invoke-virtual {v1, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v1

    invoke-interface {v1, p1, v3, v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 717
    const-string v1, "sendToWeb FIRE_PULL_TO_REFRESH"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    .line 719
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "params":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 720
    :cond_1
    const-string v1, "date not return,not sendToWeb FIRE_PULL_TO_REFRESH"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:Z

    return v0
.end method

.method private c()V
    .locals 5

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 338
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    const/4 v2, 0x0

    .line 340
    .local v2, "h5ViewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createWebContentView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/view/H5WebContentView;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 344
    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    if-nez v1, :cond_2

    .line 345
    :cond_1
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/h5container/api/H5WebContentImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getHdivider()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g:Landroid/view/View;

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->isCustomBackground()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->p:Z

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isCustomBackground "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->p:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "H5WebContent"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getProgress()Lcom/alipay/mobile/nebula/view/H5Progress;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    .line 353
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getPullContainer()Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    .line 354
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setContentView(Landroid/view/View;)V

    .line 355
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setPullableView(Lcom/alipay/mobile/nebula/refresh/H5PullableView;)V

    .line 356
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->A:Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setPullAdapter(Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;)V

    .line 357
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 358
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->refreshView()V

    .line 359
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e()V

    .line 361
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->t:I

    .line 365
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 366
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    .line 369
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c:Z

    return v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 6
    .param p0, "currentAppId"    # Ljava/lang/String;

    .line 905
    sget-object v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 909
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 910
    return v2

    .line 913
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v3, "all"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    return v2

    .line 917
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 918
    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 919
    return v2

    .line 917
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 922
    :cond_4
    return v1

    .line 906
    :cond_5
    :goto_1
    return v1
.end method

.method private d()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    return-object v0
.end method

.method private e()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 399
    .local v1, "params":Landroid/os/Bundle;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    const-string v0, "backgroundImageUrl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Ljava/lang/String;)V

    .line 405
    :cond_1
    const-string v0, "backgroundImageColor"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 406
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    .line 408
    .local v2, "imageColor":I
    move v2, v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setBackgroundImageColor(I)V

    .line 412
    .end local v2    # "imageColor":I
    :cond_2
    return-void
.end method

.method private f()V
    .locals 2

    .line 488
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->showProviderVisibility(Z)V

    goto :goto_0

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->showProviderVisibility(Z)V

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->notifyViewChanged()V

    .line 494
    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->y:Z

    return v0
.end method

.method private g()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->isBackToTop()Z

    move-result v0

    const-string v1, "H5WebContent"

    if-nez v0, :cond_0

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->m:Z

    .line 700
    const-string v0, "invoke restorePullToRefresh,not backToTop"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V

    return-void

    .line 704
    :cond_0
    const-string v0, "invoke restorePullToRefresh,already backToTop"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d()Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 7

    .line 725
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-nez v0, :cond_0

    .line 726
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->fitContent()V

    .line 732
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 734
    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->x:Z

    .line 736
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 737
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 738
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 740
    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getSlogan(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 743
    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v0

    .line 744
    if-eqz v0, :cond_2

    .line 745
    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->slogan:Ljava/lang/String;

    .line 747
    :cond_2
    goto :goto_1

    .line 749
    :cond_3
    move-object v3, v1

    .line 751
    :cond_4
    goto :goto_1

    .line 752
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 755
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_7

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->q:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 758
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v0

    .line 759
    const-string v3, "END"

    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 760
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderUc(Ljava/lang/String;)V

    goto :goto_3

    .line 763
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    if-eqz v1, :cond_8

    sget v1, Lcom/alipay/mobile/nebula/R$string;->tinyapp_provider:I

    goto :goto_2

    :cond_8
    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_provider:I

    :goto_2
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 766
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v1, v3, :cond_9

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    if-nez v1, :cond_9

    .line 768
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 769
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_uclogo:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 768
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 770
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/nebula/R$string;->h5_browser_provider:I

    .line 771
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-interface {v1, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderUc(Ljava/lang/String;)V

    .line 774
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    .line 776
    :goto_3
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    if-eqz v0, :cond_d

    .line 777
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 778
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bounceTopColor"

    const v3, -0xa0a07

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    .line 780
    if-eq v0, v3, :cond_b

    .line 781
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 782
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/nebula/R$drawable;->h5_uclogo_white:I

    .line 783
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 784
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 785
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v5, v6, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    nop

    .line 781
    :goto_4
    invoke-interface {v1, v0, v3, v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->switchCustomContentBg(ILandroid/graphics/drawable/Drawable;Z)V

    .line 787
    :cond_b
    return-void

    .line 789
    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    .line 791
    :cond_d
    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->z:Z

    return v0
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/view/H5WebContentView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 842
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 843
    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v1, 0x0

    const-string v2, "exitSession"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 846
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j()V

    .line 848
    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b()I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 8

    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 852
    .local v2, "time":J
    move-wide v2, v0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    iget-wide v4, v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->lastClose:J

    sub-long/2addr v0, v4

    const/4 v4, 0x1

    const-wide/16 v5, 0x1f4

    cmp-long v7, v0, v5

    if-gez v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 854
    :goto_0
    const-string v1, "H5WebContent"

    if-eqz v0, :cond_1

    .line 855
    const-string v0, "ignore bridge, perform close!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l()V

    return-void

    .line 858
    :cond_1
    const-string v0, "send close event to bridge!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    iput-boolean v4, v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->waiting:Z

    .line 860
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    iput-wide v2, v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;->lastClose:J

    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->s:Lcom/alipay/mobile/h5container/api/H5Bridge;

    if-eqz v0, :cond_2

    .line 862
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    const-string v5, "closeWindow"

    invoke-interface {v0, v5, v1, v4}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 865
    :cond_2
    return-void
.end method

.method private k()Z
    .locals 3

    .line 868
    const/4 v0, 0x1

    .line 869
    .local v0, "result":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v2, "inputWarning"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 871
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v2, "dataFlow"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    :cond_0
    const/4 v0, 0x0

    .line 875
    :cond_1
    return v0
.end method

.method static synthetic k(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    return v0
.end method

.method private l()V
    .locals 3

    .line 879
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v1, "h5PageClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 880
    return-void
.end method

.method static synthetic l(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->u:Z

    return v0
.end method

.method static synthetic m(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->u:Z

    return v0
.end method

.method static synthetic n(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h()V

    return-void
.end method

.method static synthetic o(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->m:Z

    return v0
.end method

.method static synthetic p(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/view/H5Progress;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->m:Z

    return v0
.end method

.method static synthetic r(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .line 60
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l()V

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdivider()Landroid/view/View;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g:Landroid/view/View;

    return-object v0
.end method

.method public getPage()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 570
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 572
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "titleClick"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1f

    .line 573
    const-string v2, "subtitleClick"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 579
    :cond_0
    const-string v2, "pullRefresh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 580
    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:Z

    .line 582
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f()V

    goto/16 :goto_7

    .line 583
    :cond_1
    const-string v2, "canPullDown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 584
    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    goto/16 :goto_7

    .line 586
    :cond_2
    const-string v5, "showDomain"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 587
    invoke-static {v1, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Z

    goto/16 :goto_7

    .line 589
    :cond_3
    const-string v5, "closeWebview"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 590
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v5, "h5PageClose"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_7

    .line 591
    :cond_4
    const-string v5, "h5PagePhysicalBack"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 592
    const-string v5, "h5ToolbarBack"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_5

    .line 594
    :cond_5
    const-string v5, "h5ToolbarClose"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 595
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i()V

    goto/16 :goto_7

    .line 596
    :cond_6
    const-string v5, "h5ToolbarReload"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 597
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v5, "h5PageReload"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_7

    .line 598
    :cond_7
    const-string v5, "showProgressBar"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 599
    const-string v2, "showProgress"

    invoke-static {v1, v2, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h:Z

    .line 600
    if-nez v2, :cond_21

    .line 601
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    goto/16 :goto_7

    .line 603
    :cond_8
    const-string v5, "showProgressBar_fallback"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "H5WebContent"

    if-eqz v7, :cond_9

    .line 604
    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    goto/16 :goto_7

    .line 606
    :cond_9
    const-string v5, "firePullToRefresh"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 607
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 608
    :cond_a
    const-string v5, "restorePullToRefresh"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 609
    const-string v2, "handleEvent restorePullToRefresh"

    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->n:Z

    .line 611
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->g()V

    goto/16 :goto_7

    .line 612
    :cond_b
    const-string v5, "setPullDownText"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 613
    const-string v2, "pullDownText"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->q:Ljava/lang/String;

    .line 614
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 615
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->q:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderText(Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 617
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getH5ProviderDomain()Landroid/widget/TextView;

    move-result-object v2

    .line 618
    const-string v5, "END"

    invoke-static {v5}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 619
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderLogo(Landroid/graphics/drawable/Drawable;)V

    .line 620
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setProviderUc(Ljava/lang/String;)V

    .line 622
    :cond_c
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto/16 :goto_7

    .line 623
    :cond_d
    const-string v5, "bounceTopColor"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 624
    const/4 v2, 0x0

    .line 625
    .local v2, "isException":Z
    const/4 v3, 0x0

    .line 627
    .local v3, "bounceTopColor":I
    :try_start_0
    const-string v5, "value"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 631
    goto :goto_0

    .line 628
    :catch_0
    move-exception v5

    .line 629
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    const/4 v2, 0x1

    .line 632
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v2, :cond_f

    .line 633
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    .line 634
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/nebula/R$drawable;->h5_uclogo_white:I

    .line 635
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 636
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 637
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v8

    sget-object v9, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v8, v9, :cond_e

    const/4 v6, 0x1

    goto :goto_1

    :cond_e
    nop

    .line 633
    :goto_1
    invoke-interface {v5, v3, v7, v6}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->switchCustomContentBg(ILandroid/graphics/drawable/Drawable;Z)V

    .line 639
    .end local v2    # "isException":Z
    .end local v3    # "bounceTopColor":I
    :cond_f
    goto/16 :goto_7

    :cond_10
    const-string v5, "disClaimerClick"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 641
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v2, :cond_21

    .line 642
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 643
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->t:I

    invoke-interface {v2, v3, v5}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    goto/16 :goto_7

    .line 646
    :cond_11
    const-string v5, "showDisClaimer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 648
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v2, :cond_15

    .line 649
    const-string v2, "mode"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 650
    .local v3, "mode":I
    move v3, v2

    if-eq v2, v4, :cond_13

    const/4 v2, 0x2

    if-ne v3, v2, :cond_12

    goto :goto_2

    :cond_12
    move v2, v6

    const/4 v4, 0x0

    goto :goto_3

    :cond_13
    :goto_2
    move v2, v6

    .line 651
    .local v2, "show":Z
    :goto_3
    if-eqz v4, :cond_14

    .line 652
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v4, v5, v3}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    goto :goto_4

    .line 654
    :cond_14
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->hideDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 657
    .end local v2    # "show":Z
    .end local v3    # "mode":I
    :cond_15
    :goto_4
    return v6

    .line 658
    :cond_16
    const-string v5, "setWebViewTop"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 659
    const-string v2, "position"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "position":Ljava/lang/String;
    const-string v3, "animated"

    invoke-static {v1, v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 661
    .local v3, "animated":Z
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v5, v2, v3}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->setWebViewTop(Ljava/lang/String;Z)V

    .line 662
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 663
    .end local v2    # "position":Ljava/lang/String;
    .end local v3    # "animated":Z
    goto/16 :goto_7

    :cond_17
    const-string v5, "setBackgroundImage"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 664
    const-string v2, "imgUrl"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v3, "imageUrl":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 666
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Ljava/lang/String;)V

    .line 668
    :cond_18
    const-string v2, "color"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 669
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 670
    .local v2, "bgColor":I
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v5, v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->setBackgroundImageColor(I)V

    .line 672
    .end local v2    # "bgColor":I
    :cond_19
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    .line 673
    .end local v3    # "imageUrl":Ljava/lang/String;
    goto :goto_7

    :cond_1a
    const-string v3, "removeBackgroundImage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 674
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->hideBackgroundImage()V

    .line 675
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto :goto_7

    .line 676
    :cond_1b
    const-string v3, "startPullDownRefresh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 677
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_7

    .line 678
    :cond_1c
    const-string v3, "setCanPullDown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 679
    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    goto :goto_7

    .line 681
    :cond_1d
    return v6

    .line 593
    :cond_1e
    :goto_5
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v5, "h5PageBack"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_7

    .line 574
    :cond_1f
    :goto_6
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v5, v3

    .line 575
    .local v5, "data":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v2

    const-string v6, "data"

    invoke-virtual {v2, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 577
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    invoke-interface {v2, v0, v5, v3}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 579
    .end local v5    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_20
    nop

    .line 683
    :cond_21
    :goto_7
    return v4
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 532
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 534
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "h5PageStarted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 535
    const-string v2, "h5ToolbarReload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 540
    :cond_0
    const-string v2, "h5PageFinished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    new-instance v2, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$4;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    const-wide/16 v4, 0x12c

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 547
    :cond_1
    const-string v2, "h5PageProgress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    const-string v2, "progress"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 549
    .local v2, "progress":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/nebula/view/H5Progress;->updateProgress(I)V

    .end local v2    # "progress":I
    goto :goto_0

    .line 550
    :cond_2
    const-string v2, "h5PageBackground"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 555
    const-string v2, "h5PageError"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 556
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V

    .line 557
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->e:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v2, :cond_3

    .line 558
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->hideDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 560
    :cond_3
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    const/4 v4, 0x0

    .line 561
    .local v4, "tipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    move-object v4, v2

    if-eqz v2, :cond_6

    .line 562
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->hideWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;)V

    goto :goto_2

    .line 550
    .end local v4    # "tipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    :cond_4
    :goto_0
    goto :goto_2

    .line 536
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h:Z

    if-eqz v2, :cond_6

    .line 537
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/view/H5Progress;->setProgress(I)V

    .line 538
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 565
    :cond_6
    :goto_2
    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 498
    const-string v0, "h5PageStarted"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v0, "h5PageBackground"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 504
    const-string v0, "h5ToolbarClose"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v0, "h5ToolbarReload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v0, "titleClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v0, "subtitleClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v0, "closeWebview"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v0, "pullRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v0, "canPullDown"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v0, "showDomain"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v0, "showProgressBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v0, "firePullToRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v0, "restorePullToRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v0, "setPullDownText"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v0, "H5_RPC_FAILED"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v0, "h5PageError"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v0, "showProgressBar_fallback"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v0, "bounceTopColor"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v0, "disClaimerClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v0, "showDisClaimer"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v0, "setWebViewTop"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v0, "setBackgroundImage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v0, "removeBackgroundImage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v0, "startPullDownRefresh"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v0, "setCanPullDown"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 321
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->r:Lcom/alipay/mobile/nebulacore/ui/H5WebContent$H5CloseHandler;

    .line 322
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->s:Lcom/alipay/mobile/h5container/api/H5Bridge;

    .line 323
    return-void
.end method

.method public refreshView()V
    .locals 5

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showProgress"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 374
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->f:Lcom/alipay/mobile/nebula/view/H5Progress;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebula/view/H5Progress;->setVisibility(I)V

    .line 375
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->h:Z

    .line 376
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "showDomain"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->j:Z

    .line 378
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "pullRefresh"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->k:Z

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "canPullDown"

    invoke-static {v1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->i:Z

    .line 382
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->isTinyApp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->v:Z

    .line 383
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "usePresetPopmenu"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "YES"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->w:Z

    .line 385
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->l:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "isH5app"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->z:Z

    .line 387
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->showProviderVisibility(Z)V

    .line 388
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->y:Z

    .line 389
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->d:Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->notifyViewChanged()V

    .line 390
    return-void
.end method

.method public setUrlProviderMargin(I)V
    .locals 2
    .param p1, "height"    # I

    .line 310
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 314
    .local v1, "mLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->o:Lcom/alipay/mobile/nebula/view/H5WebContentView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5WebContentView;->getProviderLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    return-void
.end method
