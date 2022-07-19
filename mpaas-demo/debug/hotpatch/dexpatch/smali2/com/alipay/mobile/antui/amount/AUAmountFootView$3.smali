.class final Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;
.super Ljava/lang/Object;
.source "AUAmountFootView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setClearBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$3;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v1}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 182
    return-void
.end method
