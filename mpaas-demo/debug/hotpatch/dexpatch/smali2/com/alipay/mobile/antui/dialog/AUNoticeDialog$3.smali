.class final Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$3;
.super Ljava/lang/Object;
.source "AUNoticeDialog.java"

# interfaces
.implements Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCustomLayout(Landroid/content/Context;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 263
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 266
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$500(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$3;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$500(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 271
    return-void
.end method
