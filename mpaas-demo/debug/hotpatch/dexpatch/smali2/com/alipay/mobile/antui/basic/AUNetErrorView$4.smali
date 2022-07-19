.class final Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;
.super Ljava/util/TimerTask;
.source "AUNetErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 502
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 505
    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I
    invoke-static {}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$400()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$500(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->callTimeFinish()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$600(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$500(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 511
    :goto_0
    # operator-- for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I
    invoke-static {}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$410()I

    .line 512
    return-void
.end method
