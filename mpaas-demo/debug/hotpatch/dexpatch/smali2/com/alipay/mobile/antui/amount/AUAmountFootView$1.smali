.class final Lcom/alipay/mobile/antui/amount/AUAmountFootView$1;
.super Ljava/lang/Object;
.source "AUAmountFootView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/amount/AUAmountFootView;->setEditChangedListner()V
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

    .line 141
    iput-object p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 156
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 152
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$1;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    # getter for: Lcom/alipay/mobile/antui/amount/AUAmountFootView;->mEditText:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v2}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->access$000(Lcom/alipay/mobile/antui/amount/AUAmountFootView;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUEditText;->isFocused()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->onInputTextStatusChanged(ZZ)V

    .line 147
    return-void
.end method
