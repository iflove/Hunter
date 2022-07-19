.class final Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;
.super Landroid/os/Handler;
.source "AUNetErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUNetErrorView;
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

    .line 539
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 542
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$1000(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$1100(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setActionStr(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$1200(Lcom/alipay/mobile/antui/basic/AUNetErrorView;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->cancelTimer()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$1300(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    goto/16 :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->timeColor:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$800(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I
    invoke-static {}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$400()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "time":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$string;->retry_later:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "phrase":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v4}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/antui/R$color;->AU_COLOR6:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/antui/basic/AUButton;->setTextColor(I)V

    .line 548
    iget-object v4, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v4}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v1, v5}, Lcom/alipay/mobile/antui/basic/AUButton;->setTextSize(IF)V

    .line 549
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v1

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/basic/AUButton;->setGravity(I)V

    .line 550
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 551
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$200(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v1

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    goto :goto_0

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$900(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 556
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$200(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;->a:Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 560
    nop

    .line 570
    .end local v0    # "time":Ljava/lang/String;
    .end local v3    # "phrase":Ljava/lang/String;
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 571
    return-void
.end method
