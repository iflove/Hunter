.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;
.super Ljava/lang/Object;
.source "H5PackageParser.java"


# static fields
.field public static final DEFAULT_TAR_PUBLIC_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

.field public static final ENTRY_HEADER_JSON:Ljava/lang/String; = "header.json"

.field public static final ENTRY_TABBAR_JSON:Ljava/lang/String; = "tabBar.json"

.field public static final NEW_H5APP_SIGN_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

.field public static final TAG:Ljava/lang/String; = "H5PackageParser"

.field public static final TAR_PUBLIC_KEY:Ljava/lang/String;

.field public static final TAR_VERIFY_FAIL:Ljava/lang/String; = "tarVerifyFail"

.field public static sHasSetLastModifiedFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->sHasSetLastModifiedFail:Z

    .line 68
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 2
    .param p0, "code"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;-><init>()V

    const/4 v1, 0x0

    .line 86
    .local v1, "h5ParseResult":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    move-object v1, v0

    iput p0, v0, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    .line 87
    iput-object p1, v1, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->msg:Ljava/lang/String;

    .line 88
    return-object v1
.end method

.method private static a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 8
    .param p0, "tarPath"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/alipay/mobile/nebulacore/api/H5ParseResult;"
        }
    .end annotation

    .line 331
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->isNIOEnabled()Z

    move-result v0

    const-string v1, "H5PackageParser"

    if-eqz v0, :cond_0

    .line 332
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->size(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 333
    .local v4, "fileSize":J
    move-wide v4, v2

    const-wide/32 v6, 0x500000

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    const-wide/32 v2, 0x10000

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parse tar file with NIO "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->c(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 339
    .end local v4    # "fileSize":J
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parse tar file with stream "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->b(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .line 73
    const/4 v0, 0x0

    .local v0, "h5PublicRsaProvider":Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;

    .line 74
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5PublicRsaProvider;->getPublicRsa()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 76
    .local v2, "rsa":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    return-object v2

    .line 80
    .end local v2    # "rsa":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "offlineHost"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 581
    const-string v0, "h5_schedule_delete_fail_app"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 586
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyVerifyFailed appId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PackageParser"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    const/4 v2, 0x0

    .line 588
    .local v2, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 589
    new-instance v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser$1;-><init>(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 602
    .end local v2    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 27
    .param p0, "tarPath"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/alipay/mobile/nebulacore/api/H5ParseResult;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "H5PackageParser"

    .line 344
    const-string v0, "appId"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "appId":Ljava/lang/String;
    const-string/jumbo v0, "offlineHost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "offlineHost":Ljava/lang/String;
    const-string/jumbo v0, "onlineHost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "onlineHost":Ljava/lang/String;
    const-string v0, "appType"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 349
    .local v9, "pureOnline":Z
    const-string/jumbo v0, "mapHost"

    invoke-static {v1, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v10

    .line 350
    .local v10, "mapHost":Z
    const-string v0, "appVersion"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 351
    .local v11, "version":Ljava/lang/String;
    const-string v0, "isNebulaApp"

    invoke-static {v1, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v12

    .line 353
    .local v12, "isNebula":Z
    const/4 v0, 0x0

    .line 354
    .local v0, "hasSetTinyFile":Z
    const/4 v13, 0x0

    .line 355
    .local v13, "hasPermissionFile":Z
    const-string v14, "api_permission"

    const/4 v15, 0x0

    if-eqz v12, :cond_5

    .line 356
    const-class v16, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 357
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object/from16 v17, v15

    .line 358
    .local v17, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object/from16 v18, v16

    .end local v17    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v18, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v16, :cond_4

    .line 359
    move-object/from16 v7, v18

    .end local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v7, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-interface {v7, v4, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v17

    move-object/from16 v18, v15

    .line 360
    .local v18, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object/from16 v19, v17

    .end local v18    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v19, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v17, :cond_3

    .line 361
    move/from16 v18, v0

    move-object/from16 v8, v19

    .end local v0    # "hasSetTinyFile":Z
    .end local v19    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v8, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v18, "hasSetTinyFile":Z
    iget-object v0, v8, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    move-object/from16 v19, v15

    .line 362
    .local v19, "extent":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object/from16 v20, v15

    .line 363
    .local v20, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    nop

    .line 364
    invoke-static {v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v15

    .line 365
    .local v21, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object/from16 v22, v15

    .line 366
    .local v22, "api":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v23, v0

    .end local v22    # "api":Lcom/alibaba/fastjson/JSONObject;
    .local v23, "api":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_2

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    move-object/from16 v15, v23

    .end local v23    # "api":Lcom/alibaba/fastjson/JSONObject;
    .local v15, "api":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v0, v4, v15}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->putJson(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    .line 368
    .end local v15    # "api":Lcom/alibaba/fastjson/JSONObject;
    .restart local v23    # "api":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    move-object/from16 v15, v23

    .line 372
    .end local v23    # "api":Lcom/alibaba/fastjson/JSONObject;
    .restart local v15    # "api":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    const/4 v0, 0x1

    .line 373
    .end local v18    # "hasSetTinyFile":Z
    .restart local v0    # "hasSetTinyFile":Z
    const/4 v13, 0x1

    move/from16 v18, v0

    goto :goto_2

    .line 366
    .end local v0    # "hasSetTinyFile":Z
    .end local v15    # "api":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "hasSetTinyFile":Z
    .restart local v23    # "api":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    move-object/from16 v15, v23

    .end local v23    # "api":Lcom/alibaba/fastjson/JSONObject;
    .restart local v15    # "api":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 360
    .end local v8    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v15    # "api":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "hasSetTinyFile":Z
    .end local v20    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "permission":Ljava/lang/String;
    .restart local v0    # "hasSetTinyFile":Z
    .local v19, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    move/from16 v18, v0

    move-object/from16 v8, v19

    .end local v0    # "hasSetTinyFile":Z
    .end local v19    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v8    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v18    # "hasSetTinyFile":Z
    goto :goto_2

    .line 358
    .end local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v8    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v0    # "hasSetTinyFile":Z
    .local v18, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_4
    move-object/from16 v7, v18

    move/from16 v18, v0

    .end local v0    # "hasSetTinyFile":Z
    .restart local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v18, "hasSetTinyFile":Z
    goto :goto_2

    .line 355
    .end local v7    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v18    # "hasSetTinyFile":Z
    .restart local v0    # "hasSetTinyFile":Z
    :cond_5
    move/from16 v18, v0

    .line 379
    .end local v0    # "hasSetTinyFile":Z
    .restart local v18    # "hasSetTinyFile":Z
    :goto_2
    if-eqz v10, :cond_6

    move-object v0, v6

    goto :goto_3

    :cond_6
    move-object v0, v5

    :goto_3
    move-object v7, v0

    .line 380
    .local v7, "host":Ljava/lang/String;
    const/4 v8, 0x0

    .line 381
    .local v8, "tis":Lcom/alipay/mobile/nebula/util/tar/TarInputStream;
    const/16 v0, 0x800

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v15

    .line 383
    .local v15, "buffer":[B
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    .end local v6    # "onlineHost":Ljava/lang/String;
    .local v19, "onlineHost":Ljava/lang/String;
    :try_start_1
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 385
    .local v6, "bis":Ljava/io/BufferedInputStream;
    move-object/from16 v20, v0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v20, "fis":Ljava/io/FileInputStream;
    new-instance v0, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;

    invoke-direct {v0, v6}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0

    const/16 v22, 0x0

    .line 388
    :goto_4
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    move-result-object v0

    move-object/from16 v21, v0

    .local v21, "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    if-eqz v0, :cond_12

    .line 389
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "entryName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->isDirectory()Z

    move-result v22

    if-nez v22, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    move-object/from16 v23, v6

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .local v23, "bis":Ljava/io/BufferedInputStream;
    const-string v6, "hpmfile.json"

    .line 392
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 397
    new-instance v6, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v6}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 398
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_5
    move/from16 v24, v10

    .end local v10    # "mapHost":Z
    .local v24, "mapHost":Z
    :try_start_2
    invoke-virtual {v8, v15}, Lcom/alipay/mobile/nebula/util/tar/TarInputStream;->read([B)I

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v22, v10

    move-object/from16 v25, v11

    .end local v11    # "version":Ljava/lang/String;
    .local v22, "count":I
    .local v25, "version":Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 399
    move/from16 v10, v22

    const/4 v11, 0x0

    .end local v22    # "count":I
    .local v10, "count":I
    :try_start_3
    invoke-virtual {v6, v15, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move/from16 v10, v24

    move-object/from16 v11, v25

    goto :goto_5

    .line 401
    .end local v10    # "count":I
    .restart local v22    # "count":I
    :cond_7
    move/from16 v10, v22

    .end local v22    # "count":I
    .restart local v10    # "count":I
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 403
    .local v11, "data":[B
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 404
    if-eqz v11, :cond_f

    .line 409
    move-object/from16 v22, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v22, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v26, v10

    .end local v10    # "count":I
    .local v26, "count":I
    const-string v10, "entryName "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v6, "_animation"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 412
    invoke-interface {v2, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 413
    :cond_8
    if-eqz v9, :cond_a

    .line 414
    const-string/jumbo v6, "yes"

    const-string v10, "h5_parse_http"

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 415
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "http://"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "https://"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 419
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :goto_6
    invoke-static {v0, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 423
    if-nez v18, :cond_b

    .line 424
    const/4 v13, 0x1

    .line 425
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 426
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v6

    invoke-interface {v6, v4, v11}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->put(Ljava/lang/String;[B)V

    .line 432
    :cond_b
    const-string v6, "appConfig.json"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 433
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v6

    invoke-virtual {v6, v4, v11}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 434
    const/4 v6, 0x1

    sput-boolean v6, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    goto :goto_7

    .line 432
    :cond_c
    const/4 v6, 0x1

    .line 437
    :goto_7
    const-string/jumbo v10, "tabBar.json"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 438
    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V

    .line 441
    :cond_d
    const-string v10, "header.json"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 442
    invoke-static {v4, v11}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addHeader(Ljava/lang/String;[B)V

    .line 445
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v11    # "data":[B
    .end local v22    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "count":I
    :cond_e
    move-object/from16 v22, v0

    move-object/from16 v6, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    goto/16 :goto_4

    .line 404
    .restart local v0    # "entryName":Ljava/lang/String;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "count":I
    .restart local v11    # "data":[B
    :cond_f
    move-object/from16 v22, v6

    move/from16 v26, v10

    const/4 v6, 0x1

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "count":I
    .restart local v22    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v26    # "count":I
    goto :goto_8

    .line 458
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v20    # "fis":Ljava/io/FileInputStream;
    .end local v21    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .end local v22    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v23    # "bis":Ljava/io/BufferedInputStream;
    .end local v25    # "version":Ljava/lang/String;
    .end local v26    # "count":I
    .local v11, "version":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v11

    .end local v11    # "version":Ljava/lang/String;
    .restart local v25    # "version":Ljava/lang/String;
    goto :goto_9

    .line 392
    .end local v24    # "mapHost":Z
    .end local v25    # "version":Ljava/lang/String;
    .restart local v0    # "entryName":Ljava/lang/String;
    .local v10, "mapHost":Z
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v20    # "fis":Ljava/io/FileInputStream;
    .restart local v21    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v23    # "bis":Ljava/io/BufferedInputStream;
    :cond_10
    move/from16 v24, v10

    move-object/from16 v25, v11

    const/4 v6, 0x1

    .end local v10    # "mapHost":Z
    .end local v11    # "version":Ljava/lang/String;
    .restart local v24    # "mapHost":Z
    .restart local v25    # "version":Ljava/lang/String;
    goto :goto_8

    .line 391
    .end local v23    # "bis":Ljava/io/BufferedInputStream;
    .end local v24    # "mapHost":Z
    .end local v25    # "version":Ljava/lang/String;
    .local v6, "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "mapHost":Z
    .restart local v11    # "version":Ljava/lang/String;
    :cond_11
    move-object/from16 v23, v6

    move/from16 v24, v10

    move-object/from16 v25, v11

    const/4 v6, 0x1

    .line 388
    .end local v0    # "entryName":Ljava/lang/String;
    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "mapHost":Z
    .end local v11    # "version":Ljava/lang/String;
    .end local v21    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v23    # "bis":Ljava/io/BufferedInputStream;
    .restart local v24    # "mapHost":Z
    .restart local v25    # "version":Ljava/lang/String;
    :goto_8
    move-object/from16 v22, v0

    move-object/from16 v6, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    goto/16 :goto_4

    .line 448
    .end local v23    # "bis":Ljava/io/BufferedInputStream;
    .end local v24    # "mapHost":Z
    .end local v25    # "version":Ljava/lang/String;
    .restart local v6    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "mapHost":Z
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v21    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    :cond_12
    move-object/from16 v23, v6

    move/from16 v24, v10

    move-object/from16 v25, v11

    .end local v6    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "mapHost":Z
    .end local v11    # "version":Ljava/lang/String;
    .restart local v23    # "bis":Ljava/io/BufferedInputStream;
    .restart local v24    # "mapHost":Z
    .restart local v25    # "version":Ljava/lang/String;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    move-object/from16 v6, v22

    .line 449
    .local v6, "h5TinyAppContentProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
    move-object v6, v0

    if-eqz v0, :cond_13

    .line 450
    invoke-interface {v6, v4, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;->mergeTemplateConfigIfNeed(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 453
    :cond_13
    if-nez v13, :cond_14

    .line 454
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 455
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->clear(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    .end local v6    # "h5TinyAppContentProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
    .end local v20    # "fis":Ljava/io/FileInputStream;
    .end local v21    # "te":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .end local v23    # "bis":Ljava/io/BufferedInputStream;
    :cond_14
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 464
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 465
    nop

    .line 466
    const-string v0, "SUCCESS"

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 458
    :catchall_1
    move-exception v0

    goto :goto_9

    .end local v24    # "mapHost":Z
    .end local v25    # "version":Ljava/lang/String;
    .restart local v10    # "mapHost":Z
    .restart local v11    # "version":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v24, v10

    move-object/from16 v25, v11

    .end local v10    # "mapHost":Z
    .end local v11    # "version":Ljava/lang/String;
    .restart local v24    # "mapHost":Z
    .restart local v25    # "version":Ljava/lang/String;
    goto :goto_9

    .end local v19    # "onlineHost":Ljava/lang/String;
    .end local v24    # "mapHost":Z
    .end local v25    # "version":Ljava/lang/String;
    .local v6, "onlineHost":Ljava/lang/String;
    .restart local v10    # "mapHost":Z
    .restart local v11    # "version":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v24, v10

    move-object/from16 v25, v11

    .line 459
    .end local v6    # "onlineHost":Ljava/lang/String;
    .end local v10    # "mapHost":Z
    .end local v11    # "version":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v19    # "onlineHost":Ljava/lang/String;
    .restart local v24    # "mapHost":Z
    .restart local v25    # "version":Ljava/lang/String;
    :goto_9
    :try_start_4
    const-string/jumbo v6, "parse package exception"

    invoke-static {v3, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 461
    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 463
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 464
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 461
    return-object v3

    .line 463
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 464
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static b()Z
    .locals 3

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "ret":Z
    const-string v1, "h5_shouldverifyapp"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "configValue":Ljava/lang/String;
    const-string v2, "NO"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    const/4 v0, 0x1

    .line 671
    :cond_0
    return v0
.end method

.method private static c(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 25
    .param p0, "tarPath"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/alipay/mobile/nebulacore/api/H5ParseResult;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "H5PackageParser"

    .line 470
    const-string v0, "appId"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "appId":Ljava/lang/String;
    const-string/jumbo v0, "offlineHost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, "offlineHost":Ljava/lang/String;
    const-string/jumbo v0, "onlineHost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 474
    .local v6, "onlineHost":Ljava/lang/String;
    const-string v0, "appType"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 475
    .local v9, "pureOnline":Z
    const-string/jumbo v0, "mapHost"

    invoke-static {v1, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v10

    .line 476
    .local v10, "mapHost":Z
    const-string v0, "appVersion"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 477
    .local v11, "version":Ljava/lang/String;
    const-string v0, "isNebulaApp"

    invoke-static {v1, v0, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v12

    .line 479
    .local v12, "isNebula":Z
    const/4 v0, 0x0

    .line 480
    .local v0, "hasSetTinyFile":Z
    const/4 v13, 0x0

    .line 481
    .local v13, "hasPermissionFile":Z
    const-string v14, "api_permission"

    const/4 v15, 0x0

    if-eqz v12, :cond_5

    .line 482
    const-class v16, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object/from16 v17, v15

    .line 483
    .local v17, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object/from16 v18, v16

    .end local v17    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v18, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v16, :cond_4

    .line 484
    move-object/from16 v8, v18

    .end local v18    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v8, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    invoke-interface {v8, v4, v11}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v17

    move-object/from16 v18, v15

    .line 485
    .local v18, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object/from16 v19, v17

    .end local v18    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v19, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v17, :cond_3

    .line 486
    move/from16 v18, v0

    move-object/from16 v7, v19

    .end local v0    # "hasSetTinyFile":Z
    .end local v19    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v7, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .local v18, "hasSetTinyFile":Z
    iget-object v0, v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    move-object/from16 v19, v15

    .line 487
    .local v19, "extent":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object/from16 v20, v15

    .line 488
    .local v20, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 490
    .local v15, "api":Lcom/alibaba/fastjson/JSONObject;
    move-object v15, v0

    if-eqz v0, :cond_2

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    invoke-interface {v0, v4, v15}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->putJson(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 496
    :cond_1
    const/4 v0, 0x1

    .line 497
    .end local v18    # "hasSetTinyFile":Z
    .restart local v0    # "hasSetTinyFile":Z
    const/4 v13, 0x1

    move/from16 v18, v0

    move-object/from16 v15, v19

    goto :goto_1

    .line 503
    .end local v0    # "hasSetTinyFile":Z
    .end local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v8    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v15    # "api":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "extent":Ljava/lang/String;
    .end local v20    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "hasSetTinyFile":Z
    :cond_2
    move-object/from16 v15, v19

    goto :goto_1

    .line 485
    .end local v18    # "hasSetTinyFile":Z
    .restart local v0    # "hasSetTinyFile":Z
    .restart local v8    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v19, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_3
    move/from16 v18, v0

    move-object/from16 v7, v19

    .end local v0    # "hasSetTinyFile":Z
    .end local v19    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .restart local v18    # "hasSetTinyFile":Z
    goto :goto_1

    .line 483
    .end local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v8    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .restart local v0    # "hasSetTinyFile":Z
    .local v18, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_4
    move-object/from16 v8, v18

    move/from16 v18, v0

    .end local v0    # "hasSetTinyFile":Z
    .restart local v8    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v18, "hasSetTinyFile":Z
    goto :goto_1

    .line 481
    .end local v8    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v18    # "hasSetTinyFile":Z
    .restart local v0    # "hasSetTinyFile":Z
    :cond_5
    move/from16 v18, v0

    .line 503
    .end local v0    # "hasSetTinyFile":Z
    .restart local v18    # "hasSetTinyFile":Z
    :goto_1
    const/4 v7, 0x0

    .line 505
    .local v7, "tarFile":Lcom/alipay/mobile/nebula/util/tar/TarFile;
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/nebula/util/tar/TarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v8, p0

    :try_start_1
    invoke-direct {v0, v8}, Lcom/alipay/mobile/nebula/util/tar/TarFile;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 507
    :goto_2
    invoke-virtual {v7}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->getNextEntry()Lcom/alipay/mobile/nebula/util/tar/TarEntry;

    move-result-object v0

    move-object/from16 v19, v0

    .local v19, "tarEntry":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    if-eqz v0, :cond_11

    .line 508
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 509
    .local v15, "entryName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "hpmfile.json"

    .line 510
    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_f

    .line 514
    move-object/from16 v20, v11

    move/from16 v21, v12

    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "isNebula":Z
    .local v20, "version":Ljava/lang/String;
    .local v21, "isNebula":Z
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v11

    long-to-int v0, v11

    new-array v0, v0, [B

    .line 515
    .local v0, "buffer":[B
    invoke-virtual {v7, v0}, Lcom/alipay/mobile/nebula/util/tar/TarFile;->read([B)I

    move-result v11

    .line 516
    int-to-long v11, v11

    invoke-virtual/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/tar/TarEntry;->getSize()J

    move-result-wide v22

    cmp-long v24, v11, v22

    if-nez v24, :cond_e

    .line 520
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "entryName "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    move-object v11, v0

    .line 523
    .local v11, "data":[B
    const-string v12, "_animation"

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 524
    invoke-interface {v2, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v23, v0

    goto :goto_4

    .line 525
    :cond_6
    if-eqz v9, :cond_8

    .line 526
    const-string/jumbo v12, "yes"

    const-string v22, "h5_parse_http"

    move-object/from16 v23, v0

    .end local v0    # "buffer":[B
    .local v23, "buffer":[B
    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "http://"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "https://"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 531
    .end local v23    # "buffer":[B
    .restart local v0    # "buffer":[B
    :cond_8
    move-object/from16 v23, v0

    .end local v0    # "buffer":[B
    .restart local v23    # "buffer":[B
    if-eqz v10, :cond_9

    move-object v0, v6

    goto :goto_3

    :cond_9
    move-object v0, v5

    .line 532
    .local v0, "host":Ljava/lang/String;
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v0    # "host":Ljava/lang/String;
    :goto_4
    invoke-static {v15, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 536
    if-nez v18, :cond_a

    .line 537
    const/4 v13, 0x1

    .line 538
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 539
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    invoke-interface {v0, v4, v11}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->put(Ljava/lang/String;[B)V

    .line 545
    :cond_a
    const-string v0, "appConfig.json"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 546
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    invoke-virtual {v0, v4, v11}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 547
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->isDSL:Z

    goto :goto_5

    .line 545
    :cond_b
    const/4 v0, 0x1

    .line 550
    :goto_5
    const-string/jumbo v12, "tabBar.json"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 551
    invoke-static {v4, v11}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V

    .line 554
    :cond_c
    const-string v12, "header.json"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 555
    invoke-static {v4, v11}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->addHeader(Ljava/lang/String;[B)V

    .line 557
    .end local v11    # "data":[B
    .end local v15    # "entryName":Ljava/lang/String;
    .end local v23    # "buffer":[B
    :cond_d
    move-object/from16 v11, v20

    move/from16 v12, v21

    goto/16 :goto_2

    .line 516
    .local v0, "buffer":[B
    .restart local v15    # "entryName":Ljava/lang/String;
    :cond_e
    move-object/from16 v23, v0

    const/4 v0, 0x1

    .end local v0    # "buffer":[B
    .restart local v23    # "buffer":[B
    goto :goto_6

    .line 510
    .end local v20    # "version":Ljava/lang/String;
    .end local v21    # "isNebula":Z
    .end local v23    # "buffer":[B
    .local v11, "version":Ljava/lang/String;
    .restart local v12    # "isNebula":Z
    :cond_f
    move-object/from16 v20, v11

    move/from16 v21, v12

    const/4 v0, 0x1

    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "isNebula":Z
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v21    # "isNebula":Z
    goto :goto_6

    .line 509
    .end local v20    # "version":Ljava/lang/String;
    .end local v21    # "isNebula":Z
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v12    # "isNebula":Z
    :cond_10
    move-object/from16 v20, v11

    move/from16 v21, v12

    const/4 v0, 0x1

    .line 507
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "isNebula":Z
    .end local v15    # "entryName":Ljava/lang/String;
    .end local v19    # "tarEntry":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v21    # "isNebula":Z
    :goto_6
    move-object/from16 v11, v20

    move/from16 v12, v21

    goto/16 :goto_2

    .line 560
    .end local v20    # "version":Ljava/lang/String;
    .end local v21    # "isNebula":Z
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v12    # "isNebula":Z
    .restart local v19    # "tarEntry":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    :cond_11
    move-object/from16 v20, v11

    move/from16 v21, v12

    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "isNebula":Z
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v21    # "isNebula":Z
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    move-object v11, v15

    .line 561
    .local v11, "tinyAppContentProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
    move-object v11, v0

    if-eqz v0, :cond_12

    .line 562
    invoke-interface {v11, v4, v1, v2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;->mergeTemplateConfigIfNeed(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 565
    :cond_12
    if-nez v13, :cond_13

    .line 566
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 567
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getH5TinyAppService()Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->clear(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    .end local v11    # "tinyAppContentProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
    .end local v19    # "tarEntry":Lcom/alipay/mobile/nebula/util/tar/TarEntry;
    :cond_13
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 576
    nop

    .line 577
    const-string v0, "SUCCESS"

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    goto :goto_8

    .end local v20    # "version":Ljava/lang/String;
    .end local v21    # "isNebula":Z
    .local v11, "version":Ljava/lang/String;
    .restart local v12    # "isNebula":Z
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v8, p0

    :goto_7
    move-object/from16 v20, v11

    move/from16 v21, v12

    .line 571
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "isNebula":Z
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v20    # "version":Ljava/lang/String;
    .restart local v21    # "isNebula":Z
    :goto_8
    :try_start_3
    const-string/jumbo v11, "parse package exception"

    invoke-static {v3, v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 573
    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 575
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 573
    return-object v3

    .line 575
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getPublicKey(Z)Ljava/lang/String;
    .locals 1
    .param p0, "newSignKey"    # Z

    .line 676
    if-eqz p0, :cond_0

    .line 677
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

    return-object v0

    .line 679
    :cond_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

    return-object v0
.end method

.method public static isNeedVerify()Z
    .locals 3

    .line 659
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->b()Z

    move-result v0

    .line 660
    .local v0, "isNeedVerifyFromConfig":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parsePackage isNeedVerifyFromConfig "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5PackageParser"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->isRooted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "offlineHost"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 606
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 611
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 612
    .local v2, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v0

    const-string v3, "H5PackageParser"

    if-eqz v0, :cond_4

    invoke-interface {v2, p0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is nebulaapp,verify failed ,delete localPath:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v1

    .line 615
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "deletePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deletePath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v5, "file":Ljava/io/File;
    const-string v6, ""

    .line 621
    .local v6, "name":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 623
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 624
    .local v1, "listFiles":[Ljava/io/File;
    move-object v1, v7

    if-eqz v7, :cond_1

    .line 625
    array-length v7, v1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v1, v8

    .line 626
    .local v9, "f":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 625
    .end local v9    # "f":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 630
    :cond_1
    const-string v7, "listFiles==null"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1    # "listFiles":[Ljava/io/File;
    goto :goto_1

    .line 632
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const-string/jumbo v1, "nebulaInstallApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    invoke-static {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->deleteNebulaInstallFileAndDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v0    # "deletePath":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 641
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 642
    .local v1, "context":Landroid/content/Context;
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 643
    .local v0, "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 644
    .local v4, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not nebulaapp send verify failed broadcast to app center."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string/jumbo v3, "tarVerifyFail"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v3, "appId"

    invoke-virtual {v4, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v3, "localPath"

    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-virtual {v0, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 651
    .end local v0    # "manager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInWifi()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 652
    const-string v0, "appVersion"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "version":Ljava/lang/String;
    invoke-interface {v2, p0, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->downloadApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .end local v0    # "version":Ljava/lang/String;
    :cond_5
    return-void

    .line 607
    .end local v2    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    :cond_6
    :goto_3
    return-void
.end method

.method public static parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/alipay/mobile/nebulacore/api/H5ParseResult;"
        }
    .end annotation

    .line 100
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "verifyDuration"

    const-string/jumbo v4, "verifyResult"

    const-string v5, "INVALID_PARAM"

    const/4 v6, 0x1

    const-string v7, "H5PackageParser"

    if-nez v1, :cond_0

    .line 101
    const-string v0, "invalid params "

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v6, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 106
    const-string v0, "appId"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    const-string/jumbo v0, "offlineHost"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string/jumbo v12, "onlineHost"

    invoke-static {v1, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 110
    const-string/jumbo v13, "mapHost"

    const/4 v14, 0x0

    invoke-static {v1, v13, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v13

    .line 111
    const-string v15, "appVersion"

    invoke-static {v1, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 113
    const-string v6, "isNebulaApp"

    invoke-static {v1, v6, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 114
    move-wide/from16 v17, v9

    const-string/jumbo v9, "needForceVerify"

    invoke-static {v1, v9, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v9

    .line 115
    const-string v10, "customPublicKey"

    const-string v14, ""

    invoke-static {v1, v10, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 117
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 118
    const-string v0, "appIdIsEmpty"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v5

    const-string/jumbo v5, "parse package appId "

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mapHost "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " offlineHost:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onlineHost:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version:"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isNebula "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "/"

    if-eqz v5, :cond_3

    .line 128
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 129
    if-eqz v5, :cond_3

    .line 130
    invoke-interface {v5, v11, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "file://"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "installPath : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " offlineHost : "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_0

    .line 141
    :cond_3
    move-object v5, v0

    :goto_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 143
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 144
    if-eqz v0, :cond_4

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 145
    invoke-interface {v0, v11, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getPackageSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "inject data size is "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", version is "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v12, "size"

    invoke-virtual {v8, v12, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v0, "version"

    invoke-virtual {v8, v0, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_4
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v1, v20

    goto/16 :goto_16

    .line 157
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 158
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    const-string v13, "OFFLINE_PATH_NOT_EXIST"

    const/4 v14, 0x2

    if-nez v0, :cond_6

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "offlinePath "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not exists!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v14, v13}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 163
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v21, "h5_setLastModified"

    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v13

    const-string/jumbo v13, "no"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const-string v14, " cost:"

    if-nez v13, :cond_8

    .line 167
    move-object v13, v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 168
    move-object/from16 v23, v8

    move/from16 v24, v9

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 169
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    .line 170
    if-nez v0, :cond_7

    .line 171
    const/16 v16, 0x1

    sput-boolean v16, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->sHasSetLastModifiedFail:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 173
    :cond_7
    move-object/from16 v25, v15

    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v26, v13

    :try_start_3
    const-string v13, "lastModified "

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " setResult:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " newTime:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v26, v13

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v23, v8

    move/from16 v24, v9

    :goto_1
    move-object/from16 v26, v13

    move-object/from16 v25, v15

    .line 175
    :goto_2
    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 164
    :cond_8
    move-object/from16 v26, v3

    move-object/from16 v23, v8

    move/from16 v24, v9

    move-object/from16 v25, v15

    .line 180
    :goto_3
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    .line 181
    nop

    .line 182
    if-eqz v0, :cond_9

    .line 183
    invoke-interface {v0, v11, v1}, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;->getTemplateAppId(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 185
    goto :goto_4

    .line 189
    :cond_9
    move-object v0, v11

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".tar"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tarPath "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 192
    const-string/jumbo v0, "tar package not exists!"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v11, v5, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 194
    const/4 v0, 0x3

    const-string v1, "TAR_PATH_NOT_EXIST"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 198
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/CERT.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/SIGN.json"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 202
    const-string v0, "cert not exists!"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v11, v5, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    const/4 v0, 0x4

    const-string v1, "CERT_PATH_NOT_EXIST"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 206
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 208
    nop

    .line 209
    const-class v13, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 210
    if-eqz v13, :cond_c

    .line 211
    invoke-interface {v13}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v13

    .line 212
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 213
    const/16 v16, 0x1

    goto :goto_5

    .line 217
    :cond_c
    const/16 v16, 0x0

    :goto_5
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->isNeedVerify()Z

    move-result v13

    const-string v15, " appId:"

    if-nez v13, :cond_e

    if-eqz v24, :cond_d

    goto :goto_6

    :cond_d
    move-object v13, v1

    move-object/from16 v24, v2

    move-object v5, v15

    move-object/from16 v12, v23

    goto/16 :goto_13

    .line 218
    :cond_e
    :goto_6
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 220
    if-eqz v13, :cond_23

    move-object/from16 v24, v2

    array-length v2, v13

    if-nez v2, :cond_f

    goto/16 :goto_15

    .line 225
    :cond_f
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    .line 226
    nop

    .line 227
    if-eqz v2, :cond_11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_11

    sget-object v21, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    .line 228
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    goto :goto_7

    :cond_10
    move-object/from16 v27, v15

    goto :goto_8

    .line 229
    :cond_11
    :goto_7
    move-object/from16 v27, v15

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signPath is exist : "

    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", publicKey : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", H5PackageParser.TAR_PUBLIC_KEY : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v2, 0x0

    .line 233
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "useNewSignKey : "

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz v2, :cond_12

    .line 238
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 240
    goto :goto_9

    .line 241
    :cond_12
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 244
    :goto_9
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v13, p0

    goto/16 :goto_14

    .line 251
    :cond_13
    :try_start_4
    array-length v1, v13

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1e

    aget-object v15, v13, v3

    .line 252
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 254
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1d

    move/from16 v19, v1

    const-string v1, "CERT.json"

    invoke-static {v15, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "SIGN.json"

    .line 255
    invoke-static {v15, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "ios"

    .line 256
    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "android.tiny.tar"

    .line 258
    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    if-nez v16, :cond_19

    .line 261
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    if-eqz v2, :cond_14

    .line 265
    move-object/from16 v28, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v29, v2

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAl96KRuzoQDgt3q3478MYKwTGDV0Fz5w+sKOfz+Ar+/XkwqLjVW7bAk+/nOD9Z4mnwM+BsgU/G5KGQ9WMjcXAow/eRBSf93iqcBX5+DdlkbneNyQP7Mvcy8EwOAa3y7AetEpTeYrv5cppFUjq4TVu9w+DwV1qegfvJEAA+6gFJEcJPxD9fxJggCF02tL3k9/WDnaNYVN3dCq8fN4jWZLr6KWlAX5UW5ZVtXP9IWObFnvRNjgXQhW/LzJLdbcDlQ5U6ImFyIFf//vn3vEhzlpU6EkxdGr+FWwsRiMTY9aZ1fJiFlgAZQpInV6cbDM8LgNGPtDsYUibIi3rVFtYtHAxQwIDAQAB"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    .line 268
    :cond_14
    move-object/from16 v28, v0

    move/from16 v29, v2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    .line 272
    :cond_15
    sget-object v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b

    .line 278
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC2y61svV7Q0gmvxprTt6YX76rps8R+q+C+Qtkkk2+njIABsf10sHnl/5aQBh2s+kdo6YGlJrnKdxVso2JRzy+QbRBUgTdJmKfm5uGPdcqYuO0ur4b/QCyHTMoKJjBT8iI3hYIGhn0hACDao4xIsgzJ39grRKUa6120WbInlOLWSQIDAQAB"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 282
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v30, v6

    const-string/jumbo v6, "signKey "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " signValue "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-object v1, v12

    move-object v6, v13

    sub-long v12, v31, v21

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {v7, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    if-nez v0, :cond_18

    .line 286
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_17

    .line 287
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 288
    const-string v2, "fail"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v12, v23

    :try_start_6
    invoke-virtual {v12, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v2, v26

    :try_start_7
    invoke-virtual {v12, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_e

    .line 296
    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v12, v23

    :goto_c
    move-object/from16 v2, v26

    :goto_d
    move-object/from16 v13, p0

    goto/16 :goto_11

    .line 286
    :cond_17
    move-object/from16 v12, v23

    move-object/from16 v2, v26

    .line 291
    :goto_e
    move-object/from16 v13, p0

    :try_start_8
    invoke-static {v11, v5, v13}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    const/4 v0, 0x6

    const-string v1, "VERIFY_FAIL"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    return-object v0

    .line 296
    :catch_3
    move-exception v0

    goto/16 :goto_11

    .line 285
    :cond_18
    move-object/from16 v13, p0

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    goto :goto_10

    .line 258
    :cond_19
    move-object/from16 v28, v0

    move/from16 v29, v2

    move-object/from16 v30, v6

    move-object v1, v12

    move-object v6, v13

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    move-object/from16 v13, p0

    goto :goto_10

    .line 256
    :cond_1a
    move-object/from16 v28, v0

    move/from16 v29, v2

    move-object/from16 v30, v6

    move-object v1, v12

    move-object v6, v13

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    move-object/from16 v13, p0

    goto :goto_10

    .line 255
    :cond_1b
    move-object/from16 v28, v0

    move/from16 v29, v2

    move-object/from16 v30, v6

    move-object v1, v12

    move-object v6, v13

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    move-object/from16 v13, p0

    goto :goto_10

    .line 254
    :cond_1c
    move-object/from16 v28, v0

    goto :goto_f

    :cond_1d
    move-object/from16 v28, v0

    move/from16 v19, v1

    :goto_f
    move/from16 v29, v2

    move-object/from16 v30, v6

    move-object v1, v12

    move-object v6, v13

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    move-object/from16 v13, p0

    .line 251
    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v26, v2

    move-object v13, v6

    move-object/from16 v23, v12

    move-object/from16 v0, v28

    move/from16 v2, v29

    move-object/from16 v6, v30

    move-object v12, v1

    move/from16 v1, v19

    goto/16 :goto_a

    .line 298
    :cond_1e
    move-object/from16 v13, p0

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    goto :goto_12

    .line 296
    :catch_4
    move-exception v0

    move-object/from16 v13, p0

    move-object/from16 v12, v23

    move-object/from16 v2, v26

    .line 297
    :goto_11
    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "verify tar signature succeed elapse:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_1f

    .line 303
    const-string/jumbo v3, "success"

    invoke-virtual {v12, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_1f
    :goto_13
    move-object/from16 v1, p1

    if-nez v1, :cond_20

    .line 309
    const-string v0, "invalid resPkg"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/16 v0, 0x8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 313
    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 314
    move-object/from16 v4, v24

    invoke-static {v4, v13, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    .line 315
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_21

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 317
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 318
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "mapDuration"

    invoke-virtual {v12, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v17

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parse package elapse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string/jumbo v1, "prepare_app"

    const-string/jumbo v2, "parser_app"

    move-wide/from16 v3, v17

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 327
    return-object v0

    .line 244
    :cond_22
    move-object/from16 v13, p0

    .line 245
    :goto_14
    const-string v0, "joCert is empty"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v11, v5, v13}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    const/4 v0, 0x5

    const-string v1, "TAR_SIGNATURE_IS_EMPTY"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 221
    :cond_23
    :goto_15
    const-string v0, "childrenFiles length == 0"

    invoke-static {v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v1, v21

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0

    .line 154
    :cond_24
    move-object/from16 v1, v20

    .line 155
    :goto_16
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->a(ILjava/lang/String;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v0

    return-object v0
.end method
