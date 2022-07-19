.class Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;
.super Ljava/lang/Object;
.source "TinyAppStoragePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->checkIfSendStorageMsgToRemoteDebug(Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;

.field final synthetic val$appUserId:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;Landroid/util/Pair;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 764
    const-string v0, "appId"

    const-string v1, "TinyAppStoragePlugin"

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    if-nez v2, :cond_0

    .line 765
    return-void

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    if-eqz v2, :cond_6

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 770
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/SqliteOpenHelperManager;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/SqliteOpenHelperManager;

    move-result-object v2

    .line 771
    iget-object v3, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/SqliteOpenHelperManager;->getSqliteOpenHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/EncryptOrmliteSqliteOpenHelper;

    move-result-object v2

    .line 773
    :try_start_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 774
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/EncryptOrmliteSqliteOpenHelper;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    .line 775
    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v4

    .line 776
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 777
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/TinyAppCacheModel;

    .line 778
    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/TinyAppCacheModel;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/EncryptOrmliteSqliteOpenHelper;->getCurrentSizeKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 779
    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/TinyAppCacheModel;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/alipay/android/phone/mobilesdk/storage/database/tinyapp/TinyAppCacheModel;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 782
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 783
    const-string v4, "data"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-class v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 785
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 786
    if-eqz v3, :cond_5

    .line 787
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 788
    iget-object v5, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v5}, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    iget-object v6, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v6}, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "parentAppId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v5

    .line 790
    :goto_1
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string/jumbo v0, "remote_debug_msg"

    const-string/jumbo v5, "tinyAppRemoteDebug_storage"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string/jumbo v2, "remote_debug_content"

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tinyAppRemoteDebug_storage content : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/TinyAppStoragePlugin$6;->val$appUserId:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const v0, 0xbebc9ae

    invoke-virtual {v3, v6, v4, v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->sendDataToTinyProcessWithMsgType(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_5
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendStorageMsgToRemoteDebug exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void

    .line 768
    :cond_6
    :goto_2
    return-void
.end method
