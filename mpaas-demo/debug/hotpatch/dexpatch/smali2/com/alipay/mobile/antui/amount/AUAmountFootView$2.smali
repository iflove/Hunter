.class final Lcom/alipay/mobile/antui/amount/AUAmountFootView$2;
.super Ljava/lang/Object;
.source "AUAmountFootView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$2;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/amount/AUAmountFootView$2;->a:Lcom/alipay/mobile/antui/amount/AUAmountFootView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->getEditTextEditable()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/antui/amount/AUAmountFootView;->onInputTextStatusChanged(ZZ)V

    .line 163
    return-void
.end method
