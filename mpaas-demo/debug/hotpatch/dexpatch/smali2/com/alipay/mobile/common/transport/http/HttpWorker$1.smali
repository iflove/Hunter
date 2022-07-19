.class Lcom/alipay/mobile/common/transport/http/HttpWorker$1;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/http/HttpWorker;->asyncMonitorLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/http/HttpWorker;

    .line 692
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$1;->this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$1;->this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->monitorLog()Ljava/lang/String;

    .line 696
    return-void
.end method
