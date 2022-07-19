.class public abstract Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;
.super Ljava/lang/Object;
.source "H5StartAppBaseAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5StartAppAdvice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canHandler(Ljava/lang/String;)Z
.end method

.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "targetPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 21
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v0, ""

    const-string v3, "H5StartAppAdvice"

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 85
    .local v4, "elapsedRealtime":Ljava/lang/Long;
    const-string/jumbo v5, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 86
    return-object v7

    .line 90
    :cond_0
    if-eqz v2, :cond_10

    :try_start_0
    array-length v5, v2

    const/4 v8, 0x3

    if-lt v5, v8, :cond_10

    .line 91
    move-object v5, v0

    .line 92
    .local v0, "targetAppId":Ljava/lang/String;
    .local v5, "sourceAppId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 93
    .local v9, "param":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 94
    .local v10, "sceneParam":Landroid/os/Bundle;
    const/4 v11, 0x0

    aget-object v12, v2, v11

    instance-of v12, v12, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v12, :cond_1

    .line 95
    :try_start_1
    aget-object v12, v2, v11

    check-cast v12, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v12

    goto :goto_0

    .line 203
    .end local v0    # "targetAppId":Ljava/lang/String;
    .end local v5    # "sourceAppId":Ljava/lang/String;
    .end local v9    # "param":Landroid/os/Bundle;
    .end local v10    # "sceneParam":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_3

    .line 98
    .restart local v0    # "targetAppId":Ljava/lang/String;
    .restart local v5    # "sourceAppId":Ljava/lang/String;
    .restart local v9    # "param":Landroid/os/Bundle;
    .restart local v10    # "sceneParam":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const/4 v12, 0x1

    :try_start_2
    aget-object v13, v2, v12

    instance-of v13, v13, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v13, :cond_2

    .line 99
    :try_start_3
    aget-object v13, v2, v12

    check-cast v13, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v13

    .line 101
    :cond_2
    const/4 v13, 0x2

    :try_start_4
    aget-object v14, v2, v13

    instance-of v14, v14, Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v14, :cond_3

    .line 102
    :try_start_5
    aget-object v14, v2, v13

    check-cast v14, Landroid/os/Bundle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v9, v14

    .line 104
    :cond_3
    :try_start_6
    array-length v14, v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-le v14, v8, :cond_4

    :try_start_7
    aget-object v14, v2, v8

    instance-of v14, v14, Landroid/os/Bundle;

    if-eqz v14, :cond_4

    .line 105
    aget-object v8, v2, v8

    check-cast v8, Landroid/os/Bundle;

    move-object v10, v8

    .line 108
    :cond_4
    if-nez v10, :cond_5

    .line 109
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v10, v8

    .line 111
    :cond_5
    const/4 v8, 0x0

    .line 112
    .local v8, "hasCheck":Z
    :try_start_8
    invoke-static {v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->hasCheckParam(Landroid/os/Bundle;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 113
    const/4 v8, 0x1

    .line 116
    :cond_6
    if-nez v8, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 117
    sget-object v14, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_StartApp:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v14}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v10, v14, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 118
    const-string/jumbo v11, "url"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "longUrl":Ljava/lang/String;
    const-string/jumbo v12, "u"

    invoke-static {v9, v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, "url":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const-string v15, "javascript:"

    if-nez v14, :cond_7

    :try_start_9
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v14, :cond_8

    .line 121
    :cond_7
    :try_start_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-nez v14, :cond_c

    :try_start_b
    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 122
    :cond_8
    const-class v14, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v15, v7

    .line 123
    .local v15, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v15, v14

    const-string v13, "H5StartAppBaseAdvice intercept javascript success"

    if-eqz v14, :cond_b

    .line 124
    :try_start_c
    const-string v14, "h5_enableInterceptJavascriptInScheme"

    invoke-interface {v15, v14}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v14

    move-object/from16 v19, v7

    .line 126
    .local v19, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object/from16 v20, v14

    .end local v19    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v20, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v14, :cond_a

    move-object/from16 v14, v20

    .end local v20    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v14, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    goto :goto_1

    .line 130
    .end local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_9
    goto :goto_2

    .line 126
    .restart local v20    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_a
    move-object/from16 v14, v20

    .line 127
    .end local v20    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_1
    invoke-static {v3, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v13, Landroid/util/Pair;

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v2, 0x0

    invoke-direct {v13, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v13

    .line 131
    .end local v14    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_b
    invoke-static {v3, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/util/Pair;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v13, 0x0

    invoke-direct {v2, v7, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    return-object v2

    .line 135
    .end local v15    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_c
    const/4 v15, 0x0

    :goto_2
    :try_start_d
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;->canHandler(Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    const-string v7, "URGENT_DISPLAY"

    const-string v13, " param:"

    const-string v14, " targetAppId:"

    move-object/from16 v20, v4

    .end local v4    # "elapsedRealtime":Ljava/lang/Long;
    .local v20, "elapsedRealtime":Ljava/lang/Long;
    const-string/jumbo v4, "sourceAppId "

    if-eqz v2, :cond_d

    .line 136
    :try_start_e
    const-string v2, "Advice.startApp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v18, "appId"

    const/16 v17, 0x0

    aput-object v18, v6, v17

    const/16 v16, 0x1

    aput-object v0, v6, v16

    move/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "hasCheck":Z
    .local v17, "hasCheck":Z
    invoke-static {v2, v8, v6}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;-><init>()V

    move-object v4, v15

    .line 143
    .local v4, "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    move-object v4, v2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v6, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 144
    iput-object v5, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    .line 145
    iput-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 146
    iput-object v10, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    .line 147
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;

    invoke-direct {v6, v1, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 169
    new-instance v2, Landroid/util/Pair;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 171
    .end local v4    # "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .end local v17    # "hasCheck":Z
    .restart local v8    # "hasCheck":Z
    :cond_d
    move/from16 v17, v8

    .end local v8    # "hasCheck":Z
    .restart local v17    # "hasCheck":Z
    invoke-static {v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5InstallAppAdvice;->enableUseDevMode(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;-><init>()V

    .line 177
    .local v2, "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    if-nez v9, :cond_e

    .line 178
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v9, v4

    .line 181
    :cond_e
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 182
    iput-object v5, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sourceAppId:Ljava/lang/String;

    .line 183
    iput-object v0, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 184
    iput-object v10, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->sceneParams:Landroid/os/Bundle;

    .line 185
    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v6, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;

    invoke-direct {v6, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 186
    invoke-virtual {v4, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 198
    new-instance v4, Landroid/util/Pair;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    return-object v4

    .line 203
    .end local v0    # "targetAppId":Ljava/lang/String;
    .end local v2    # "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .end local v5    # "sourceAppId":Ljava/lang/String;
    .end local v9    # "param":Landroid/os/Bundle;
    .end local v10    # "sceneParam":Landroid/os/Bundle;
    .end local v11    # "longUrl":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    .end local v17    # "hasCheck":Z
    :catch_1
    move-exception v0

    goto :goto_3

    .line 116
    .end local v20    # "elapsedRealtime":Ljava/lang/Long;
    .restart local v0    # "targetAppId":Ljava/lang/String;
    .local v4, "elapsedRealtime":Ljava/lang/Long;
    .restart local v5    # "sourceAppId":Ljava/lang/String;
    .restart local v8    # "hasCheck":Z
    .restart local v9    # "param":Landroid/os/Bundle;
    .restart local v10    # "sceneParam":Landroid/os/Bundle;
    :cond_f
    move-object/from16 v20, v4

    move/from16 v17, v8

    .end local v4    # "elapsedRealtime":Ljava/lang/Long;
    .end local v8    # "hasCheck":Z
    .restart local v17    # "hasCheck":Z
    .restart local v20    # "elapsedRealtime":Ljava/lang/Long;
    goto :goto_4

    .line 203
    .end local v0    # "targetAppId":Ljava/lang/String;
    .end local v5    # "sourceAppId":Ljava/lang/String;
    .end local v9    # "param":Landroid/os/Bundle;
    .end local v10    # "sceneParam":Landroid/os/Bundle;
    .end local v17    # "hasCheck":Z
    .end local v20    # "elapsedRealtime":Ljava/lang/Long;
    .restart local v4    # "elapsedRealtime":Ljava/lang/Long;
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    .line 204
    .end local v4    # "elapsedRealtime":Ljava/lang/Long;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "elapsedRealtime":Ljava/lang/Long;
    :goto_3
    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v20    # "elapsedRealtime":Ljava/lang/Long;
    .restart local v4    # "elapsedRealtime":Ljava/lang/Long;
    :cond_10
    move-object/from16 v20, v4

    .line 205
    .end local v4    # "elapsedRealtime":Ljava/lang/Long;
    .restart local v20    # "elapsedRealtime":Ljava/lang/Long;
    :cond_11
    :goto_4
    nop

    .line 206
    :goto_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 70
    return-void
.end method
