.class Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;
.super Ljava/lang/Object;
.source "H5PromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->dismiss()V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->b(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->c(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->b(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->c(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;->onClick(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$2;->a:Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;->b(Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog;)Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5PromptDialog$OnClickPositiveListener;->onClick(Ljava/lang/String;)V

    .line 141
    :cond_1
    return-void
.end method
