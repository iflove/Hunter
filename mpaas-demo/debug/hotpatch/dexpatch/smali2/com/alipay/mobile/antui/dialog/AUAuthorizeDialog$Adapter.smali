.class public abstract Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;
.super Ljava/lang/Object;
.source "AUAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAuthDetailLayoutID()I
.end method

.method public abstract getAuthProtocolsLayoutID()I
.end method

.method public abstract inflateAuthDetail(Landroid/view/LayoutInflater;Landroid/view/View;[Ljava/lang/String;)V
.end method

.method public abstract inflateAuthProtocols(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/CharSequence;)V
.end method
