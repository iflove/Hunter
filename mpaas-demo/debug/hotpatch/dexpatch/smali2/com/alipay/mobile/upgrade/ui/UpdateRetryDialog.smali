.class public Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;
.super Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;
.source "UpdateRetryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    }
.end annotation


# static fields
.field private static mIsCancelable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->mIsCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 31
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->mIsCancelable:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 17
    sput-boolean p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->mIsCancelable:Z

    return p0
.end method
