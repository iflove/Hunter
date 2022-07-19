.class final Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->init(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$layoutId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Landroid/view/View;
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$000(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x0

    .line 63
    .local v3, "statusBarHeight":I
    move v3, v1

    if-lez v1, :cond_0

    .line 64
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    move-object v2, v1

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, "statusBarView":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const/16 v5, 0xbf

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 72
    move-object v0, v2

    .line 74
    .end local v1    # "statusBarView":Landroid/view/View;
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$1;->call()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
