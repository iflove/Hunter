.class Lcom/alipay/mobile/nebulacore/android/AndroidSslError;
.super Landroid/net/http/SslError;
.source "AndroidSslError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;
    }
.end annotation


# instance fields
.field private a:Landroid/net/http/SslError;


# direct methods
.method constructor <init>(Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "sslError"    # Landroid/net/http/SslError;

    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/http/SslError;-><init>(ILandroid/net/http/SslCertificate;)V

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v2, Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidSslError$NullSslError;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidSslError;ILandroid/net/http/SslCertificate;)V

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->a:Landroid/net/http/SslError;

    return-void

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->a:Landroid/net/http/SslError;

    .line 24
    return-void
.end method


# virtual methods
.method public addError(I)Z
    .locals 1
    .param p1, "error"    # I

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->a:Landroid/net/http/SslError;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/http/SslError;->addError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->a:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryError()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->a:Landroid/net/http/SslError;

    invoke-virtual {v0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasError(I)Z
    .locals 1
    .param p1, "error"    # I

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidSslError;->a:Landroid/net/http/SslError;

    invoke-virtual {v0, p1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    return v0
.end method
