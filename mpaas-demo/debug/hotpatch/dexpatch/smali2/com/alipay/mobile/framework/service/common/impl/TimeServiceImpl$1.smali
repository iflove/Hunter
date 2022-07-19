.class Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;

    # invokes: Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;->access$000(Lcom/alipay/mobile/framework/service/common/impl/TimeServiceImpl;)V

    .line 69
    return-void
.end method
