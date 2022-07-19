.class public Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;
.super Ljava/lang/Object;
.source "ZCustSSLSocketFactory.java"


# static fields
.field private static a:Z

.field private static b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .line 42
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 43
    return-object v0

    .line 46
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    .line 48
    monitor-exit v0

    return-object v1

    .line 51
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZSSLContextFactory;->getSingletonSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 52
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    const-string v0, "ZCustSSLSocketFactory"

    const-string v1, "[getCustomSslSocketFactory] Use custom \'SSLSocketFactory\'."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 52
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->a:Z

    .line 58
    const-string v1, "ZCustSSLSocketFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getCustomSslSocketFactory]  Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", will downgrade to \'DefaultSSLSocketFactory\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Z
    .locals 2

    .line 66
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CUST_SSL_SOCKET_FACTORY:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "custSSLSocketFactorySwitch":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/deviceinfo/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 28
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 34
    :cond_0
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/common/transport/ssl/ZCustSSLSocketFactory;->a:Z

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSSLSocketFactory Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", will downgrade to \'DefaultSSLSocketFactory\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZCustSSLSocketFactory"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
