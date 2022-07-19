.class final Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;
.super Ljava/lang/Object;
.source "AUAmountEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/amount/AUAmountEditText;->setClearBtnClick()V
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

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$100(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountEditText$2;->a:Lcom/alipay/mobile/antui/amount/AUAmountEditText;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountEditText;->keyBoardUtil:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;
    invoke-static {v0}, Lcom/alipay/mobile/antui/amount/AUAmountEditText;->access$100(Lcom/alipay/mobile/antui/amount/AUAmountEditText;)Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->showKeyboard()V

    .line 125
    :cond_0
    return-void
.end method
