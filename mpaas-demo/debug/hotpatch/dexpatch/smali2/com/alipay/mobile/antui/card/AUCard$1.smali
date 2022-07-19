.class final Lcom/alipay/mobile/antui/card/AUCard$1;
.super Ljava/lang/Object;
.source "AUCard.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/card/AUCard;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/card/AUCard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/card/AUCard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/card/AUCard;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/antui/card/AUCard$1;->a:Lcom/alipay/mobile/antui/card/AUCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 64
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 50
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard$1;->a:Lcom/alipay/mobile/antui/card/AUCard;

    # getter for: Lcom/alipay/mobile/antui/card/AUCard;->mDottdLine:Landroid/view/View;
    invoke-static {v0}, Lcom/alipay/mobile/antui/card/AUCard;->access$000(Lcom/alipay/mobile/antui/card/AUCard;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/card/AUCard$1;->a:Lcom/alipay/mobile/antui/card/AUCard;

    # getter for: Lcom/alipay/mobile/antui/card/AUCard;->mDottdLine:Landroid/view/View;
    invoke-static {v0}, Lcom/alipay/mobile/antui/card/AUCard;->access$000(Lcom/alipay/mobile/antui/card/AUCard;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-void
.end method
