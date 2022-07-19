.class final Lcom/alipay/mobile/quinox/framemonitor/i$1;
.super Ljava/lang/Object;
.source "TimeOuter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/quinox/framemonitor/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/framemonitor/i;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/framemonitor/i;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/framemonitor/i;

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/i$1;->a:Lcom/alipay/mobile/quinox/framemonitor/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/i$1;->a:Lcom/alipay/mobile/quinox/framemonitor/i;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/i;->a()V

    .line 19
    return-void
.end method
