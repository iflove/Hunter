.class Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;
.super Ljava/lang/Object;
.source "H5OpenAuthPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .line 160
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 163
    :cond_0
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 164
    .local v2, "startParams":Landroid/os/Bundle;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v3

    .line 166
    .local v4, "url":Ljava/lang/String;
    const-string v0, "isTinyApp"

    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    .line 167
    .local v6, "isTinyApp":Z
    const-string v0, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v7

    .line 168
    .local v7, "isTinyEmbedH5Page":Z
    const-string v8, "appId"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 169
    .local v9, "currentPageAppId":Ljava/lang/String;
    const-string v10, "H5OpenAuthPlugin"

    if-eqz v6, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 170
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "try get appId from MINI_PROGRAM_WEBVIEW_TAG: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    move-object v11, v9

    .line 176
    .local v11, "currentAppId":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppMiniServicePlugin;->appIsMiniService(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    .line 177
    .local v5, "isMiniService":Z
    move v5, v0

    if-eqz v0, :cond_2

    .line 178
    const-string/jumbo v0, "parentAppId"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 181
    :cond_2
    const-string v0, "appVersion"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "appVersion":Ljava/lang/String;
    const/4 v13, 0x0

    .line 183
    .local v13, "thirdPlatformAppId":Ljava/lang/String;
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-object v14, v3

    .line 186
    .local v14, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v14, v0

    if-eqz v0, :cond_6

    .line 187
    nop

    .line 188
    invoke-interface {v14, v9, v12}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getThirdPlatform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v3

    .line 189
    .local v15, "thirdPlatform":Ljava/lang/String;
    move-object v15, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "thirdPlatform is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_0
    invoke-static {v15}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v3, 0x0

    move-object/from16 v17, v3

    .line 193
    .local v17, "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v0

    .end local v17    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 194
    const-string v0, "alipay"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "startParams":Landroid/os/Bundle;
    .local v17, "startParams":Landroid/os/Bundle;
    :try_start_1
    invoke-static {v3, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    move-object/from16 v18, v2

    .line 196
    .local v18, "clientName":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    .end local v18    # "clientName":Lcom/alibaba/fastjson/JSONObject;
    .local v2, "clientName":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    const-string v0, "id"

    move-object/from16 v18, v3

    .end local v3    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    .local v18, "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v3, ""

    .line 198
    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v0

    .end local v13    # "thirdPlatformAppId":Ljava/lang/String;
    .local v0, "thirdPlatformAppId":Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v0    # "thirdPlatformAppId":Ljava/lang/String;
    .end local v18    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v13    # "thirdPlatformAppId":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v3

    .end local v3    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v18    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0

    .line 201
    .end local v2    # "clientName":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 193
    .end local v17    # "startParams":Landroid/os/Bundle;
    .local v2, "startParams":Landroid/os/Bundle;
    .restart local v3    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 203
    .end local v2    # "startParams":Landroid/os/Bundle;
    .end local v3    # "thirdPlatformObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "startParams":Landroid/os/Bundle;
    :goto_0
    move-object/from16 v0, v18

    goto :goto_3

    .line 201
    .end local v17    # "startParams":Landroid/os/Bundle;
    .restart local v2    # "startParams":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    .line 202
    .end local v2    # "startParams":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "startParams":Landroid/os/Bundle;
    :goto_1
    const-string v2, "catch exception "

    invoke-static {v10, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "startParams":Landroid/os/Bundle;
    .restart local v2    # "startParams":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v17, v2

    .end local v2    # "startParams":Landroid/os/Bundle;
    .restart local v17    # "startParams":Landroid/os/Bundle;
    goto :goto_2

    .line 186
    .end local v15    # "thirdPlatform":Ljava/lang/String;
    .end local v17    # "startParams":Landroid/os/Bundle;
    .restart local v2    # "startParams":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v17, v2

    .line 206
    .end local v2    # "startParams":Landroid/os/Bundle;
    .restart local v17    # "startParams":Landroid/os/Bundle;
    :goto_2
    const/4 v0, 0x0

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appId is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", appVersion is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", thirdPlatform is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isTinyEmbedH5Page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 211
    move-object v13, v9

    .line 213
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "scopeNicks":Ljava/util/List;
    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 215
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string/jumbo v15, "scopeNicks"

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "url":Ljava/lang/String;
    .local v18, "url":Ljava/lang/String;
    invoke-static {v3, v15, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 216
    .local v0, "scopeNicksArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v0, v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "scopeNicksArray is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 219
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 223
    .end local v3    # "i":I
    :cond_8
    iget-object v3, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 224
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "showErrorTip"

    const/4 v15, 0x1

    invoke-static {v3, v4, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 227
    .local v3, "showErrorTip":Z
    if-nez v7, :cond_9

    if-nez v6, :cond_c

    .line 228
    :cond_9
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 229
    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move-object v15, v8

    .line 230
    .local v15, "parsedAppId":Ljava/lang/String;
    move-object v8, v4

    .end local v15    # "parsedAppId":Ljava/lang/String;
    .local v8, "parsedAppId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 231
    move-object v13, v8

    goto :goto_5

    .line 236
    :cond_a
    const-string v4, "20000778"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 238
    const-string v4, "60000146"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 241
    const-string v4, "60000033"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    :cond_b
    :goto_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 249
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v10, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v15, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v4, v10, v15}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 250
    return-void

    .line 254
    .end local v8    # "parsedAppId":Ljava/lang/String;
    :cond_c
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v4}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string v8, "isvAppId"

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "isvAppId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "isvAppId is "

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v8, 0x0

    .line 258
    .local v8, "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    iget-object v15, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 259
    invoke-virtual {v15}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    move-object/from16 v26, v0

    .end local v0    # "scopeNicksArray":Lcom/alibaba/fastjson/JSONArray;
    .local v26, "scopeNicksArray":Lcom/alibaba/fastjson/JSONArray;
    const-string v0, "extInfo"

    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "isvAppId":Ljava/lang/String;
    .local v19, "isvAppId":Ljava/lang/String;
    invoke-static {v15, v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 260
    .local v4, "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v15, "extInfoMap":Ljava/util/Map;
    move-object/from16 v16, v8

    .end local v8    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .local v16, "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    iget-object v8, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v8}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->contains(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 263
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 264
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 265
    .local v8, "entry":Ljava/util/Map$Entry;
    move-object/from16 v20, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v4

    .end local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .local v27, "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v15, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .end local v8    # "entry":Ljava/util/Map$Entry;
    move-object/from16 v0, v20

    move-object/from16 v4, v27

    goto :goto_6

    .line 267
    .end local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_d
    move-object/from16 v27, v4

    .end local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "extInfo is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {v15}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->mapToMapStringString(Ljava/util/Map;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    move-result-object v8

    .end local v16    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .local v8, "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    goto :goto_7

    .line 263
    .end local v8    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .end local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v16    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    :cond_e
    move-object/from16 v27, v4

    .line 270
    .end local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v8, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v4, v8}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 271
    return-void

    .line 262
    .end local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    move-object/from16 v27, v4

    .end local v4    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .restart local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v8, v16

    .line 275
    .end local v16    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .restart local v8    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    :goto_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "appExtInfoMap":Ljava/util/Map;
    if-eqz v6, :cond_10

    if-nez v7, :cond_10

    const-string/jumbo v4, "tinyapp"

    goto :goto_8

    :cond_10
    const-string v4, "h5"

    .line 279
    .local v4, "channel":Ljava/lang/String;
    :goto_8
    move-object/from16 v16, v12

    .end local v12    # "appVersion":Ljava/lang/String;
    .local v16, "appVersion":Ljava/lang/String;
    const-string v12, "channel"

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    if-eqz v6, :cond_11

    if-nez v7, :cond_11

    move-object v12, v9

    goto :goto_9

    :cond_11
    move-object v12, v13

    .line 283
    .local v12, "clientAppId":Ljava/lang/String;
    :goto_9
    move-object/from16 v28, v4

    .end local v4    # "channel":Ljava/lang/String;
    .local v28, "channel":Ljava/lang/String;
    const-string v4, "clientAppId"

    invoke-interface {v0, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v4, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->c:Ljava/util/Map;

    if-eqz v4, :cond_12

    .line 286
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 288
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    move/from16 v29, v7

    .end local v7    # "isTinyEmbedH5Page":Z
    .local v29, "isTinyEmbedH5Page":Z
    const-string v7, "appExtInfo is "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->mapToMapStringString(Ljava/util/Map;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    move-result-object v4

    .line 291
    .local v4, "appExtInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    if-eqz v5, :cond_13

    .line 294
    move-object v7, v11

    .end local v19    # "isvAppId":Ljava/lang/String;
    .local v7, "isvAppId":Ljava/lang/String;
    goto :goto_a

    .line 291
    .end local v7    # "isvAppId":Ljava/lang/String;
    .restart local v19    # "isvAppId":Ljava/lang/String;
    :cond_13
    move-object/from16 v7, v19

    .line 297
    .end local v19    # "isvAppId":Ljava/lang/String;
    .restart local v7    # "isvAppId":Ljava/lang/String;
    :goto_a
    move-object/from16 v30, v0

    .end local v0    # "appExtInfoMap":Ljava/util/Map;
    .local v30, "appExtInfoMap":Ljava/util/Map;
    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v31, v5

    .end local v5    # "isMiniService":Z
    .local v31, "isMiniService":Z
    const-string v5, "https://"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v32, v11

    .end local v11    # "currentAppId":Ljava/lang/String;
    .local v32, "currentAppId":Ljava/lang/String;
    const-string v11, ".hybrid.alipay-eco.com"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .end local v18    # "url":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    if-eqz v6, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 300
    move-object/from16 v18, v0

    .end local v0    # "url":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    const-string/jumbo v0, "url is empty use default url"

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v18    # "url":Ljava/lang/String;
    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_b

    .line 299
    :cond_14
    move-object/from16 v18, v0

    .line 304
    .end local v0    # "url":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    move-object/from16 v0, v18

    .end local v18    # "url":Ljava/lang/String;
    .restart local v0    # "url":Ljava/lang/String;
    :goto_b
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    iget-object v10, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v10}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->b(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Landroid/app/Activity;

    move-result-object v10

    iget-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move/from16 v33, v6

    .end local v6    # "isTinyApp":Z
    .local v33, "isTinyApp":Z
    iget-object v6, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin$1;->d:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;

    invoke-static {v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;->c(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthPlugin;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v10, v11, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V

    .line 305
    move-object/from16 v18, v5

    move-object/from16 v19, v13

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move/from16 v24, v3

    move-object/from16 v25, v4

    invoke-virtual/range {v18 .. v25}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->getAuthContentOrAutoAuth(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;ZLcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V

    .line 307
    return-void

    .line 161
    .end local v0    # "url":Ljava/lang/String;
    .end local v2    # "scopeNicks":Ljava/util/List;
    .end local v3    # "showErrorTip":Z
    .end local v4    # "appExtInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .end local v7    # "isvAppId":Ljava/lang/String;
    .end local v8    # "extInfo":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .end local v9    # "currentPageAppId":Ljava/lang/String;
    .end local v12    # "clientAppId":Ljava/lang/String;
    .end local v13    # "thirdPlatformAppId":Ljava/lang/String;
    .end local v14    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v15    # "extInfoMap":Ljava/util/Map;
    .end local v16    # "appVersion":Ljava/lang/String;
    .end local v17    # "startParams":Landroid/os/Bundle;
    .end local v26    # "scopeNicksArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v27    # "extInfoObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v28    # "channel":Ljava/lang/String;
    .end local v29    # "isTinyEmbedH5Page":Z
    .end local v30    # "appExtInfoMap":Ljava/util/Map;
    .end local v31    # "isMiniService":Z
    .end local v32    # "currentAppId":Ljava/lang/String;
    .end local v33    # "isTinyApp":Z
    :cond_15
    :goto_c
    return-void
.end method
