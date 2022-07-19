.class final Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->prepare(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;->val$context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 101
    :goto_0
    # setter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$202(Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 104
    const/4 v0, 0x0

    .line 106
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

    .line 109
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "AsyncStartupWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    if-eqz v0, :cond_3

    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$200()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 112
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    const/4 v4, 0x0

    .line 113
    .local v4, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object v4, v2

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, 0x10118

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 117
    const/16 v2, 0x33

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 118
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 119
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    const/4 v2, -0x2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 121
    const/4 v2, 0x0

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 122
    const/4 v2, 0x0

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 123
    iget-object v2, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$3;->val$context:Landroid/content/Context;

    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_1

    .line 124
    const/16 v2, 0x7d5

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_2

    .line 125
    :cond_1
    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 126
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 128
    :cond_2
    :goto_2
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->h:Landroid/view/WindowManager;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$200()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v0, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    # invokes: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b(I)V
    invoke-static {v3}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$300(I)V

    .line 131
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    return-void

    .line 132
    :cond_3
    const/4 v1, -0x1

    # invokes: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->b(I)V
    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$300(I)V

    .line 134
    return-void
.end method
