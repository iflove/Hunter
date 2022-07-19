.class Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;
.super Ljava/lang/Object;
.source "TransportNetInfoReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;->this$0:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;->this$0:Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/TransportNetInfoReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    return-void
.end method
