.class Lcom/alipay/mobile/common/transport/http/HttpWorker$3;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/http/HttpWorker;->l()V
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

    .line 1528
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$3;->this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker$3;->this$0:Lcom/alipay/mobile/common/transport/http/HttpWorker;

    # invokes: Lcom/alipay/mobile/common/transport/http/HttpWorker;->m()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->access$000(Lcom/alipay/mobile/common/transport/http/HttpWorker;)V

    .line 1532
    return-void
.end method
