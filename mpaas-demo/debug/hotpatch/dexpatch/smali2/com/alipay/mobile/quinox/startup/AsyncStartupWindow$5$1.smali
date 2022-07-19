.class Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5$1;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;

    .line 190
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5$1;->this$0:Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 193
    # invokes: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a()V
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$400()V

    .line 194
    return-void
.end method
