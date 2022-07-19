.class final Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$2;
.super Landroid/os/HandlerThread;
.source "AsyncStartupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->init(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 80
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->c:Ljava/util/concurrent/FutureTask;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$100()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 81
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 82
    return-void
.end method
