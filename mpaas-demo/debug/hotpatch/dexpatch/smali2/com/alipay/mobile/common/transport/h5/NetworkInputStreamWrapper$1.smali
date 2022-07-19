.class Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper$1;
.super Ljava/lang/Object;
.source "NetworkInputStreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper$1;->this$0:Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper$1;->this$0:Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;

    # invokes: Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;->access$000(Lcom/alipay/mobile/common/transport/h5/NetworkInputStreamWrapper;)V

    .line 124
    return-void
.end method
