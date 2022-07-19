.class public Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;
.super Ljava/lang/Object;
.source "H5ThirdDisclaimerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5ThirdDisclaimerUtils"

.field private static needJsapiDiscaimer:Z

.field private static needKeyboardHint:Z

.field private static needWapDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needWapDialog:Z

    .line 21
    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needJsapiDiscaimer:Z

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needKeyboardHint:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 17
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->applyConfig(Ljava/lang/String;)V

    return-void
.end method

.method private static applyConfig(Ljava/lang/String;)V
    .locals 6
    .param p0, "configStr"    # Ljava/lang/String;

    const-string v0, "NO"

    const-string v1, "H5ThirdDisclaimerUtils"

    .line 40
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "applyConfig "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 42
    .local v3, "configObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-nez v2, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    const-string/jumbo v2, "wapDialog"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needWapDialog:Z

    .line 46
    const-string v2, "jsapiDiscaimer"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    sput-boolean v4, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needJsapiDiscaimer:Z

    .line 47
    const-string v0, "YES"

    const-string v2, "keyboardHint"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needKeyboardHint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v3    # "configObject":Lcom/alibaba/fastjson/JSONObject;
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "initConfig error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static initConfig()V
    .locals 3

    .line 25
    const/4 v0, 0x0

    .local v0, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 26
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils$1;-><init>()V

    const-string v2, "h5_payPrompt"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->applyConfig(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static isNeedJsapiDiscaimer()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needJsapiDiscaimer:Z

    return v0
.end method

.method public static isNeedKeyboardHint()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needKeyboardHint:Z

    return v0
.end method

.method public static isNeedWapDialog()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needWapDialog:Z

    return v0
.end method

.method public static needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 16
    .param p0, "startParams"    # Landroid/os/Bundle;
    .param p1, "currentUrl"    # Ljava/lang/String;

    .line 69
    move-object/from16 v0, p0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 70
    .local v3, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v3, v1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 71
    return v4

    .line 74
    :cond_0
    const-string v1, "fromLiveChannel"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "YES"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "H5ThirdDisclaimerUtils"

    if-eqz v1, :cond_1

    .line 75
    const-string/jumbo v1, "needShowDisclaimer disable by fromLiveChannel"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v4

    .line 79
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    .line 80
    .local v1, "url":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 81
    .local v6, "host":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v8, v2

    .line 82
    .local v8, "uri":Landroid/net/Uri;
    move-object v8, v7

    if-eqz v7, :cond_3

    .line 83
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 85
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "needShowDisclaimer url "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", host "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->isAliDomains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 88
    const-string/jumbo v2, "needShowDisclaimer bingo alidomains"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v4

    .line 92
    :cond_4
    const-string v7, "isTinyApp"

    invoke-static {v0, v7, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    .line 93
    if-eqz v7, :cond_5

    .line 94
    const-string/jumbo v2, "needShowDisclaimer bingo isTinyApp"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v4

    .line 98
    :cond_5
    const-string v7, "h5_thirdDisclaimer_rules"

    invoke-interface {v3, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "configStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "needShowDisclaimer configStr "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    move-object v10, v2

    .line 103
    .local v10, "configObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v9

    const-string/jumbo v11, "whiteList"

    invoke-static {v9, v11, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    move-object v11, v2

    .line 104
    .local v11, "whiteListArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v11, v9

    if-eqz v9, :cond_7

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 105
    const/4 v9, 0x0

    move-object v12, v2

    const/4 v13, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_7

    .line 106
    invoke-virtual {v11, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v12, "item":Ljava/lang/String;
    invoke-static {v14, v6}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 108
    .local v13, "result":Z
    if-eqz v14, :cond_6

    .line 109
    const-string/jumbo v2, "needShowDisclaimer bingo whiteList"

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v4

    .line 105
    .end local v12    # "item":Ljava/lang/String;
    .end local v13    # "result":Z
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 116
    .end local v9    # "i":I
    :cond_7
    const-string/jumbo v9, "mode"

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "mode":Ljava/lang/String;
    const-string/jumbo v12, "showThirdDisclaimer"

    invoke-static {v0, v12, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v12

    .line 119
    .local v12, "showThirdDisclaimer":Z
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "needShowDisclaimer showThirdDisclaimer "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v13, 0x0

    .line 122
    .local v13, "isInBlackList":Z
    const-string v14, "blackList"

    invoke-static {v10, v14, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    .line 123
    .local v2, "blackListArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v14

    if-eqz v14, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 124
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_9

    .line 125
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 126
    invoke-static {v15, v6}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->matchRegex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 127
    if-eqz v15, :cond_8

    .line 128
    const-string/jumbo v15, "needShowDisclaimer bingo blackList"

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v13, 0x1

    .line 130
    goto :goto_3

    .line 124
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 135
    .end local v14    # "i":I
    :cond_9
    :goto_3
    if-nez v12, :cond_a

    if-eqz v13, :cond_d

    .line 136
    :cond_a
    const-string v5, "ignoreoptionuseblacklist"

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v14, 0x1

    if-eqz v5, :cond_b

    .line 137
    if-eqz v13, :cond_d

    .line 138
    return v14

    .line 140
    :cond_b
    const-string/jumbo v5, "usetimeout"

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 141
    const/4 v4, 0x2

    return v4

    .line 142
    :cond_c
    const-string v5, "default"

    invoke-static {v9, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 143
    return v14

    .line 147
    :cond_d
    return v4
.end method
