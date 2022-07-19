.class public Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;
.super Ljava/lang/Object;
.source "SSLSocketUtil.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Landroid/net/SSLCertificateSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Ljava/lang/reflect/Method;
    .locals 5

    .line 128
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 132
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->c()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setHostname"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This isn\'t Android 2.3 or better. getMethodSetHostname exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSLSocketUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Z
    .locals 6
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "uriHost"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->getSSLCertificateSocketFactory()Landroid/net/SSLCertificateSocketFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    .local v1, "sslCertificateSocketFactory":Landroid/net/SSLCertificateSocketFactory;
    move-object v1, v0

    const/4 v2, 0x0

    const-string v3, "SSLSocketUtil"

    if-nez v0, :cond_0

    .line 82
    const-string v0, "[enableTlsExtensionsV2] sslCertificateSocketFactory is null."

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v2

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Landroid/net/SSLCertificateSocketFactory;->setUseSessionTickets(Ljava/net/Socket;Z)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    const-string v4, "[enableTlsExtensionsV2] Execution success."

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    nop

    .line 97
    return v0

    .line 92
    :catchall_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[enableTlsExtensionsV2] enableTlsExtensionsV2 fail. Exception\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return v2
.end method

.method private static final b()Ljava/lang/reflect/Method;
    .locals 5

    .line 141
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 142
    return-object v0

    .line 145
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->c()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This isn\'t Android 2.3 or better. getMethodSetUseSessionTickets exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SSLSocketUtil"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static b(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 8
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "uriHost"    # Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->c()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 102
    .local v2, "localOpenSslSocketClass":Ljava/lang/Class;
    move-object v2, v0

    const-string v3, "SSLSocketUtil"

    if-nez v0, :cond_0

    .line 103
    const-string v0, "[enableTlsExtensionsV1] localOpenSslSocketClass is null. "

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 106
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v4, v1

    .line 109
    .local v4, "methodSetUseSessionTickets":Ljava/lang/reflect/Method;
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    .line 110
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v0, v5

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    .local v1, "methodSetHostname":Ljava/lang/reflect/Method;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 114
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    const-string v0, "[enableTlsExtensionsV1] Execution success."

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v1    # "methodSetHostname":Ljava/lang/reflect/Method;
    .end local v4    # "methodSetUseSessionTickets":Ljava/lang/reflect/Method;
    :cond_3
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "This isn\'t Android 2.3 or better. getMethodSetHostname exception:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    return-void
.end method

.method private static final c()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 154
    return-object v0

    .line 157
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 164
    :cond_1
    :try_start_1
    const-string v1, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    goto :goto_1

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v1

    const/4 v1, 0x0

    .line 167
    .local v1, "ignored":Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string/jumbo v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v1    # "ignored":Ljava/lang/ClassNotFoundException;
    goto :goto_1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    const-string v2, "SSLSocketUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This isn\'t an Android runtime, exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a:Ljava/lang/Class;

    return-object v0

    .line 174
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static final enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "uriHost"    # Ljava/lang/String;

    .line 56
    const-string v0, "SSLSocketUtil"

    if-nez p0, :cond_0

    .line 57
    const-string v1, "[enableTlsExtensions] Illegal socket param. socket is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_2

    .line 70
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    return-void

    .line 75
    :cond_2
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->b(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 76
    return-void

    .line 64
    :cond_3
    :goto_0
    const-string v1, "[enableTlsExtensions] Illegal socket param. socket is closed."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static final getSSLCertificateSocketFactory()Landroid/net/SSLCertificateSocketFactory;
    .locals 5

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->d:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v0, :cond_0

    .line 30
    return-object v0

    .line 32
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->d:Landroid/net/SSLCertificateSocketFactory;

    if-eqz v1, :cond_1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 38
    :cond_1
    const/16 v1, 0x2ee0

    :try_start_1
    invoke-static {v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v1

    check-cast v1, Landroid/net/SSLCertificateSocketFactory;

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->d:Landroid/net/SSLCertificateSocketFactory;

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->createDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    aput-object v3, v1, v2

    .line 41
    .local v1, "x509TrustManagers":[Ljavax/net/ssl/TrustManager;
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->d:Landroid/net/SSLCertificateSocketFactory;

    invoke-virtual {v2, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 43
    sget-object v2, Lcom/alipay/mobile/common/transport/utils/SSLSocketUtil;->d:Landroid/net/SSLCertificateSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 44
    .end local v1    # "x509TrustManagers":[Ljavax/net/ssl/TrustManager;
    :catchall_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SSLSocketUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSSLCertificateSocketFactory fail. exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v1    # "e":Ljava/lang/Throwable;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    const-string v0, "SSLSocketUtil"

    const-string v1, "[getSSLCertificateSocketFactory] sslCertificateSocketFactory is null."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 47
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
