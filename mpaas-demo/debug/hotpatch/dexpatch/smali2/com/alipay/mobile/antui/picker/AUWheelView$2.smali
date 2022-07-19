.class final Lcom/alipay/mobile/antui/picker/AUWheelView$2;
.super Ljava/lang/Object;
.source "AUWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUWheelView;->setSelectedIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/antui/picker/AUWheelView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUWheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUWheelView;

    .line 520
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->b:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->b:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->a:I

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    mul-int v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->scrollTo(II)V

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->b:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->a:I

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$600(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    add-int/2addr v1, v2

    # setter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$502(Lcom/alipay/mobile/antui/picker/AUWheelView;I)I

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$2;->b:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUWheelView;->onSelectedCallBack()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$700(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 528
    return-void
.end method
