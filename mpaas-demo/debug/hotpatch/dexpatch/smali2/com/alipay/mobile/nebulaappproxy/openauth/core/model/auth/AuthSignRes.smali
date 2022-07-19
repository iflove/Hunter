.class public Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignRes;
.super Ljava/lang/Object;
.source "AuthSignRes.java"


# instance fields
.field public authCode:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public isSucess:Z

.field public memo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignRes;->isSucess:Z

    return-void
.end method
