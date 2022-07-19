.class final Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$1;
.super Ljava/lang/Object;
.source "AUShortcutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUShortcutDialog;->neverShowCi:Lcom/alipay/mobile/antui/common/AUCheckIcon;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/common/AUCheckIcon;->performClick()Z

    .line 55
    return-void
.end method
