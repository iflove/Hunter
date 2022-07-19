.class public Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;
.super Ljava/lang/Object;
.source "Sm4Client.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;


# instance fields
.field private b:Lcom/alipay/mobile/common/mpaas_crypto/Client;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a:Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-direct {v0}, Lcom/alipay/mobile/common/mpaas_crypto/Client;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->b:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    return-void
.end method

.method private static a()Z
    .locals 2

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->SM4_ENCRYPT:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "T"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;
    .locals 2

    .line 21
    sget-object v0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a:Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    if-eqz v0, :cond_0

    .line 22
    return-object v0

    .line 24
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a:Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a:Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    .line 28
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a:Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;

    return-object v0

    .line 28
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public decryptSm4([B[B)[B
    .locals 3
    .param p1, "key"    # [B
    .param p2, "data"    # [B

    .line 63
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    return-object p2

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->b:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->decryptSm4([B[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decryptSm4 ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sm4Client"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v0    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public encryptSm4([B[B)[B
    .locals 3
    .param p1, "key"    # [B
    .param p2, "data"    # [B

    .line 51
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    return-object p2

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/selfencrypt/Sm4Client;->b:Lcom/alipay/mobile/common/mpaas_crypto/Client;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/mpaas_crypto/Client;->encryptSm4([B[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encryptSm4 ex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sm4Client"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method
