.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5LoginProviderImpl;
.super Ljava/lang/Object;
.source "H5LoginProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5LoginProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5LoginProviderImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public auth()Z
    .locals 1

    .line 59
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->j()Z

    move-result v0

    return v0
.end method

.method public auth(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public getExtern_token()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginToken()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->c()Z

    move-result v0

    return v0
.end method
