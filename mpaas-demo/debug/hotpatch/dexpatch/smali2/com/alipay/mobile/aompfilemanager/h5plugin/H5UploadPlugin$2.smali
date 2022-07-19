.class Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;
.super Ljava/lang/Object;
.source "H5UploadPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->uploadFile(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

.field final synthetic val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .line 167
    move-object/from16 v10, p0

    const-string v1, "H5UploadPlugin"

    const-string v2, ""

    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    iget-object v3, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/api/H5Page;

    # setter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v0, v3}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->access$002(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)Lcom/alipay/mobile/h5container/api/H5Page;

    .line 171
    :cond_0
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 172
    const-string/jumbo v0, "url"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 173
    const-string v0, "filePath"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    const-string/jumbo v0, "name"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 175
    const-string v0, "localId"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 176
    const-string/jumbo v0, "type"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    const-string/jumbo v0, "uploadTaskId"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 178
    nop

    .line 180
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    move-object/from16 v22, v0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 182
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v22, v2

    .line 185
    :goto_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    .line 190
    :cond_1
    invoke-static {v4}, Lcom/alipay/mobile/aompfilemanager/a/c;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    nop

    .line 192
    nop

    .line 193
    const-string/jumbo v0, "tinyapp_upload_app_white_list"

    invoke-static {v0}, Lcom/alipay/mobile/aompfilemanager/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_3

    .line 195
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v5, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getAppId(Lcom/alipay/mobile/h5container/api/H5Event;)Ljava/lang/String;

    move-result-object v5

    .line 197
    array-length v11, v0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_3

    aget-object v13, v0, v12

    .line 198
    invoke-static {v13, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 199
    nop

    .line 200
    const/4 v0, 0x1

    goto :goto_2

    .line 197
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 204
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    .line 205
    const-string/jumbo v5, "tinyapp_upload_local_path_white_list"

    invoke-static {v5}, Lcom/alipay/mobile/aompfilemanager/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 207
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 208
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 209
    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 211
    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 212
    nop

    .line 213
    goto :goto_4

    .line 216
    :cond_4
    goto :goto_3

    .line 220
    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-nez v0, :cond_6

    if-nez v6, :cond_6

    .line 221
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 222
    return-void

    .line 226
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 227
    invoke-static {v4}, Lcom/alipay/mobile/aompfilemanager/a/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    :cond_7
    invoke-static {v4}, Lcom/alipay/mobile/aompfilemanager/utils/io/TinyAppFileUtils;->containsRelativeParentPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 233
    return-void

    .line 236
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "file://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 237
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    :cond_9
    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 242
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 246
    if-eqz v0, :cond_b

    .line 247
    const-string v6, "h5_uploadFile_dataPath"

    invoke-interface {v0, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string/jumbo v6, "no"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 250
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v6, 0xb

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "can not upload "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 251
    const-string v0, "H5_uploadFie_useDataPath"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v15, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v6, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v6}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->access$000(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->access$000(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    return-void

    .line 262
    :cond_b
    goto :goto_6

    .line 260
    :catchall_1
    move-exception v0

    .line 261
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_6
    const-string v0, "header"

    invoke-static {v3, v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v16

    .line 266
    const-string v0, "formData"

    invoke-static {v3, v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v17

    .line 268
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 269
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 270
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 271
    return-void

    .line 273
    :cond_c
    const-string/jumbo v0, "video"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 274
    invoke-static {v9}, Lcom/alipay/mobile/aompfilemanager/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    move-object v13, v0

    goto :goto_7

    .line 276
    :cond_d
    const-string v0, "audio"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    invoke-static {v9}, Lcom/alipay/mobile/aompfilemanager/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 278
    iget-object v11, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    iget-object v12, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v19, 0x0

    move-object/from16 v18, v0

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-virtual/range {v11 .. v22}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->uploadFile(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_e
    const-string v0, "image"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    nop

    .line 282
    new-instance v0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2$1;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object v7, v9

    move-object v11, v9

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2$1;-><init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11, v0}, Lcom/alipay/mobile/aompfilemanager/a/c;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5ImageByteListener;)V

    .line 290
    return-void

    .line 291
    :cond_f
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 292
    return-void

    .line 268
    :cond_10
    move-object v13, v4

    .line 296
    :goto_7
    iget-object v11, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;

    iget-object v12, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v0

    move-object/from16 v21, v8

    invoke-virtual/range {v11 .. v22}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin;->uploadFile(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 186
    :cond_11
    :goto_8
    iget-object v0, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, v10, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5UploadPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 187
    return-void
.end method
