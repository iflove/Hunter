.class final Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;
.super Ljava/lang/Object;
.source "AUImageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->cancel()V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mCloseBtnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 152
    :cond_0
    return-void
.end method
