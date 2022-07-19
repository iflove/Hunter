.class Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;
.super Ljava/lang/Object;
.source "H5LoggerSwitch.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5LoggerSwitch"

.field private static a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->e:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->b:Ljava/util/Map;

    .line 40
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    const/4 v1, 0x0

    const-string v2, ".*"

    invoke-direct {v0, v1, v2, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, "presetRange":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;
    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;

    const-string v3, "none"

    const/16 v4, 0x64

    invoke-direct {v2, v0, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;-><init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;Ljava/lang/String;I)V

    .line 42
    .local v2, "rules":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "rulesList":Ljava/util/List;
    move-object v1, v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->b:Ljava/util/Map;

    new-instance v4, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    const-string v5, "H5_AL_JSERROR"

    invoke-direct {v4, v5, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const-string v5, "h5_al_jserror"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .end local v0    # "presetRange":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;
    .end local v1    # "rulesList":Ljava/util/List;
    .end local v2    # "rules":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5
    .param p0, "loggerSwitchStr"    # Ljava/lang/String;

    .line 49
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    .line 50
    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->getDefaultRule()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->c:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->d:Ljava/util/Map;

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->getSingleRules()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 53
    .local v2, "ruleList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 55
    .local v1, "bean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    move-object v1, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v1    # "bean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    :cond_0
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x64

    rem-long/2addr v0, v3

    long-to-int v1, v0

    sput v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2    # "ruleList":Ljava/util/List;
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5LoggerSwitch"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private static a()Z
    .locals 2

    .line 194
    const-string v0, "h5_enableLoggerSwitch"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x0

    return v1

    .line 198
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    .local v1, "regex":Ljava/util/regex/Pattern;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 70
    return v1

    .line 74
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 75
    const-string v0, "h5_logSwitch"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    .line 76
    .local v3, "h5_autoLoggerSwitch":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    return v1

    .line 84
    .end local v3    # "h5_autoLoggerSwitch":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 85
    .local v0, "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "lowerCaseSeedId":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->d:Ljava/util/Map;

    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 90
    :cond_4
    if-nez v0, :cond_5

    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->b:Ljava/util/Map;

    if-eqz v4, :cond_5

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 94
    :cond_5
    if-nez v0, :cond_6

    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->c:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    if-eqz v4, :cond_6

    .line 95
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->c:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 98
    :cond_6
    if-nez v0, :cond_7

    .line 99
    return v1

    .line 103
    :cond_7
    const-string v4, ""

    .line 104
    .local v4, "targetUrl":Ljava/lang/String;
    const-string v5, ""

    .line 105
    .local v5, "appId":Ljava/lang/String;
    const-string v6, ""

    .line 106
    .local v6, "publicId":Ljava/lang/String;
    const-string v7, ""

    .line 107
    .local v7, "url":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v2

    .line 108
    .local v9, "paramStr":Ljava/lang/StringBuilder;
    move-object v9, v8

    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "^"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-object/from16 v13, p3

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "\\^"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v14, v2

    .line 111
    .local v14, "paramList":[Ljava/lang/String;
    move-object v14, v8

    if-eqz v8, :cond_d

    array-length v8, v14

    if-lez v8, :cond_d

    .line 112
    array-length v8, v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v8, :cond_c

    aget-object v1, v14, v15

    .line 113
    .local v2, "param":Ljava/lang/String;
    move-object v2, v1

    move-object/from16 v17, v3

    .end local v3    # "lowerCaseSeedId":Ljava/lang/String;
    .local v17, "lowerCaseSeedId":Ljava/lang/String;
    const-string v3, "targetUrl="

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "="

    if-eqz v1, :cond_8

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 113
    :cond_8
    const/16 v16, 0x1

    .line 116
    :goto_3
    const-string v1, "appId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 119
    :cond_9
    const-string v1, "publicId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    :cond_a
    const-string v1, "url="

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    .end local v2    # "param":Ljava/lang/String;
    :cond_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    const/4 v1, 0x1

    goto :goto_2

    .end local v17    # "lowerCaseSeedId":Ljava/lang/String;
    .restart local v3    # "lowerCaseSeedId":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v3

    .end local v3    # "lowerCaseSeedId":Ljava/lang/String;
    .restart local v17    # "lowerCaseSeedId":Ljava/lang/String;
    move-object v2, v14

    goto :goto_4

    .line 111
    .end local v17    # "lowerCaseSeedId":Ljava/lang/String;
    .restart local v3    # "lowerCaseSeedId":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v3

    .line 127
    .end local v3    # "lowerCaseSeedId":Ljava/lang/String;
    .restart local v17    # "lowerCaseSeedId":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getRules()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v2, "rulesList":Ljava/util/List;
    move-object v2, v1

    if-eqz v1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    goto/16 :goto_b

    .line 132
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;

    .line 134
    .local v3, "rules":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;
    const/4 v8, 0x0

    .line 135
    .local v8, "urlMatch":Z
    const/4 v15, 0x0

    .line 136
    .local v15, "appIdMatch":Z
    const/16 v18, 0x0

    .line 137
    .local v18, "rangPublicId":Ljava/lang/String;
    const/16 v19, 0x0

    .line 138
    .local v19, "rangAppId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 139
    .local v20, "rangUrl":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 140
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;->getPublicId()Ljava/lang/String;

    move-result-object v18

    .line 141
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;->getAppId()Ljava/lang/String;

    move-result-object v19

    .line 142
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;->getUrl()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    goto :goto_6

    .line 139
    :cond_f
    move-object/from16 v21, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    .line 145
    .end local v20    # "rangUrl":Ljava/lang/String;
    .local v18, "rangAppId":Ljava/lang/String;
    .local v19, "rangUrl":Ljava/lang/String;
    .local v21, "rangPublicId":Ljava/lang/String;
    :goto_6
    move-object/from16 v20, v0

    .end local v0    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .local v20, "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->getRate()I

    move-result v0

    .line 147
    .local v0, "rangRate":I
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_10

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    .end local v21    # "rangPublicId":Ljava/lang/String;
    .local v1, "rangPublicId":Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 148
    const/4 v15, 0x1

    goto :goto_7

    .line 147
    .end local v1    # "rangPublicId":Ljava/lang/String;
    .restart local v21    # "rangPublicId":Ljava/lang/String;
    :cond_10
    move-object/from16 v22, v1

    move-object/from16 v1, v21

    .line 150
    .end local v21    # "rangPublicId":Ljava/lang/String;
    .restart local v1    # "rangPublicId":Ljava/lang/String;
    :cond_11
    :goto_7
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_12

    move-object/from16 v21, v2

    move-object/from16 v2, v18

    .end local v18    # "rangAppId":Ljava/lang/String;
    .local v2, "rangAppId":Ljava/lang/String;
    .local v21, "rulesList":Ljava/util/List;
    invoke-static {v5, v2}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 151
    const/4 v15, 0x1

    goto :goto_8

    .line 150
    .end local v21    # "rulesList":Ljava/util/List;
    .local v2, "rulesList":Ljava/util/List;
    .restart local v18    # "rangAppId":Ljava/lang/String;
    :cond_12
    move-object/from16 v21, v2

    move-object/from16 v2, v18

    .line 153
    .end local v18    # "rangAppId":Ljava/lang/String;
    .local v2, "rangAppId":Ljava/lang/String;
    .restart local v21    # "rulesList":Ljava/util/List;
    :cond_13
    :goto_8
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 154
    move-object/from16 v18, v5

    move-object/from16 v5, v19

    .end local v19    # "rangUrl":Ljava/lang/String;
    .local v5, "rangUrl":Ljava/lang/String;
    .local v18, "appId":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_14

    invoke-static {v7, v5}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 155
    :cond_14
    const/4 v8, 0x1

    goto :goto_9

    .line 153
    .end local v18    # "appId":Ljava/lang/String;
    .local v5, "appId":Ljava/lang/String;
    .restart local v19    # "rangUrl":Ljava/lang/String;
    :cond_15
    move-object/from16 v18, v5

    move-object/from16 v5, v19

    .line 157
    .end local v19    # "rangUrl":Ljava/lang/String;
    .local v5, "rangUrl":Ljava/lang/String;
    .restart local v18    # "appId":Ljava/lang/String;
    :cond_16
    :goto_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_17

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 158
    const/4 v15, 0x1

    .line 160
    :cond_17
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 161
    const/4 v8, 0x1

    .line 165
    :cond_18
    if-eqz v8, :cond_1b

    if-eqz v15, :cond_1b

    .line 166
    move-object/from16 v19, v1

    .end local v1    # "rangPublicId":Ljava/lang/String;
    .local v19, "rangPublicId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "outputRule":Ljava/lang/String;
    move-object/from16 v23, v2

    .end local v2    # "rangAppId":Ljava/lang/String;
    .local v23, "rangAppId":Ljava/lang/String;
    const-string v2, "mdap"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 168
    if-lez v0, :cond_1a

    sget v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->e:I

    if-gt v2, v0, :cond_19

    goto :goto_a

    :cond_19
    move-object/from16 v5, v18

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    goto/16 :goto_5

    .line 171
    :cond_1a
    :goto_a
    const/4 v2, 0x1

    return v2

    .line 165
    .end local v19    # "rangPublicId":Ljava/lang/String;
    .end local v23    # "rangAppId":Ljava/lang/String;
    .local v1, "rangPublicId":Ljava/lang/String;
    .restart local v2    # "rangAppId":Ljava/lang/String;
    :cond_1b
    move-object/from16 v19, v1

    move-object/from16 v23, v2

    .line 174
    .end local v0    # "rangRate":I
    .end local v1    # "rangPublicId":Ljava/lang/String;
    .end local v2    # "rangAppId":Ljava/lang/String;
    .end local v3    # "rules":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;
    .end local v5    # "rangUrl":Ljava/lang/String;
    .end local v8    # "urlMatch":Z
    .end local v15    # "appIdMatch":Z
    :cond_1c
    move-object/from16 v5, v18

    move-object/from16 v0, v20

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    goto/16 :goto_5

    .line 175
    .end local v18    # "appId":Ljava/lang/String;
    .end local v20    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .end local v21    # "rulesList":Ljava/util/List;
    .local v0, "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .local v2, "rulesList":Ljava/util/List;
    .local v5, "appId":Ljava/lang/String;
    :cond_1d
    move-object/from16 v20, v0

    .end local v0    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .restart local v20    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    const/4 v0, 0x0

    return v0

    .line 128
    .end local v20    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .restart local v0    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    :cond_1e
    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v18, v5

    .line 129
    .end local v0    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .end local v2    # "rulesList":Ljava/util/List;
    .end local v5    # "appId":Ljava/lang/String;
    .restart local v18    # "appId":Ljava/lang/String;
    .restart local v20    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .restart local v21    # "rulesList":Ljava/util/List;
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public static printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/lang/String;
    .param p5, "bizType"    # Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n bizType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",param1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",param2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",param4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LoggerSwitch"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
