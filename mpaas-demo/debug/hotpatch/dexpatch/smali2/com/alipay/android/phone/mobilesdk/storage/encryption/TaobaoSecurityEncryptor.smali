.class public Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;
.super Ljava/lang/Object;
.source "TaobaoSecurityEncryptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "encrypted"    # Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "encrypted"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "encrypted"    # [B

    .line 34
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "encrypted"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .line 111
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 112
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->DecryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "encrypted"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicDecrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "encrypted"    # [B

    .line 74
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Get([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "source"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dynamicEncrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "source"    # [B

    .line 66
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "source"    # Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 84
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;[B)[B
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "source"    # [B

    .line 27
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->Put([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Landroid/content/ContextWrapper;[BLjava/lang/String;)[B
    .locals 2
    .param p0, "context"    # Landroid/content/ContextWrapper;
    .param p1, "source"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .line 102
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 103
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->EncryptData([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static getDataContext(Landroid/content/ContextWrapper;)Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;
    .locals 3
    .param p0, "context"    # Landroid/content/ContextWrapper;

    .line 38
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/SsoLoginUtils;->init(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 42
    .local v2, "ctx":Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;
    move-object v2, v0

    iput-object v1, v0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    .line 43
    return-object v2
.end method

.method public static isNewDynamicCiphertext(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ciphertext"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "0000_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method public static isNewDynamicCiphertext([B)Z
    .locals 1
    .param p0, "ciphertextBytes"    # [B

    .line 138
    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 142
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/storage/encryption/TaobaoSecurityEncryptor;->isNewDynamicCiphertext(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 139
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
