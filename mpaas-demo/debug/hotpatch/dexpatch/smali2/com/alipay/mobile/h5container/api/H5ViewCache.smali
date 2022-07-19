.class public Lcom/alipay/mobile/h5container/api/H5ViewCache;
.super Ljava/lang/Object;
.source "H5ViewCache.java"


# static fields
.field private static VIEW_ID_TO_CACHE:[I

.field private static sViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_loading_fragment:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_web_content:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5ViewCache;->VIEW_ID_TO_CACHE:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .line 21
    sput-object p0, Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 21
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5ViewCache;->VIEW_ID_TO_CACHE:[I

    return-object v0
.end method

.method public static getCachedViewById(I)Landroid/view/View;
    .locals 2
    .param p0, "viewId"    # I

    .line 77
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static initViewCache()V
    .locals 2

    .line 28
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5ViewCache;->sViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    const-string v0, "NORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/h5container/api/H5ViewCache$1;

    invoke-direct {v1}, Lcom/alipay/mobile/h5container/api/H5ViewCache$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
