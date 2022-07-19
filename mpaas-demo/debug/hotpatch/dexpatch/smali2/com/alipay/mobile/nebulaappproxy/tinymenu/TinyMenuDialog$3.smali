.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;
.super Ljava/lang/Object;
.source "TinyMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 365
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->dismiss()V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->access$400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mPositiveListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->access$400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->mEnsureBtn:Landroid/widget/Button;
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->access$500(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 372
    :cond_0
    return-void
.end method
