.class final Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;
.super Ljava/lang/Object;
.source "AUCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->initCloseBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUCustomDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUCustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUCustomDialog;

    .line 94
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUCustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUCustomDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->closeClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUCustomDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUCustomDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->closeClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUCustomDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUCustomDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->dismiss()V

    .line 102
    return-void
.end method
