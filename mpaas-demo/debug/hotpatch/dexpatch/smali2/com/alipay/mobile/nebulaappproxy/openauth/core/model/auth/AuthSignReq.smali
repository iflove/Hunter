.class public Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignReq;
.super Ljava/lang/Object;
.source "AuthSignReq.java"


# instance fields
.field public appId:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "IOS"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignReq;->platform:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "publicp"

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/openauth/core/model/auth/AuthSignReq;->authType:Ljava/lang/String;

    return-void
.end method
