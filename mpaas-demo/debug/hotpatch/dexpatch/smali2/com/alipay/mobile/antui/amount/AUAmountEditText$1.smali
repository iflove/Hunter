.class final Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;
.super Ljava/lang/Object;
.source "AUAmountEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/amount/AUAmountEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    .line 83
    iput-object p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->requestFocus()Z

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v2}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->setSelection(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setSelection(I)V

    .line 95
    :cond_1
    :goto_0
    return v1
.end method
