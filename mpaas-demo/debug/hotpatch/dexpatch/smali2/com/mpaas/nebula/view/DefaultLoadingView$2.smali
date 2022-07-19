.class Lcom/mpaas/nebula/view/DefaultLoadingView$2;
.super Ljava/util/TimerTask;
.source "DefaultLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/view/DefaultLoadingView;->startLoadingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/view/DefaultLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/view/DefaultLoadingView;

    .line 195
    iput-object p1, p0, Lcom/mpaas/nebula/view/DefaultLoadingView$2;->this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView$2;->this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;

    # operator++ for: Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I
    invoke-static {v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->access$008(Lcom/mpaas/nebula/view/DefaultLoadingView;)I

    .line 199
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView$2;->this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;

    # getter for: Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I
    invoke-static {v0}, Lcom/mpaas/nebula/view/DefaultLoadingView;->access$000(Lcom/mpaas/nebula/view/DefaultLoadingView;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mpaas/nebula/view/DefaultLoadingView$2;->this$0:Lcom/mpaas/nebula/view/DefaultLoadingView;

    const/4 v1, 0x0

    # setter for: Lcom/mpaas/nebula/view/DefaultLoadingView;->mLightDotIndex:I
    invoke-static {v0, v1}, Lcom/mpaas/nebula/view/DefaultLoadingView;->access$002(Lcom/mpaas/nebula/view/DefaultLoadingView;I)I

    .line 202
    :cond_0
    new-instance v0, Lcom/mpaas/nebula/view/DefaultLoadingView$2$1;

    invoke-direct {v0, p0}, Lcom/mpaas/nebula/view/DefaultLoadingView$2$1;-><init>(Lcom/mpaas/nebula/view/DefaultLoadingView$2;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
