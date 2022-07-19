.class public Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;
.super Ljava/lang/Object;
.source "NebulaAuthServiceWrapper.java"


# static fields
.field private static final a:Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;
    .locals 1

    .line 17
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->a:Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 170
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 172
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->auth(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 178
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static c()Z
    .locals 4

    .line 32
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 33
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->isLogin()Z

    move-result v0

    return v0

    .line 37
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v3, 0x0

    .line 38
    .local v3, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 41
    .end local v3    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 46
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 52
    .local v2, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :cond_1
    return-object v1

    .line 57
    .end local v2    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 66
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->getNick()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 71
    .local v2, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getNick()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1
    return-object v1

    .line 76
    .end local v2    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->getNick()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_3
    const-string/jumbo v0, "nickName"

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    .line 85
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 90
    .local v2, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_1
    return-object v1

    .line 95
    .end local v2    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_3
    const-string/jumbo v0, "userAvatar"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    .line 104
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 106
    .local v2, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v3, v1

    .line 107
    .local v3, "userInfo":Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 109
    .end local v2    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .end local v3    # "userInfo":Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_3
    const-string v0, "loginToken"

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 4

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/H5ProcessProxy;->getLoginId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 123
    .local v2, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    move-object v3, v1

    .line 124
    .local v3, "userInfo":Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_2
    return-object v1

    .line 129
    .end local v2    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .end local v3    # "userInfo":Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 130
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->getLoginId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_4
    const-string v0, "loginId"

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    .line 138
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    move-object v2, v1

    .line 140
    .local v2, "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v3, v1

    .line 141
    .local v3, "userInfo":Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    return-object v1

    .line 147
    .end local v2    # "authService":Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .end local v3    # "userInfo":Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_3
    const-string v0, "externToken"

    return-object v0
.end method

.method public static j()Z
    .locals 1

    .line 156
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-class v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 158
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    return v0

    .line 161
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/account/NebulaAuthServiceWrapper;->k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;->auth()Z

    move-result v0

    return v0

    .line 164
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static k()Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;
    .locals 1

    .line 184
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-class v0, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/InsideUserInfoProvider;

    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
