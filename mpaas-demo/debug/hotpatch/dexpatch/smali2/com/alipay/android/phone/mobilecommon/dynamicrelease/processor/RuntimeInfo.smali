.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;
.super Ljava/lang/Object;
.source "RuntimeInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "productVersion"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "extraInfo"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->b:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->c:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->d:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->e:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraInfo"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "productVersion"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RuntimeInfo{mUserId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProductId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProductVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mChannelId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mExtraInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
