.class public Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;
.super Ljava/lang/Object;
.source "SubPackageParser.java"


# direct methods
.method private static a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 2
    .param p0, "code"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 338
    new-instance v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;-><init>()V

    const/4 v1, 0x0

    .line 339
    .local v1, "h5ParseResult":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    move-object v1, v0

    iput p0, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    .line 340
    iput-object p1, v1, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->msg:Ljava/lang/String;

    .line 341
    return-object v1
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 17
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "subPackagePath"    # Ljava/lang/String;

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "SubPackageParser"

    if-eqz v1, :cond_14

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 202
    :cond_0
    const-string/jumbo v0, "needForceVerify"

    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 203
    .local v5, "needForceVerify":Z
    const-string v0, "customPublicKey"

    const-string v6, ""

    invoke-static {v1, v0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "publicKey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/CERT.json"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "certPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/SIGN.json"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, "signPath":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    const-string/jumbo v0, "parseSubPackage VerifyCert() cert file not exists!"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x4

    const-string v3, "CERT_PATH_NOT_EXIST"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->isNeedVerify()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v5, :cond_11

    .line 215
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v9, 0x0

    move-object v10, v9

    .line 217
    .local v10, "childrenFiles":[Ljava/io/File;
    move-object v10, v0

    if-eqz v0, :cond_13

    array-length v0, v10

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 222
    :cond_3
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    move v11, v4

    .line 224
    .local v11, "useNewSignKey":Z
    move v11, v0

    if-eqz v0, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 226
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "parseSubPackage VerifyCert() signPath is exist : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", publicKey : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", H5PackageParser.TAR_PUBLIC_KEY : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v11, 0x0

    .line 231
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "parseSubPackage VerifyCert() useNewSignKey : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz v11, :cond_6

    .line 235
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v9

    .line 236
    .local v12, "signText":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 237
    .end local v12    # "signText":Ljava/lang/String;
    .local v0, "joCert":Lcom/alibaba/fastjson/JSONObject;
    move-object v12, v0

    goto :goto_0

    .line 238
    .end local v0    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v9

    .line 239
    .local v12, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object v12, v0

    .line 241
    .local v12, "joCert":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 247
    :cond_7
    :try_start_0
    array-length v0, v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v0, :cond_10

    aget-object v14, v10, v13

    .line 248
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 249
    .local v9, "signKey":Ljava/lang/String;
    move-object v9, v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "CERT.json"

    invoke-static {v9, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "SIGN.json"

    .line 250
    invoke-static {v9, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "ios"

    .line 251
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "android.tiny.tar"

    .line 252
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 253
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v14, "signValue":Ljava/lang/String;
    const-string v15, "/"

    if-eqz v11, :cond_8

    .line 256
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

    invoke-static {v4, v15, v14}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .local v4, "result":Z
    goto :goto_2

    .line 259
    .end local v4    # "result":Z
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v14}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .restart local v4    # "result":Z
    goto :goto_2

    .line 262
    .end local v4    # "result":Z
    :cond_9
    sget-object v4, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v15, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v4, v15, v14}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .restart local v4    # "result":Z
    goto :goto_2

    .line 266
    .end local v4    # "result":Z
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

    invoke-static {v4, v15, v14}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 270
    .restart local v4    # "result":Z
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v16, v0

    const-string/jumbo v0, "signKey: "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " signValue: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-nez v4, :cond_f

    .line 272
    const/4 v0, 0x6

    const-string v13, "VERIFY_FAIL"

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 252
    .end local v4    # "result":Z
    .end local v14    # "signValue":Ljava/lang/String;
    :cond_b
    move/from16 v16, v0

    goto :goto_3

    .line 251
    :cond_c
    move/from16 v16, v0

    goto :goto_3

    .line 250
    :cond_d
    move/from16 v16, v0

    goto :goto_3

    .line 249
    :cond_e
    move/from16 v16, v0

    .line 247
    .end local v9    # "signKey":Ljava/lang/String;
    :cond_f
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 278
    :cond_10
    goto :goto_4

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "childrenFiles":[Ljava/io/File;
    .end local v11    # "useNewSignKey":Z
    .end local v12    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_11
    :goto_4
    const-string/jumbo v0, "parseSubPackage VerifyCert Success"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "VERIFY_CERT_SUCCESS"

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 242
    .restart local v10    # "childrenFiles":[Ljava/io/File;
    .restart local v11    # "useNewSignKey":Z
    .restart local v12    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_12
    :goto_5
    const-string/jumbo v0, "parseSubPackage VerifyCert() joCert is empty"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x5

    const-string v3, "TAR_SIGNATURE_IS_EMPTY"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 218
    .end local v11    # "useNewSignKey":Z
    .end local v12    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_13
    :goto_6
    const-string/jumbo v0, "parseSubPackage VerifyCert() childrenFiles length is 0"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x2

    const-string v3, "OFFLINE_PATH_NOT_EXIST"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 199
    .end local v5    # "needForceVerify":Z
    .end local v6    # "publicKey":Ljava/lang/String;
    .end local v7    # "certPath":Ljava/lang/String;
    .end local v8    # "signPath":Ljava/lang/String;
    .end local v10    # "childrenFiles":[Ljava/io/File;
    :cond_14
    :goto_7
    const-string/jumbo v0, "verifyCert() invalid params"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x1

    const-string v3, "INVALID_PARAM"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 25
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "resPkg"    # Ljava/util/Map;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/nebulacore/api/H5ParseResult;"
        }
    .end annotation

    .line 53
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "INVALID_PARAM"

    const/4 v3, 0x1

    const-string v4, "SubPackageParser"

    if-eqz v1, :cond_19

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_8

    .line 58
    :cond_0
    const-string v5, "appId"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    .line 59
    .local v7, "appId":Ljava/lang/String;
    move-object v7, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    const-string/jumbo v0, "parseSubPackage() invalid app_id"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "INVALID_APP_ID"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    const-string/jumbo v5, "offlineHost"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "offlineHost":Ljava/lang/String;
    const-string/jumbo v8, "onlineHost"

    invoke-static {v1, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "onlineHost":Ljava/lang/String;
    const-string v9, "appType"

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .line 68
    .local v9, "pureOnline":Z
    :goto_0
    const-string/jumbo v12, "mapHost"

    invoke-static {v1, v12, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v12

    .line 69
    .local v12, "mapHost":Z
    const-string v13, "appVersion"

    invoke-static {v1, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, "version":Ljava/lang/String;
    const-string v14, "isNebulaApp"

    invoke-static {v1, v14, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v14

    .line 73
    .local v14, "isNebula":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v11, "/"

    if-eqz v15, :cond_4

    .line 75
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v15

    const-class v16, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v15, v6

    .line 76
    .local v15, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v15, v10

    if-eqz v10, :cond_5

    .line 77
    invoke-interface {v15, v7, v13}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v6

    .line 78
    .local v16, "installedPath":Ljava/lang/String;
    move-object/from16 v17, v10

    .end local v16    # "installedPath":Ljava/lang/String;
    .local v17, "installedPath":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v17

    .end local v17    # "installedPath":Ljava/lang/String;
    .local v6, "installedPath":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 80
    move-object v5, v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 78
    .end local v6    # "installedPath":Ljava/lang/String;
    .restart local v17    # "installedPath":Ljava/lang/String;
    :cond_3
    move-object/from16 v6, v17

    .end local v17    # "installedPath":Ljava/lang/String;
    .restart local v6    # "installedPath":Ljava/lang/String;
    goto :goto_1

    .line 73
    .end local v6    # "installedPath":Ljava/lang/String;
    .end local v15    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_4
    const/4 v15, 0x0

    .line 87
    :cond_5
    :goto_1
    move-object/from16 v6, p2

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebulaappproxy/subpackage/DownloadProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v15, "subPackagePath":Ljava/lang/String;
    move-object v15, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 89
    const-string/jumbo v0, "parseSubPackage() SubPackagePath_IS_NULL"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "SubPackagePath_IS_NULL"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 93
    :cond_6
    invoke-virtual {v15, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 97
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "parseSubPackage() appId "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mapHost: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " offlineHost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " onlineHost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " subPackagePath"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " isNebula "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseSubPackage() offlinePath "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not exists!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "TINY_APP_SUBPACKAGE_PATH_NOT_EXIST"

    const-string v3, "OFFLINE_PATH_NOT_EXIST"

    const/4 v4, 0x2

    invoke-static {v7, v0, v15, v4, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 108
    :cond_8
    invoke-static {v15}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "tarPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseSubPackage() tarPath : "

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v11, "TAR_PATH_NOT_EXIST"

    move-object/from16 v17, v5

    .end local v5    # "offlineHost":Ljava/lang/String;
    .local v17, "offlineHost":Ljava/lang/String;
    const/4 v5, 0x3

    if-nez v3, :cond_18

    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object/from16 v22, v8

    goto/16 :goto_7

    .line 119
    :cond_9
    invoke-static {v1, v15}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Landroid/os/Bundle;Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v3

    const/16 v16, 0x0

    .line 120
    .local v16, "verifyResult":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    move-object/from16 v16, v3

    iget v3, v3, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    if-eqz v3, :cond_a

    .line 121
    const-string v0, "TINY_APP_SUBPACKAGE_VERIFY_CERT_FAIL"

    invoke-static {v7, v0, v15, v5, v11}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    return-object v16

    .line 126
    :cond_a
    if-nez v2, :cond_b

    .line 127
    const-string/jumbo v3, "parseSubPackage() invalid resPkg"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 131
    :cond_b
    if-eqz v12, :cond_c

    move-object v0, v8

    goto :goto_2

    :cond_c
    move-object/from16 v0, v17

    :goto_2
    move-object v3, v0

    .line 132
    .local v3, "host":Ljava/lang/String;
    const/4 v5, 0x0

    .line 133
    .local v5, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    const/16 v0, 0x800

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v11

    .line 135
    .local v11, "buffer":[B
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 137
    .local v1, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v18, v0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v18, "fis":Ljava/io/FileInputStream;
    new-instance v0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 140
    :goto_3
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    move-result-object v0

    move-object/from16 v19, v0

    .local v19, "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    if-eqz v0, :cond_17

    .line 141
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "entryName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_16

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_16

    move-object/from16 v20, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .local v20, "bis":Ljava/io/BufferedInputStream;
    const-string v1, "hpmfile.json"

    .line 143
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 148
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V

    .line 149
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_4
    invoke-virtual {v5, v11}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([B)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v21, v6

    move-object/from16 v22, v8

    .end local v8    # "onlineHost":Ljava/lang/String;
    .local v21, "count":I
    .local v22, "onlineHost":Ljava/lang/String;
    const/4 v8, -0x1

    if-eq v6, v8, :cond_d

    .line 150
    move/from16 v6, v21

    const/4 v8, 0x0

    .end local v21    # "count":I
    .local v6, "count":I
    :try_start_1
    invoke-virtual {v1, v11, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object/from16 v6, p2

    move-object/from16 v8, v22

    goto :goto_4

    .line 152
    .end local v6    # "count":I
    .restart local v21    # "count":I
    :cond_d
    move/from16 v6, v21

    .end local v21    # "count":I
    .restart local v6    # "count":I
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 153
    .local v8, "data":[B
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    if-eqz v8, :cond_14

    .line 158
    move-object/from16 v21, v1

    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v21, "outputStream":Ljava/io/ByteArrayOutputStream;
    const-string v1, "_animation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 159
    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v24, v6

    goto :goto_5

    .line 160
    :cond_e
    if-eqz v9, :cond_10

    .line 161
    const-string/jumbo v1, "yes"

    const-string v23, "h5_parse_http"

    .line 162
    move/from16 v24, v6

    .end local v6    # "count":I
    .local v24, "count":I
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 167
    .end local v24    # "count":I
    .restart local v6    # "count":I
    :cond_10
    move/from16 v24, v6

    .end local v6    # "count":I
    .restart local v24    # "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :goto_5
    const-string v1, "appConfig.json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 171
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 172
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    .line 175
    :cond_11
    const-string/jumbo v1, "tabBar.json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 176
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V

    .line 179
    :cond_12
    const-string v1, "header.json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 180
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addHeader(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v21    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v24    # "count":I
    :cond_13
    move-object/from16 v6, p2

    move-object/from16 v1, v20

    move-object/from16 v8, v22

    goto/16 :goto_3

    .line 154
    .restart local v0    # "entryName":Ljava/lang/String;
    .restart local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "count":I
    .restart local v8    # "data":[B
    :cond_14
    move-object/from16 v21, v1

    move/from16 v24, v6

    .end local v1    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "count":I
    .restart local v21    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "count":I
    move-object/from16 v6, p2

    move-object/from16 v1, v20

    move-object/from16 v8, v22

    goto/16 :goto_3

    .line 184
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v8    # "data":[B
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .end local v20    # "bis":Ljava/io/BufferedInputStream;
    .end local v21    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v24    # "count":I
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 143
    .end local v22    # "onlineHost":Ljava/lang/String;
    .restart local v0    # "entryName":Ljava/lang/String;
    .local v8, "onlineHost":Ljava/lang/String;
    .restart local v18    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v20    # "bis":Ljava/io/BufferedInputStream;
    :cond_15
    move-object/from16 v22, v8

    .end local v8    # "onlineHost":Ljava/lang/String;
    .restart local v22    # "onlineHost":Ljava/lang/String;
    move-object/from16 v6, p2

    move-object/from16 v1, v20

    goto/16 :goto_3

    .line 142
    .end local v20    # "bis":Ljava/io/BufferedInputStream;
    .end local v22    # "onlineHost":Ljava/lang/String;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "onlineHost":Ljava/lang/String;
    :cond_16
    move-object/from16 v20, v1

    move-object/from16 v22, v8

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "onlineHost":Ljava/lang/String;
    .restart local v20    # "bis":Ljava/io/BufferedInputStream;
    .restart local v22    # "onlineHost":Ljava/lang/String;
    move-object/from16 v6, p2

    goto/16 :goto_3

    .line 140
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v20    # "bis":Ljava/io/BufferedInputStream;
    .end local v22    # "onlineHost":Ljava/lang/String;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "onlineHost":Ljava/lang/String;
    :cond_17
    move-object/from16 v20, v1

    move-object/from16 v22, v8

    .line 190
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "onlineHost":Ljava/lang/String;
    .end local v18    # "fis":Ljava/io/FileInputStream;
    .end local v19    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v22    # "onlineHost":Ljava/lang/String;
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 191
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 192
    nop

    .line 194
    const-string/jumbo v0, "parseSubPackage_SUCCESS"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 184
    .end local v22    # "onlineHost":Ljava/lang/String;
    .restart local v8    # "onlineHost":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v8

    .line 185
    .end local v8    # "onlineHost":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v22    # "onlineHost":Ljava/lang/String;
    :goto_6
    :try_start_2
    const-string/jumbo v1, "parseSubPackage() exception"

    invoke-static {v4, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    const-string v1, "TINY_APP_SUBPACKAGE_PARSE_EXCEPTION"

    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    const/4 v6, 0x7

    invoke-static {v7, v1, v15, v6, v4}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 190
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 191
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    return-object v1

    .line 190
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 191
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 111
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    .end local v11    # "buffer":[B
    .end local v16    # "verifyResult":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .end local v22    # "onlineHost":Ljava/lang/String;
    .restart local v8    # "onlineHost":Ljava/lang/String;
    :cond_18
    move-object/from16 v22, v8

    .line 112
    .end local v8    # "onlineHost":Ljava/lang/String;
    .restart local v22    # "onlineHost":Ljava/lang/String;
    :goto_7
    const-string/jumbo v0, "parseSubPackage() tar package not exists!"

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "TINY_APP_SUBPACKAGE_TAR_PATH_NOT_EXIST"

    invoke-static {v7, v0, v15, v5, v11}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 115
    invoke-static {v5, v11}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 54
    .end local v7    # "appId":Ljava/lang/String;
    .end local v9    # "pureOnline":Z
    .end local v10    # "tarPath":Ljava/lang/String;
    .end local v12    # "mapHost":Z
    .end local v13    # "version":Ljava/lang/String;
    .end local v14    # "isNebula":Z
    .end local v15    # "subPackagePath":Ljava/lang/String;
    .end local v17    # "offlineHost":Ljava/lang/String;
    .end local v22    # "onlineHost":Ljava/lang/String;
    :cond_19
    :goto_8
    const-string/jumbo v1, "parseSubPackage() invalid params"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/subpackage/SubPackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "subPackagePath"    # Ljava/lang/String;

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 286
    return-object v1

    .line 289
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 290
    .local v3, "file":Ljava/io/File;
    move-object v3, v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v4, v2

    .line 292
    .local v4, "listFiles":[Ljava/io/File;
    move-object v4, v0

    if-eqz v0, :cond_2

    .line 293
    array-length v0, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    aget-object v6, v4, v5

    .line 294
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v2, "fileName":Ljava/lang/String;
    move-object v2, v6

    const-string/jumbo v7, "tar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 293
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 303
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "listFiles":[Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SubPackageParser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "subPackagePath"    # Ljava/lang/String;
    .param p3, "resultCode"    # I
    .param p4, "resultMsg"    # Ljava/lang/String;

    const-string v0, "SubPackageParser"

    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 314
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 315
    .local v3, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object v3, v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "result.code"

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 316
    const-string/jumbo v4, "result.msg"

    invoke-virtual {v1, v4, p4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    const-string/jumbo v4, "subPackagePath"

    invoke-virtual {v1, v4, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 317
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 320
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v2

    .line 321
    .local v4, "file":Ljava/io/File;
    move-object v4, v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 323
    .local v2, "listFiles":[Ljava/io/File;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 324
    const-string/jumbo v1, "notifyFailed file lists:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    array-length v1, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v6, v2, v5

    .line 326
    .local v6, "f":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "notifyFailed file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 329
    :cond_2
    const-string/jumbo v1, "notifyFailed listFiles is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v2    # "listFiles":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    return-void

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .end local v1    # "e":Ljava/lang/Exception;
    return-void

    .line 311
    .end local v3    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_4
    :goto_1
    return-void
.end method
