.class public Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;
.super Ljava/lang/Object;
.source "UtilWX.java"


# static fields
.field public static final NEW_DYNAMIC_PREFIX:Ljava/lang/String; = "0000_"

.field private static final TAG:Ljava/lang/String; = "TaobaoSecurityEncryptor"

.field private static volatile staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

.field private static volatile staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 26
    return-void
.end method


# virtual methods
.method public DecryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 191
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 194
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    move-object v2, v0

    .line 196
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 197
    const/16 v1, 0x10

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, ""

    .line 198
    invoke-interface {v2, v1, p2, v3, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    move-object v3, v0

    .line 202
    .local v3, "result":[B
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 209
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v3    # "result":[B
    :cond_0
    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 208
    return-object v0

    .line 211
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public DecryptData([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    .line 239
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 243
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    move-object v2, v0

    .line 245
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 246
    const/16 v1, 0x10

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    const-string v4, ""

    .line 247
    invoke-interface {v2, v1, v3, p1, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-object v0

    .line 255
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :cond_0
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 254
    return-object v0

    .line 257
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public EncryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 168
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    move-object v2, v0

    .line 170
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 171
    const/16 v1, 0x10

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, ""

    .line 172
    invoke-interface {v2, v1, p2, v3, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v1

    move-object v3, v0

    .line 176
    .local v3, "result":[B
    move-object v3, v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 183
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v3    # "result":[B
    :cond_0
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 182
    return-object v0

    .line 185
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public EncryptData([B[B)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    .line 216
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 220
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    move-object v2, v0

    .line 222
    .local v2, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 223
    const/16 v1, 0x10

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    const-string v4, ""

    .line 224
    invoke-interface {v2, v1, v3, p1, v4}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-object v0

    .line 232
    .end local v2    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :cond_0
    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 231
    return-object v0

    .line 234
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public Get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    const-string v0, "0000_"

    .line 286
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 289
    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v2

    move-object v3, v1

    .line 291
    .local v3, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "decryptDDp":Ljava/lang/String;
    invoke-interface {v3, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 296
    .end local v0    # "decryptDDp":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 303
    .end local v3    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    :cond_1
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 301
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TaobaoSecurityEncryptor"

    const-string v4, "dynamicDecrypt string"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    return-object v1

    .line 305
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public Get(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ctx"    # Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    .line 66
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz p2, :cond_5

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    .line 69
    .local v1, "instance":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    if-nez v2, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    .line 72
    :cond_0
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    if-eqz v2, :cond_4

    .line 73
    iget-object v2, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    iget v4, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget v4, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 74
    :goto_0
    invoke-interface {v2, v4, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v0

    .line 76
    .local v4, "appKey":Ljava/lang/String;
    move-object v4, v2

    if-eqz v2, :cond_4

    .line 77
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    if-nez v2, :cond_3

    .line 78
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    .line 81
    :cond_3
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    if-eqz v2, :cond_4

    .line 82
    sget-object v2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    const/16 v5, 0x10

    invoke-interface {v2, v5, v4, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    return-object v0

    .line 92
    .end local v1    # "instance":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v4    # "appKey":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 91
    return-object v0

    .line 95
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_5
    :goto_2
    return-object v0
.end method

.method public Get([B)[B
    .locals 5
    .param p1, "data"    # [B

    const-string v0, "0000_"

    .line 334
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 337
    invoke-static {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v2

    move-object v3, v1

    .line 338
    .local v3, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    move-object v3, v2

    if-eqz v2, :cond_1

    .line 339
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    move-object v4, v1

    .line 341
    .local v4, "dataStr":Ljava/lang/String;
    move-object v4, v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v2, ""

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "decryptDDp":Ljava/lang/String;
    invoke-interface {v3, v0}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 344
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 345
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-interface {v3, v4}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0    # "result":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 355
    .end local v0    # "result":Ljava/lang/String;
    .end local v3    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v4    # "dataStr":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 353
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TaobaoSecurityEncryptor"

    const-string v4, "dynamicDecrypt byte[]"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    return-object v1

    .line 357
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    :goto_1
    return-object v1
.end method

.method public Get([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "ctx"    # Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    .line 133
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-lez v1, :cond_3

    if-eqz p2, :cond_3

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 136
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    move-object v2, v0

    .line 137
    .local v2, "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    iget v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 139
    :goto_0
    invoke-interface {v2, v1, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v4, v0

    .line 141
    .local v4, "appKey":Ljava/lang/String;
    move-object v4, v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 143
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    move-object v5, v0

    .line 145
    .local v5, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    move-object v5, v1

    if-eqz v1, :cond_2

    .line 146
    const/16 v1, 0x10

    invoke-interface {v5, v1, v4, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    return-object v0

    .line 157
    .end local v2    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :cond_2
    goto :goto_2

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 156
    return-object v0

    .line 159
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_3
    :goto_2
    return-object v0
.end method

.method public Put(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 265
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v1

    move-object v2, v0

    .line 267
    .local v2, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v2, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 270
    .local v3, "decryptDDp":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    return-object v0

    .line 273
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0000_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 279
    .end local v2    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "decryptDDp":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 277
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TaobaoSecurityEncryptor"

    const-string v4, "dynamicEncrypt string"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    return-object v0

    .line 281
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    :goto_0
    return-object v0
.end method

.method public Put(Ljava/lang/String;Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ctx"    # Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    .line 30
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz p2, :cond_5

    .line 32
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 34
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    .line 36
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    if-eqz v1, :cond_4

    .line 37
    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataStoreComponent:Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    iget v3, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    iget v3, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 38
    :goto_0
    invoke-interface {v1, v3, v2}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v0

    .line 40
    .local v3, "appKey":Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_4

    .line 41
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    if-nez v1, :cond_3

    .line 42
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 43
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    .line 46
    :cond_3
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    if-eqz v1, :cond_4

    .line 47
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->staticDataEncryptComponent:Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    const/16 v4, 0x10

    invoke-interface {v1, v4, v3, p1, v2}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    return-object v0

    .line 58
    .end local v3    # "appKey":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 57
    return-object v0

    .line 61
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_5
    :goto_2
    return-object v0
.end method

.method public Put([B)[B
    .locals 5
    .param p1, "data"    # [B

    .line 310
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 313
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v1

    move-object v2, v0

    .line 315
    .local v2, "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 318
    .local v3, "result":Ljava/lang/String;
    move-object v3, v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0000_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 327
    .end local v2    # "dynamicDataEncryptComponent":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "TaobaoSecurityEncryptor"

    const-string v4, "dynamicEncrypt byte[]"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    return-object v0

    .line 329
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public Put([BLcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;)[B
    .locals 6
    .param p1, "data"    # [B
    .param p2, "ctx"    # Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;

    .line 101
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-lez v1, :cond_3

    if-eqz p2, :cond_3

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 104
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    move-object v2, v0

    .line 105
    .local v2, "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_0
    iget v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    if-gez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p2, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 107
    :goto_0
    invoke-interface {v2, v1, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v4, v0

    .line 109
    .local v4, "appKey":Ljava/lang/String;
    move-object v4, v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    .line 111
    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    move-object v5, v0

    .line 113
    .local v5, "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    move-object v5, v1

    if-eqz v1, :cond_2

    .line 114
    const/16 v1, 0x10

    invoke-interface {v5, v1, v4, p1, v3}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeEncrypt(ILjava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    return-object v0

    .line 125
    .end local v2    # "staticDataStoreComponent":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "staticDataEncryptComponent":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    :cond_2
    goto :goto_2

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->getInstance()Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/UtilWX;->context:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/phone/mobilesdk/storage/utils/SecurityGuardRecoveryUtil;->notifyIfNecessary(Landroid/content/Context;Lcom/alibaba/wireless/security/open/SecException;)V

    .line 124
    return-object v0

    .line 127
    .end local v1    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_3
    :goto_2
    return-object v0
.end method
