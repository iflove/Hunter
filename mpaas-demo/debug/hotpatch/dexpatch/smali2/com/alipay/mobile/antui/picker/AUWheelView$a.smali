.class final Lcom/alipay/mobile/antui/picker/AUWheelView$a;
.super Ljava/lang/Object;
.source "AUWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/picker/AUWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUWheelView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/picker/AUWheelView;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/picker/AUWheelView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 627
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUWheelView$a;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 632
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v0

    const-string v1, "compositeui"

    if-nez v0, :cond_0

    .line 633
    const-string v0, "itemHeight is zero"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->getScrollY()I

    move-result v0

    .line 637
    .local v0, "newY":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$800(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    sub-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 638
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$800(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v3

    rem-int/2addr v2, v3

    .line 639
    .local v2, "remainder":I
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I
    invoke-static {v3}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$800(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I
    invoke-static {v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v4

    div-int/2addr v3, v4

    .line 640
    .local v3, "divided":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initialY: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I
    invoke-static {v5}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$800(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", remainder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", divided: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-nez v2, :cond_1

    .line 642
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$600(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v4

    add-int/2addr v4, v3

    # setter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I
    invoke-static {v1, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$502(Lcom/alipay/mobile/antui/picker/AUWheelView;I)I

    .line 643
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUWheelView;->onSelectedCallBack()V
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$700(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    return-void

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_2

    .line 646
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v4, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView$a;II)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    new-instance v4, Lcom/alipay/mobile/antui/picker/AUWheelView$a$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/alipay/mobile/antui/picker/AUWheelView$a$2;-><init>(Lcom/alipay/mobile/antui/picker/AUWheelView$a;II)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/antui/picker/AUWheelView;->post(Ljava/lang/Runnable;)Z

    .line 665
    .end local v2    # "remainder":I
    .end local v3    # "divided":I
    return-void

    .line 666
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUWheelView;->startScrollerTask()V
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$900(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 668
    return-void
.end method
