.class public Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;
.super Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
.source "GeneralPermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/webar/GeneralPermissionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AUNoticeDialogEx"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;

    .line 51
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->a:Z

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->a:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/webar/GeneralPermissionsManager$AUNoticeDialogEx;->a:Z

    .line 58
    return-void
.end method
