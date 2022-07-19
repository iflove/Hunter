.class final Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;
.super Ljava/lang/Object;
.source "AUShortcutDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->mOnDismissListener:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->mOnDismissListener:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    iget-object v1, v1, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->neverShowCi:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$OnDismissCallback;->onDismiss(Z)V

    .line 71
    :cond_0
    return-void
.end method
