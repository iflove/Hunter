.class public Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;
.super Ljava/lang/Object;
.source "ZSSLContextFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory$X509TrustManagerWrapper;
    }
.end annotation


# static fields
.field private static a:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->a:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .line 63
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 64
    .local v1, "km":Ljavax/net/ssl/KeyManager;
    move-object v1, v3

    instance-of v3, v3, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 65
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    return-object v0

    .line 63
    .end local v1    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/security/KeyManagementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find an X509KeyManager in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final a([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .line 86
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 87
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    move-object v1, v3

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 88
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 86
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Ljava/security/KeyManagementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find an X509TrustManager in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 4

    .line 49
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 50
    .local v2, "defaultAlgorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    move-object v3, v1

    .line 51
    .local v3, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    move-object v3, v0

    invoke-virtual {v0, v1, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 52
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->a([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    .end local v2    # "defaultAlgorithm":Ljava/lang/String;
    .end local v3    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 53
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_2
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 75
    .local v2, "defaultAlgorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    move-object v3, v1

    .line 76
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    move-object v3, v0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 77
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->a([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    .end local v2    # "defaultAlgorithm":Ljava/lang/String;
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 78
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final createZSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 6

    .line 40
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 41
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/X509KeyManager;

    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->createDefaultKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 42
    .local v2, "x509KeyManagers":[Ljavax/net/ssl/X509KeyManager;
    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    new-instance v3, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory$X509TrustManagerWrapper;

    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory$X509TrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v3, v1, v4

    .line 43
    .local v1, "x509TrustManagers":[Ljavax/net/ssl/X509TrustManager;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 44
    return-object v0
.end method

.method public static final getSingletonSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 25
    sget-object v0, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 29
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_1

    .line 31
    monitor-exit v0

    return-object v1

    .line 33
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->createZSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 34
    monitor-exit v0

    .line 36
    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
