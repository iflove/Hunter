.class final Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;
.super Ljava/util/TimerTask;
.source "DefaultLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/loading/DefaultLoadingView;->startLoadingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;->a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;->a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    # operator++ for: Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I
    invoke-static {v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->access$008(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)I

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;->a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    # getter for: Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I
    invoke-static {v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->access$000(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;->a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/base/loading/DefaultLoadingView;->n:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->access$002(Lcom/alipay/mobile/base/loading/DefaultLoadingView;I)I

    .line 215
    :cond_0
    new-instance v0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView$2$1;-><init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView$2;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
