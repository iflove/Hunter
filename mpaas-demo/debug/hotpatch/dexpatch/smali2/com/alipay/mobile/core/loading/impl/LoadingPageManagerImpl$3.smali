.class Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;
.super Ljava/lang/Object;
.source "LoadingPageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    .line 312
    iput-object p1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;->this$0:Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;

    iget-object v1, p0, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl$3;->val$args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/mobile/core/loading/impl/LoadingPageManagerImpl;->startLoading(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    return-void

    .line 317
    :catchall_0
    move-exception v0

    .line 318
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
