.class public Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;
.super Ljava/lang/Object;
.source "MPDefaultNebulaDialogProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPDefaultNebulaDialogPr"


# instance fields
.field private apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    return-void
.end method


# virtual methods
.method public createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "align"    # Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MPDefaultNebulaDialogPr"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    return-object v0

    .line 22
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public disMissDialog()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MPDefaultNebulaDialogPr"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 93
    return-void
.end method

.method public setDialogCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .line 62
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCancelable(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;

    .line 36
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 37
    new-instance v1, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$1;-><init>(Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setNegativeTextColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "negativeTextColor"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setNegativeTextColor(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;

    .line 49
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 50
    new-instance v1, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider$2;-><init>(Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 58
    :cond_0
    return-void
.end method

.method public setPositiveTextColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "positiveTextColor"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveTextColor(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->disMissDialog()V

    .line 70
    iget-object v0, p0, Lcom/mpaas/nebula/provider/MPDefaultNebulaDialogProvider;->apNoticePopDialog:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MPDefaultNebulaDialogPr"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
