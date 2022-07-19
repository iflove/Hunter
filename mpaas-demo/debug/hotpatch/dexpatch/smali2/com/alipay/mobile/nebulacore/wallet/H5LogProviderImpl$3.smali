.class Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;
.super Ljava/lang/Object;
.source "H5LogProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/log/H5LogData;

.field final synthetic b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->c:Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    const-string v2, "H5WalletLogProvider"

    if-eqz v1, :cond_d

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 177
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->getSeedId()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "seedID":Ljava/lang/String;
    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam1Map()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "param1":Ljava/lang/String;
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam2Map()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "param2":Ljava/lang/String;
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam3Map()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "param3":Ljava/lang/String;
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, "param4":Ljava/lang/String;
    new-instance v4, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v13, v4

    .line 184
    .local v13, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getLogLevel()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    .line 185
    .local v6, "logLevel":I
    move v14, v4

    .end local v6    # "logLevel":I
    .local v14, "logLevel":I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 186
    invoke-virtual {v13, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    goto :goto_0

    .line 187
    :cond_1
    const/4 v4, 0x2

    if-ne v14, v4, :cond_2

    .line 188
    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    goto :goto_0

    .line 189
    :cond_2
    const/4 v4, 0x3

    if-ne v14, v4, :cond_3

    .line 190
    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 193
    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getBehaviourPro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 194
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getUserCaseId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 196
    const-string v4, "h5_show_log_upload"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v4

    .line 197
    if-eqz v4, :cond_4

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "a."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {v13, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 203
    :goto_1
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getAbTestInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAbTestInfo(Ljava/lang/String;)V

    .line 204
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getEntityContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setEntityContentId(Ljava/lang/String;)V

    .line 205
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 206
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setPageId(Ljava/lang/String;)V

    .line 208
    :cond_5
    invoke-virtual {v13, v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v13, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v13, v11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 212
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->a:Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->getParam4Map()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 213
    .local v6, "extParam":Ljava/util/Map;
    move-object v15, v4

    .end local v6    # "extParam":Ljava/util/Map;
    .local v15, "extParam":Ljava/util/Map;
    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 214
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 215
    .local v5, "entry":Ljava/util/Map$Entry;
    move-object v5, v6

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 217
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v13, v6, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_2

    .line 221
    :cond_6
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getBehaviourPro()Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "behaviourType":Ljava/lang/String;
    const/16 v16, 0x0

    .line 223
    .local v16, "readConfig":Z
    const-string v8, "NebulaTech"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 224
    const-string v4, "H5SECURITY"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 225
    const-string v4, "WEBSTAT"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v18, v9

    move/from16 v17, v14

    move-object v14, v8

    goto :goto_4

    .line 226
    :cond_8
    :goto_3
    move-object v4, v1

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    move/from16 v17, v14

    move-object v14, v8

    .end local v14    # "logLevel":I
    .local v17, "logLevel":I
    move-object v8, v12

    move-object/from16 v18, v9

    .end local v9    # "behaviourType":Ljava/lang/String;
    .local v18, "behaviourType":Ljava/lang/String;
    invoke-static/range {v4 .. v9}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/16 v16, 0x1

    .line 230
    :goto_4
    const-string v4, "header"

    const-string v5, "H5-VM"

    invoke-virtual {v13, v4, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getBehaviourPro()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 233
    invoke-virtual {v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getSeedID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5_APP_REQUEST"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v13}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->getSeedID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5_APP_UNZIP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 234
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMpaasLogger()Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/common/logging/api/BizType;->NEBULA:Lcom/alipay/mobile/common/logging/api/BizType;

    const-string v5, "com.alipay.mobile.nebula.BuildConfig"

    invoke-static {v5}, Lcom/alipay/mobile/common/logging/api/utils/SdkVersionUtil;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Lcom/alipay/mobile/common/logging/api/behavior/MpaasLogger;->behavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Lcom/alipay/mobile/common/logging/api/BizType;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_a
    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getActionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 237
    if-eqz v16, :cond_b

    invoke-static {v1, v3, v10, v11, v12}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "H5LoggerSwitch not upload : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 241
    :cond_b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void

    .line 243
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v2

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/wallet/H5LogProviderImpl$3;->b:Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;->getActionId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v13}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 246
    return-void

    .line 174
    .end local v1    # "seedID":Ljava/lang/String;
    .end local v3    # "param1":Ljava/lang/String;
    .end local v10    # "param2":Ljava/lang/String;
    .end local v11    # "param3":Ljava/lang/String;
    .end local v12    # "param4":Ljava/lang/String;
    .end local v13    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .end local v15    # "extParam":Ljava/util/Map;
    .end local v16    # "readConfig":Z
    .end local v17    # "logLevel":I
    .end local v18    # "behaviourType":Ljava/lang/String;
    :cond_d
    :goto_5
    const-string v1, "logData == null || logConfig == null, behaviorLog error!"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
