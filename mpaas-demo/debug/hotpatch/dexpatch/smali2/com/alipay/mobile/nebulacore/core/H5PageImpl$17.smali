.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$17;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkIfShowLoadingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 1942
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$17;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1946
    const-string v0, "H5PageImpl"

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$17;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    # getter for: Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->D:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$600(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1947
    const-string v1, "time is up, hide LoadingView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$17;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    :cond_0
    return-void

    .line 1950
    :catchall_0
    move-exception v1

    .line 1951
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "hideLoadingView failed"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1953
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
