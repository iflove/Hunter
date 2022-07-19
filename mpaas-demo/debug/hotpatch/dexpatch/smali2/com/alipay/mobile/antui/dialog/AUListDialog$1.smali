.class final Lcom/alipay/mobile/antui/dialog/AUListDialog$1;
.super Ljava/lang/Object;
.source "AUListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUListDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUListDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 275
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->cancel()V

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUListDialog;->mNegativeListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUListDialog;->mCancelBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->access$200(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 282
    :cond_0
    return-void
.end method
