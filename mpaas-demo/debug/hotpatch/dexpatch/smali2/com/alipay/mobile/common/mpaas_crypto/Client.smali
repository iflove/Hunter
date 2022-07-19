.class public Lcom/alipay/mobile/common/mpaas_crypto/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field public static final CT_ecc_aes:I = 0x1

.field public static final CT_rsa_aes:I = 0x0

.field public static final CT_sm2_sm4:I = 0x2


# instance fields
.field public handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string/jumbo v0, "mpaas_crypto"

    const-string/jumbo v1, "openssl"

    const-string v2, "HttpWorker"

    .line 63
    :try_start_0
    const-string v3, "com.alipay.mobile.common.utils.load.LibraryLoadUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 64
    .local v5, "cls":Ljava/lang/Class;
    const-string v6, "loadLibrary"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v9, v8, v11

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v6, v4

    .line 65
    .local v6, "method":Ljava/lang/reflect/Method;
    move-object v6, v3

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-virtual {v6, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "LibraryLoadUtils load success."

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v5    # "cls":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    return-void

    .line 68
    :catchall_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LibraryLoadUtils load fail. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_1
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    return-void

    .line 73
    :catchall_1
    move-exception v0

    .line 75
    .local v0, "e2":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "System.loadLibrary load fail. "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v3    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/mpaas_crypto/Client;->handle:J

    .line 22
    iput-wide v0, p0, Lcom/alipay/mobile/common/mpaas_crypto/Client;->handle:J

    .line 23
    return-void
.end method


# virtual methods
.method public native decode([B[BI)[B
.end method

.method public native decryptSm4([B[B)[B
.end method

.method public native encode([B[BI)[[B
.end method

.method public native encryptSm4([B[B)[B
.end method

.method public native error()Ljava/lang/String;
.end method

.method public native exit()V
.end method

.method public native init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method
