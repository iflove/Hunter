.class final Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;
.super Ljava/lang/Object;
.source "AUWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUWheelView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUWheelView$a;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    .line 646
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iput p2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->a:I

    iput p3, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iget-object v0, v0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iget-object v1, v1, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->initialY:I
    invoke-static {v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$800(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->a:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->itemHeight:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$400(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->smoothScrollTo(II)V

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iget-object v0, v0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    iget v1, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->b:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iget-object v2, v2, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # getter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->offset:I
    invoke-static {v2}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$600(Lcom/alipay/mobile/antui/picker/AUWheelView;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/alipay/mobile/antui/picker/AUWheelView;->selectedIndex:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$502(Lcom/alipay/mobile/antui/picker/AUWheelView;I)I

    .line 651
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUWheelView$a$1;->c:Lcom/alipay/mobile/antui/picker/AUWheelView$a;

    iget-object v0, v0, Lcom/alipay/mobile/antui/picker/AUWheelView$a;->a:Lcom/alipay/mobile/antui/picker/AUWheelView;

    # invokes: Lcom/alipay/mobile/antui/picker/AUWheelView;->onSelectedCallBack()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/picker/AUWheelView;->access$700(Lcom/alipay/mobile/antui/picker/AUWheelView;)V

    .line 652
    return-void
.end method
