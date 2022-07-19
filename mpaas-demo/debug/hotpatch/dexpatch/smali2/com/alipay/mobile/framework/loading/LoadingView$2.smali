.class Lcom/alipay/mobile/framework/loading/LoadingView$2;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/loading/LoadingView;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/loading/LoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/loading/LoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/loading/LoadingView;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/framework/loading/LoadingView$2;->this$0:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/loading/LoadingView$2;->this$0:Lcom/alipay/mobile/framework/loading/LoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    return-void

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
