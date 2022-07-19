.class public Lcom/alipay/mobile/nebula/util/H5ParamParser;
.super Ljava/lang/Object;
.source "H5ParamParser.java"


# static fields
.field private static final LAUNCHER_PARAM_URL:Ljava/lang/String; = "launcherParamUrl"

.field public static final TAG:Ljava/lang/String; = "H5ParamParser"

.field private static paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/util/H5ParamImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/util/H5ParamParser$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParamImp(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .line 516
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 517
    return-object v1

    .line 520
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 521
    .local v3, "longName":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    .line 522
    .local v2, "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    move-object v2, v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, "ln":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, "sn":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 527
    .end local v2    # "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .end local v3    # "longName":Ljava/lang/String;
    .end local v4    # "ln":Ljava/lang/String;
    .end local v5    # "sn":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 525
    .restart local v2    # "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .restart local v3    # "longName":Ljava/lang/String;
    .restart local v4    # "ln":Ljava/lang/String;
    .restart local v5    # "sn":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 528
    .end local v2    # "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .end local v3    # "longName":Ljava/lang/String;
    .end local v4    # "ln":Ljava/lang/String;
    .end local v5    # "sn":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public static parse(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fillDefault"    # Z

    .line 434
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    return-object p0

    .line 437
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    .line 438
    invoke-virtual {v0, p0, p2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 14
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "fillDefault"    # Z

    .line 442
    if-nez p0, :cond_0

    .line 443
    return-object p0

    .line 445
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->transParamParse(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 447
    const-string v0, "appId"

    invoke-static {p0, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000067"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 448
    .local v0, "showProgressDefault":Z
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    const-string/jumbo v2, "showProgress"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->setDefaultValue(Ljava/lang/Object;)V

    .line 450
    if-eqz p1, :cond_1

    .line 452
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->preFillDefault(Landroid/os/Bundle;)V

    .line 455
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 456
    .local v4, "longName":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebula/util/H5ParamParser;->paramMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    .line 457
    .local v3, "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    invoke-virtual {v5, p0, p1}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->unify(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 458
    .end local v3    # "param":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .end local v4    # "longName":Ljava/lang/String;
    goto :goto_0

    .line 461
    :cond_2
    nop

    .line 462
    const-string v1, "allowsBounceVertical"

    const-string v3, ""

    invoke-static {p0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "allowsBounceVertical":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "merge LONG_ALLOWS_BOUNCE_VERTICAL & LONG_CAN_PULL_DOWN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5ParamParser"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    const-string v6, "YES"

    if-nez v3, :cond_4

    .line 467
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "canPullDown"

    if-eqz v3, :cond_3

    .line 468
    invoke-virtual {p0, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 469
    :cond_3
    const-string v3, "NO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 470
    const/4 v3, 0x0

    invoke-virtual {p0, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    :cond_4
    :goto_1
    const-string/jumbo v3, "tabItemCount"

    const/4 v7, -0x1

    invoke-static {p0, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v8

    .line 478
    .local v8, "tabItemCount":I
    const-string v9, "enableTabBar"

    const-string v10, "default"

    invoke-static {p0, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, "enableTabBar":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "tabItemCount "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", enableTabBar "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 489
    if-eq v8, v7, :cond_6

    .line 490
    invoke-virtual {p0, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 492
    :cond_5
    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 493
    if-ne v8, v7, :cond_6

    .line 494
    const/4 v6, 0x4

    invoke-virtual {p0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    :cond_6
    :goto_2
    const-string/jumbo v3, "showThirdDisclaimer"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 498
    const-string/jumbo v6, "parse contains LONG_SHOW_THIRDDISCLAIMER force set true"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    :cond_7
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 504
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v3

    if-eqz v3, :cond_8

    .line 505
    const-string v3, "h5_removeShareTokenParams"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "config":Ljava/lang/String;
    const-string/jumbo v5, "shareTokenParams"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "no"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 507
    const-string/jumbo v6, "remove shareTokenParams"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {p0, v5}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 512
    .end local v3    # "config":Ljava/lang/String;
    :cond_8
    return-object p0
.end method

.method public static parseMagicOptions(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 18
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "TAG"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "showThirdDisclaimer"

    const-string v4, "UTF-8"

    .line 580
    if-nez v1, :cond_0

    .line 581
    const-string v0, "invalid magic parameter!"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void

    .line 585
    :cond_0
    const-string/jumbo v0, "u"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 586
    .local v6, "urlStr":Ljava/lang/String;
    move-object v6, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string/jumbo v0, "url"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 590
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    const-string/jumbo v0, "no url found in magic parameter"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void

    .line 595
    :cond_2
    const/4 v7, 0x0

    .line 596
    .local v7, "decodedOptions":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 597
    const-string v8, "__webview_options__"

    invoke-static {v0, v8, v5}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v5

    .line 599
    .local v8, "optionsStr":Ljava/lang/String;
    move-object v8, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    const-string/jumbo v0, "no magic options found"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void

    .line 604
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "found magic options "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :try_start_0
    invoke-static {v8, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    .line 610
    move-object v0, v5

    goto :goto_0

    .line 608
    :catchall_0
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 609
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "magic options decode exp "

    invoke-static {v2, v9, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 612
    const-string v0, "failed to decode magic options"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void

    .line 617
    :cond_4
    if-nez v7, :cond_5

    .line 618
    :try_start_1
    const-string v0, "decodedOptions is null."

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void

    .line 621
    :cond_5
    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 622
    .local v0, "pairs":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x0

    move-object v12, v5

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v10, :cond_b

    aget-object v15, v9, v13

    .line 623
    const-string v14, "="

    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 624
    .local v5, "values":[Ljava/lang/String;
    move-object v5, v14

    array-length v14, v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_9

    .line 627
    aget-object v14, v5, v11

    invoke-static {v14, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 628
    .local v14, "key":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-static {v15, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 631
    .local v15, "value":Ljava/lang/String;
    const-string v11, "launchParamsTag"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 632
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 633
    const-string v11, "appId"

    invoke-static {v1, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "appId":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "pairs":[Ljava/lang/String;
    .local v16, "pairs":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    .line 636
    invoke-virtual {v0, v11, v15}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getH5StartParam(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 637
    .local v12, "launcherParam":Landroid/os/Bundle;
    move-object v12, v0

    if-eqz v0, :cond_6

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    const-string v4, "launchParamsTag "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    .line 637
    :cond_6
    move-object/from16 v17, v4

    goto :goto_2

    .line 632
    .end local v11    # "appId":Ljava/lang/String;
    .end local v12    # "launcherParam":Landroid/os/Bundle;
    .end local v16    # "pairs":[Ljava/lang/String;
    .restart local v0    # "pairs":[Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .end local v0    # "pairs":[Ljava/lang/String;
    .restart local v16    # "pairs":[Ljava/lang/String;
    goto :goto_2

    .line 631
    .end local v16    # "pairs":[Ljava/lang/String;
    .restart local v0    # "pairs":[Ljava/lang/String;
    :cond_8
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 646
    .end local v0    # "pairs":[Ljava/lang/String;
    .restart local v16    # "pairs":[Ljava/lang/String;
    :goto_2
    const-string v0, "dr"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "delayRender"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "tt"

    .line 647
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "transparent"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "isOriginStartFromExternal"

    .line 648
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "sourcePackageName"

    .line 649
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "useScan"

    .line 650
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "schemeInnerSource"

    .line 651
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "sceneparams_sharetoken"

    .line 652
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 656
    invoke-static {v1, v14}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->remove(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "decode magic option [key] "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [value] "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 624
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "pairs":[Ljava/lang/String;
    .restart local v0    # "pairs":[Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 622
    .end local v0    # "pairs":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .restart local v16    # "pairs":[Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 662
    .end local v16    # "pairs":[Ljava/lang/String;
    .restart local v0    # "pairs":[Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v0

    .end local v0    # "pairs":[Ljava/lang/String;
    .restart local v16    # "pairs":[Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 663
    const-string/jumbo v0, "parseMagicOptions contains LONG_SHOW_THIRDDISCLAIMER force set true"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    .end local v16    # "pairs":[Ljava/lang/String;
    :cond_c
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "failed to decode magic option."

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static preFillDefault(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 543
    const-string/jumbo v0, "showOptionMenu"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 544
    const-string/jumbo v1, "so"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 546
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    .line 547
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v1

    const-string/jumbo v3, "pre-fill set showOptionMenu as "

    const-string v4, "H5ParamParser"

    if-eqz v1, :cond_0

    .line 548
    const-string v1, "h5_preFillDefault_h5App"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "config":Ljava/lang/String;
    const-string/jumbo v5, "no"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 552
    const/4 v5, 0x0

    const-string v6, "isH5app"

    invoke-static {p0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 553
    .local v5, "isH5App":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v3, v5, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    xor-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 555
    return-void

    .line 560
    .end local v1    # "config":Ljava/lang/String;
    .end local v5    # "isH5App":Z
    :cond_0
    const-string v1, "appId"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "appId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 565
    .local v5, "value":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 566
    const-string v1, "20000067"

    .line 568
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->isH5ContainerAppId(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "20000101"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 569
    const-string v6, "20000042"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 570
    :cond_2
    const/4 v5, 0x1

    .line 573
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v5    # "value":Z
    :cond_4
    return-void
.end method

.method public static remove(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 532
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->getParamImp(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    .local v1, "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 540
    :cond_1
    return-void

    .line 533
    .end local v1    # "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    :cond_2
    :goto_0
    return-void
.end method

.method public static setLauncherParams(Lcom/alibaba/fastjson/JSONObject;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "launchParams"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 676
    const-string v0, "H5ParamParser"

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 683
    .local v1, "keys":Ljava/util/Set;
    const-string/jumbo v2, "url"

    invoke-static {p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcherParamUrl"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 687
    .local v3, "key":Ljava/lang/String;
    move-object v3, v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5ParamParser;->getParamImp(Ljava/lang/String;)Lcom/alipay/mobile/nebula/util/H5ParamImpl;

    move-result-object v6

    .line 688
    .local v4, "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    move-object v4, v6

    if-eqz v6, :cond_3

    .line 689
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 690
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 691
    :cond_1
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getLongName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 692
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/util/H5ParamImpl;->getShortName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 694
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "merge config [key] "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " already exists and value not empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    goto :goto_0

    .line 700
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 701
    .local v5, "value":Ljava/lang/Object;
    move-object v5, v6

    instance-of v6, v6, Ljava/lang/String;

    const-string v7, " [value] "

    if-eqz v6, :cond_5

    .line 702
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 703
    .local v6, "stringValue":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bundle contain "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not to merge appInfo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 704
    invoke-static {v0, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 708
    :cond_4
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    .end local v6    # "stringValue":Ljava/lang/String;
    goto :goto_1

    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 711
    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 712
    :cond_6
    instance-of v6, v5, Ljava/math/BigDecimal;

    if-eqz v6, :cond_7

    .line 713
    move-object v6, v5

    check-cast v6, Ljava/math/BigDecimal;

    .line 714
    .local v6, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p1, v3, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 715
    .end local v6    # "bd":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_7
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_8

    .line 716
    move-object v6, v5

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 717
    :cond_8
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_9

    .line 718
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 719
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    :cond_9
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_a

    .line 721
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    .line 722
    .local v6, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    nop

    .line 727
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "read launch param [key] "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .end local v5    # "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 724
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ignore launch param [key] "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    goto/16 :goto_0

    .line 729
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "paramImpl":Lcom/alipay/mobile/nebula/util/H5ParamImpl;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_b
    return-void

    .line 677
    .end local v1    # "keys":Ljava/util/Set;
    :cond_c
    :goto_2
    const-string v1, "can\'t parse launch parameters as json"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public static transParamParse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 366
    move-object/from16 v0, p0

    if-nez v0, :cond_0

    .line 367
    return-object v0

    .line 369
    :cond_0
    const-string/jumbo v1, "tt"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 370
    .local v3, "transParam":Ljava/lang/String;
    move-object v3, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v4, "transparent"

    if-eqz v2, :cond_1

    .line 371
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 374
    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 375
    invoke-static {v0, v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    :cond_2
    const-string v3, "YES"

    .line 380
    :cond_3
    const-string v1, "YES"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 381
    const-string/jumbo v2, "st"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v4, "showTitleBar"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v6, "sb"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 384
    const-string/jumbo v7, "showToolBar"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 385
    const-string/jumbo v8, "sp"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v9, "showProgress"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 387
    const-string/jumbo v10, "sd"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 388
    const-string/jumbo v11, "showDomain"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v12, "pd"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 390
    const-string v13, "canPullDown"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 391
    const-string v14, "abv"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 392
    const-string v15, "allowsBounceVertical"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 393
    const-string v5, "NO"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v2, "backgroundColor"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 407
    const-string v4, "bc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 408
    const-string v5, "fullscreen"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "fullScreenStr":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v0, v5, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 411
    if-nez v5, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 412
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 414
    :cond_4
    const-string/jumbo v5, "transAnimate"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, "transAnimateStr":Ljava/lang/String;
    nop

    .line 416
    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    .line 417
    .local v5, "transAnimate":Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    if-eqz v5, :cond_7

    .line 420
    :cond_6
    const/high16 v1, -0x4d000000

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 421
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 423
    :cond_7
    const/high16 v1, 0x33000000

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    .end local v5    # "transAnimate":Z
    .end local v6    # "fullScreenStr":Ljava/lang/String;
    .end local v7    # "transAnimateStr":Ljava/lang/String;
    :cond_8
    :goto_0
    return-object v0
.end method
