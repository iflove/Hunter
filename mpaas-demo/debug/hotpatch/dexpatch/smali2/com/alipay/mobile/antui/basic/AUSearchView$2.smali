.class final Lcom/alipay/mobile/antui/basic/AUSearchView$2;
.super Ljava/lang/Object;
.source "AUSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUSearchView;->setTextChangedListner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUSearchView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUSearchView;

    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUSearchView$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 226
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 222
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 212
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUSearchView;->setButtonActivity()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->access$200(Lcom/alipay/mobile/antui/basic/AUSearchView;)V

    .line 217
    return-void

    .line 213
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchView$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUSearchView;->setButtonUnActivity()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->access$100(Lcom/alipay/mobile/antui/basic/AUSearchView;)V

    return-void
.end method
