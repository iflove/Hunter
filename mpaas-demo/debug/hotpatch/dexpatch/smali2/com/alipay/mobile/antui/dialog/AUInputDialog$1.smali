.class final Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;
.super Ljava/lang/Object;
.source "AUInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUInputDialog;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;->onClick()V

    .line 146
    :cond_0
    return-void
.end method
