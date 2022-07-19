.class final Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;
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

    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->dismiss()V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inputContent:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$200(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inputContent:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$200(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;->onClick(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;->a:Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;->onClick(Ljava/lang/String;)V

    .line 162
    :cond_1
    return-void
.end method
