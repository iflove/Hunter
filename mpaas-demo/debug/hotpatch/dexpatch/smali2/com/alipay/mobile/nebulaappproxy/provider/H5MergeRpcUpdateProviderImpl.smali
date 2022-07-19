.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;
.super Ljava/lang/Object;
.source "H5MergeRpcUpdateProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProvider;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "H5MergeRpcUpdateProviderImpl"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setH5AppUpdate(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/util/Map;
    .param p4, "h5AppErrorRpcListen"    # Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;",
            ")V"
        }
    .end annotation

    .line 29
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/H5MergeRpcUpdateProviderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;Landroid/app/Activity;Ljava/util/Map;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
