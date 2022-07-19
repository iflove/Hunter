.class final Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;
.super Ljava/lang/Object;
.source "LoggerFactoryBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->bind(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/StringBuilder;

.field final synthetic e:Ljava/lang/StringBuilder;

.field final synthetic f:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->b:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->c:Z

    iput-object p4, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->d:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->e:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->f:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "licenseMD5"

    const-string v0, "last_pv_time"

    const-string/jumbo v3, "mpaas_crypto_plus"

    const-string v4, ""

    .line 409
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    move-object v8, v6

    .line 410
    .local v8, "preferences":Landroid/content/SharedPreferences;
    move-object v8, v7

    invoke-interface {v7, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, "lastPv":Ljava/lang/String;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 412
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_1
    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 413
    .local v10, "date":Ljava/util/Date;
    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 414
    .local v11, "curDate":Ljava/lang/String;
    :try_start_2
    iget-object v12, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->a:Landroid/content/Context;

    invoke-static {v12}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 416
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 417
    new-instance v12, Ljava/util/HashMap;

    const/4 v13, 0x4

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 418
    .local v12, "params":Ljava/util/Map;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v13

    invoke-interface {v13}, Lcom/alipay/mobile/common/logging/api/LogContext;->getMpaasMode()Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    .line 419
    .local v14, "mpaasMode":Ljava/lang/String;
    move-object v14, v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 422
    const-string/jumbo v13, "pb"

    move-object v14, v13

    .line 424
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v11    # "curDate":Ljava/lang/String;
    .end local v12    # "params":Ljava/util/Map;
    :cond_0
    const-string/jumbo v13, "mp_mode"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string/jumbo v13, "mp_abi"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v15

    invoke-interface {v15}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductABI()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v13, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 427
    .local v13, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v15, "mp_target"

    if-eqz v13, :cond_1

    iget v6, v13, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "unknown"

    :goto_0
    invoke-interface {v12, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v6, "channel"

    const-string/jumbo v15, "mpaas_channel"

    const-string v5, "-"

    # invokes: Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v15, v5}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v5

    const-string/jumbo v6, "mpaas_client_pv"

    sget-object v15, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_CLIENT:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v5, v6, v15, v12}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/util/Map;)V

    .line 430
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 432
    .end local v7    # "lastPv":Ljava/lang/String;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v10    # "date":Ljava/util/Date;
    .end local v13    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "mpaasMode":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 434
    :cond_2
    const/4 v12, 0x0

    :goto_1
    goto :goto_5

    .line 432
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    :goto_2
    const/4 v11, 0x0

    :goto_3
    const/4 v12, 0x0

    :goto_4
    move-object v8, v0

    .line 433
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v5, "LoggerFactory"

    const-string/jumbo v6, "mpaas client pv error "

    invoke-interface {v0, v5, v6, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v5, "mPaaSConfigLicense"

    if-eqz v0, :cond_9

    iget-boolean v0, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->b:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->c:Z

    if-nez v0, :cond_9

    .line 440
    :try_start_4
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->b(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder;->access$100(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 441
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v3, v8

    .line 442
    .local v3, "preferences":Landroid/content/SharedPreferences;
    move-object v3, v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 443
    .local v6, "licenseMD5":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/MD5Util;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v9

    .line 444
    .local v7, "md5":Ljava/lang/String;
    move-object v7, v0

    if-nez v0, :cond_3

    .line 445
    move-object v7, v4

    .line 448
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_6

    .line 469
    :cond_4
    const-string/jumbo v0, "mpaas license log is same."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 449
    :cond_5
    :goto_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v4, v0

    .line 451
    .local v4, "param4":Ljava/util/Map;
    :try_start_5
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->e:Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v11

    .line 452
    .local v8, "param4Str":Ljava/lang/String;
    const-string v9, "\\^"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v9, v12

    .line 453
    .local v9, "param4Array":[Ljava/lang/String;
    move-object v9, v0

    if-eqz v0, :cond_7

    .line 454
    array-length v0, v9

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_7
    if-ge v10, v0, :cond_7

    aget-object v11, v9, v10

    .line 455
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, v16

    .line 456
    .local v12, "kvArray":[Ljava/lang/String;
    move-object/from16 v16, v11

    .end local v12    # "kvArray":[Ljava/lang/String;
    .local v16, "kvArray":[Ljava/lang/String;
    array-length v11, v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_6

    .line 457
    const/4 v11, 0x0

    aget-object v12, v16, v11

    const/4 v13, 0x1

    aget-object v13, v16, v13

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 456
    :cond_6
    const/4 v11, 0x0

    .line 454
    .end local v16    # "kvArray":[Ljava/lang/String;
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 463
    .end local v8    # "param4Str":Ljava/lang/String;
    .end local v9    # "param4Array":[Ljava/lang/String;
    :cond_7
    goto :goto_9

    .line 461
    :catch_4
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "license parse error."

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v0

    const-string/jumbo v8, "mpaas_license"

    sget-object v9, Lcom/alipay/mobile/common/logging/api/BizType;->MPAAS_CLIENT:Lcom/alipay/mobile/common/logging/api/BizType;

    invoke-interface {v0, v8, v9, v4}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/util/Map;)V

    .line 466
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 467
    const-string/jumbo v0, "mpaas license log recorded."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 468
    nop

    .end local v4    # "param4":Ljava/util/Map;
    return-void

    .line 474
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v6    # "licenseMD5":Ljava/lang/String;
    .end local v7    # "md5":Ljava/lang/String;
    :cond_8
    :goto_a
    return-void

    .line 472
    :catch_5
    move-exception v0

    .line 473
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mpaas license record error "

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    return-void

    .line 476
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "do not record license, deleteAnytime: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fatigue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$3;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method
