.class Lcom/alipay/mobile/framework/loading/LoadingView$3;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/loading/LoadingView;->sendMessage(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/loading/LoadingView;

.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/loading/LoadingView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/loading/LoadingView;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->this$0:Lcom/alipay/mobile/framework/loading/LoadingView;

    iput-object p2, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->val$data:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->this$0:Lcom/alipay/mobile/framework/loading/LoadingView;

    iget-object v1, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/loading/LoadingView$3;->val$data:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/loading/LoadingView;->onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
