.class Lcom/alipay/mobile/liteprocess/HostInfoReceiver$1;
.super Ljava/lang/Object;
.source "HostInfoReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alipay/mobile/liteprocess/HostInfoReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/HostInfoReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/HostInfoReceiver;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/HostInfoReceiver$1;->b:Lcom/alipay/mobile/liteprocess/HostInfoReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/HostInfoReceiver$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/HostInfoReceiver$1;->a:Landroid/content/Intent;

    invoke-static {v0}, Lcom/alipay/mobile/liteprocess/HostInfoReceiver;->a(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
