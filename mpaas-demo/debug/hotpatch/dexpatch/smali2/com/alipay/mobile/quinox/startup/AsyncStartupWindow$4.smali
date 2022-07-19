.class final Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$4;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "view":Landroid/view/View;
    :try_start_0
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->c:Ljava/util/concurrent/FutureTask;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$100()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "AsyncStartupWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$200()Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 152
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 153
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$200()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/4 v2, 0x3

    # invokes: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b(I)V
    invoke-static {v2}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$300(I)V

    .line 157
    .end local v1    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
