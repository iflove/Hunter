.class public Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;
.super Ljava/lang/Object;
.source "UserLoginResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x46d98fab738136e2L


# instance fields
.field public currentProductVersion:Ljava/lang/String;

.field public downloadURL:Ljava/lang/String;

.field public existNewVersion:Ljava/lang/String;

.field public extResAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memo:Ljava/lang/String;

.field public resultStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->existNewVersion:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->extResAttrs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCurrentProductVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->downloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getExistNewVersion()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->existNewVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getExtResAttrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->extResAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->resultStatus:I

    return v0
.end method

.method public setCurrentProductVersion(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setDownloadURL(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->downloadURL:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setExistNewVersion(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->existNewVersion:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setExtResAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->extResAttrs:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public setMemo(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->memo:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setResultStatus(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/alipay/mobile/android/security/upgrade/info/UserLoginResult;->resultStatus:I

    .line 26
    return-void
.end method
