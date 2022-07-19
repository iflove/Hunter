.class public Lcom/ta/utdid2/device/UTUtdidHelper2;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dePack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pUtdidWithBase64"    # Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 25
    .local v2, "lEResult":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v2, v0}, Lcom/ta/utdid2/android/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .local v0, "lUtdidByte":[B
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 29
    .end local v0    # "lUtdidByte":[B
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    .line 30
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v1

    .line 33
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v1
.end method
