.class final Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;
.super Ljava/lang/Object;
.source "AUNoticeDialog.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->onCreate(Landroid/os/Bundle;)V
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

    .line 133
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$000(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;->onClick()V

    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;->a:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->access$100(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;->onClick()V

    .line 147
    :cond_1
    return-void
.end method
