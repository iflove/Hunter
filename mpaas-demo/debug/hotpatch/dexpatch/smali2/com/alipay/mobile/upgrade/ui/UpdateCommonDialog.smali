.class public Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
.super Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;
.source "UpdateCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    }
.end annotation


# static fields
.field private static final MSG_MAX_ROW:I = 0x5

.field private static mIsCancelable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->mIsCancelable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/upgrade/adapter/AdapterDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->mIsCancelable:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 23
    sput-boolean p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->mIsCancelable:Z

    return p0
.end method
