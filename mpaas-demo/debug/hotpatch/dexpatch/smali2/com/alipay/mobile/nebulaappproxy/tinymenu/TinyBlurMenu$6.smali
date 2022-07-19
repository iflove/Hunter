.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;
.super Ljava/lang/Object;
.source "TinyBlurMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

.field final synthetic val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 709
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .line 712
    move-object/from16 v1, p0

    const-string v2, "_menuUpdateTime"

    const-string v3, "_"

    const-string v4, "TinyBlurMenu"

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v5

    .line 713
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 715
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 717
    const-string/jumbo v7, "userId"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string/jumbo v7, "tiny_app_url"

    iget-object v8, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->getAppUrl()Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string/jumbo v7, "tiny_blur_menu_request_rpc"

    .line 720
    const-string v8, "TINY-APP-201812041130"

    .line 721
    invoke-static {v7, v8, v0}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyAppLoggerUtils;->markEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_0
    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    .line 724
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    const-string/jumbo v9, "ta_menu_app_empty_request"

    .line 728
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 727
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "APPID is empty, h5Page == null is "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", h5Page.getParams()==null is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v9, :cond_3

    .line 731
    invoke-interface {v9}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isRelease is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    .line 732
    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->isRelease:Z
    invoke-static {v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$2400(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    return-void

    .line 737
    :cond_4
    goto :goto_4

    .line 735
    :catch_0
    move-exception v0

    .line 736
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    :goto_4
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v9

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appName:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$2502(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;

    .line 739
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppDesc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v9

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appDesc:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$2602(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;

    .line 740
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    iget-object v9, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppIcon(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v9

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->appIcon:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$2702(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->getInsideType()Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    move-result-object v0

    sget-object v9, Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;->MPAAS:Lcom/alipay/mobile/nebula/util/InsideUtils$InsideType;

    const-string v10, ""

    if-ne v0, v9, :cond_5

    .line 743
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    invoke-interface {v0, v10}, Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;->onSuccess(Ljava/lang/String;)V

    .line 744
    return-void

    .line 746
    :cond_5
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 747
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 748
    const-wide/16 v12, 0x32

    if-eqz v11, :cond_e

    .line 749
    nop

    .line 750
    invoke-static {v6, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuUtils;->getRpcDataCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 752
    :try_start_2
    const-string v0, "0"

    .line 753
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 754
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v14

    .line 755
    if-eqz v14, :cond_6

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v10}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_6
    nop

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-wide/16 v14, 0x0

    if-nez v10, :cond_7

    .line 761
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_5

    .line 760
    :cond_7
    move-wide/from16 v16, v14

    .line 763
    :goto_5
    cmp-long v0, v16, v14

    if-lez v0, :cond_a

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v16

    .line 765
    const-wide/32 v16, 0x5265c00

    .line 766
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$2800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 767
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;->access$2800(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getTinyMenuUpdateInterval(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 769
    :cond_8
    cmp-long v0, v14, v16

    if-ltz v0, :cond_9

    const/4 v7, 0x1

    :cond_9
    move v8, v7

    .line 773
    :cond_a
    goto :goto_6

    .line 771
    :catchall_1
    move-exception v0

    .line 772
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 775
    :goto_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v8, :cond_b

    goto :goto_7

    .line 798
    :cond_b
    nop

    .line 799
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6$1;

    invoke-direct {v0, v1, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;Ljava/lang/String;)V

    invoke-static {v0, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 810
    return-void

    .line 779
    :cond_c
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "[{\"appId\":\""

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\",\"method\":\"h5data\",\"params\":{\"rgn\":\"popMenu_config_popmenu-h5data\"}}]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;->val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    const-string v12, "alipay.openservice.mini.config.queryConfig"

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    invoke-interface/range {v11 .. v20}, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;->sendSimpleRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V

    .line 783
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 784
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 786
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 787
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v7

    .line 788
    if-eqz v7, :cond_d

    .line 789
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    invoke-virtual {v7}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 795
    :cond_d
    return-void

    .line 793
    :catchall_2
    move-exception v0

    .line 794
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 795
    return-void

    .line 812
    :cond_e
    :try_start_4
    const-string v0, "eyJyZXN1bHQiOnsibWVudXMiOlt7ImFjdGlvbiI6InN0YXJ0QXBwIiwiY2FsbGJhY2siOiJmdW5jdGlvbigpe30iLCJpY29uIjoiaHR0cHM6Ly96b3MuYWxpcGF5b2JqZWN0cy5jb20vY21zbW5nL2Ntcy9pbWFnZXMvaXpmZmVhYTYvYTIwMzkwNDktMzAwNy00YTA0LTllYjItNTY2ZjZjMDg4NTI5LnBuZyIsIm1pZCI6IjEwMDEiLCJuYW1lIjoi5YWz5LqOIiwib3B0aW9ucyI6IntcbiAgYXBwSWQ6ICc2NjY2NjcxOCcsXG4gIHBhcmFtOiB7XG4gICAgdXJsOiAnL3d3dy9kZXRhaWwuaHRtbCcsXG4gICAgdGlueUFwcElkOiAneyVBUFBfSUQlfScsXG4gICAgdGlueUFwcFZlcnNpb246ICd7JUFQUF9QQUNLQUdFX05JQ0slfScsIFxuICAgIHRpbnlBcHBTY2VuZTogJ3slQVBQX1NDRU5FJX0nLFxuICAgIGFwcENsZWFyVG9wOiBmYWxzZVxuICB9LFxuICBjbG9zZUN1cnJlbnRBcHA6IGZhbHNlXG59In0seyJhY3Rpb24iOiJzdGFydFNoYXJlIiwiY2FsbGJhY2siOiJmdW5jdGlvbihyZXMpe1xuICB2YXIgbXNnPXJlc1tcIm1lc3NhZ2VcIl18fFwiXCI7XG4gIGlmKG1zZy5pbmRleE9mKCdjYW5jZWxlZCcpPj0wKXtyZXR1cm47fVxuICB2YXIgZW5hYmxlVGFiQmFyID0gQWxpcGF5SlNCcmlkZ2Uuc3RhcnR1cFBhcmFtcy5lbmFibGVUYWJCYXIgPT09IHRydWUgfHwgIEFsaXBheUpTQnJpZGdlLnN0YXJ0dXBQYXJhbXMuZW5hYmxlVGFiQmFyID09PSAnWUVTJyA/ICcmZW5hYmxlVGFiQmFyPVlFUycgOiAnJztcbiAgdmFyIHNjaGVtYSA9ICdhbGlwYXlzOi8vcGxhdGZvcm1hcGkvc3RhcnRhcHA/YXBwSWQ9eyVBUFBfSUQlfScgKyBlbmFibGVUYWJCYXI7XG4gIHZhciBocmVmID0gJ3slQVBQX1VSTCV9JztcbiAgdmFyIHN1cHBvcnRBbmRyb2lkU25hcHNob3QgPSAoY29tcGFyZUFsaXBheVZlcnNpb24oJzEwLjEuMCcpID4gLTEpOyBcbiAgdmFyIGlzQW5kcm9pZCA9IC9hbmRyb2lkL2kudGVzdCh3aW5kb3cubmF2aWdhdG9yLnVzZXJBZ2VudCk7XG4gIHZhciBvcHRzID0ge1xuICAgIG5hbWU6IHJlcy5jaGFubmVsTmFtZSxcbiAgICBwYXJhbToge1xuICAgICAgY29udGVudFR5cGU6ICd1cmwnLFxuICAgICAgdGl0bGU6ICd7JUFQUF9OQU1FJX0nLFxuICAgICAgY29udGVudDogJ3slQVBQX0RFU0MlfScgfHwgJ+aUr+S7mOWuneWwj+eoi+W6jy17JUFQUF9OQU1FJX0nLFxuICAgICAgaW1hZ2VVcmw6ICd7JUFQUF9JQ09OJX0nLFxuICAgICAgaWNvblVybDogJ3slQVBQX0lDT04lfScsXG4gICAgICB1cmw6IGhyZWZcbiAgICB9XG4gIH07XG5cbiAgaWYgKHJlcy5jaGFubmVsTmFtZSA9PT0gJ1dlaXhpbicgfHwgXG4gICAgICByZXMuY2hhbm5lbE5hbWUgPT09ICdRUScgfHwgXG4gICAgICByZXMuY2hhbm5lbE5hbWUgPT09ICdXZWl4aW5UaW1lTGluZScgfHwgXG4gICAgICByZXMuY2hhbm5lbE5hbWUgPT09ICdRUVpvbmUnKSB7XG4gICAgb3B0cyA9IHtcbiAgICAgIG5hbWU6IHJlcy5jaGFubmVsTmFtZSxcbiAgICAgIHBhcmFtOiAge1xuICAgICAgICB0aXRsZTogJ3slQVBQX05BTUUlfScsXG4gICAgICAgIGNvbnRlbnQ6ICd7JUFQUF9ERVNDJX0nIHx8ICfmlK/ku5jlrp3lsI/nqIvluo8teyVBUFBfTkFNRSV9JyxcbiAgICAgICAgdXJsOiAnJyxcbiAgICAgICAgaW1hZ2VVcmw6ICd7JUFQUF9JQ09OJX0nLFxuICAgICAgICBvdGhlclBhcmFtczoge1xuICAgICAgICAgIGJpelR5cGU6ICdDT01NT05fQ09ORklHJyxcbiAgICAgICAgICBzaGFyZVRpdGxlOiAnJyxcbiAgICAgICAgICBpY29uVVJMOiAneyVBUFBfSUNPTiV9JyxcbiAgICAgICAgICBidG4xOiAn5Y+W5raIJyxcbiAgICAgICAgICBidG4xQTogJycsXG4gICAgICAgICAgYnRuMjogJ+WOu+eci+eciycsXG4gICAgICAgICAgYnRuMkE6ICdhbGlwYXlzOi8vcGxhdGZvcm1hcGkvc3RhcnRhcHA/YXBwSWQ9eyVBUFBfSUQlfSZ1cmw9JytlbmNvZGVVUklDb21wb25lbnQoaHJlZiksXG4gICAgICAgICAgcHJlQ29udGVudDogJyPlkLHlj6Pku6Qj6ZW/5oyJ5aSN5Yi25q2k5p2h5raI5oGv77yM5omT5byA5pSv5LuY5a6d5Y2z5Y+v5L2/55SoW3slQVBQX05BTUUlfV3lsI/nqIvluo8nLFxuICAgICAgICAgIGVuZENvbnRlbnQ6ICcnXG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9O1xuICB9XG4gIGlmIChyZXMuY2hhbm5lbE5hbWUgPT09ICdBTFBUaW1lTGluZScgJiYgJ3slQVBQX0RFU0MlfScpIHtcbiAgICBvcHRzLnBhcmFtLnRpdGxlICs9ICcgLSB7JUFQUF9ERVNDJX0nXG4gIH1cbiAgaWYgKHJlcy5jaGFubmVsTmFtZSA9PT0gJ0FMUENvbnRhY3QnICYmICghaXNBbmRyb2lkIHx8IChpc0FuZHJvaWQgJiYgc3VwcG9ydEFuZHJvaWRTbmFwc2hvdCkpKSB7XG4gICAgb3B0cyA9IHtcbiAgICAgIG5hbWU6IHJlcy5jaGFubmVsTmFtZSxcbiAgICAgIHBhcmFtOiB7XG4gICAgICAgIGNvbnRlbnRUeXBlOiAndGlueUFwcCcsIFxuICAgICAgICB0aXRsZTogJ3slQVBQX05BTUUlfScsXG4gICAgICAgIGNvbnRlbnQ6ICd7JUFQUF9ERVNDJX0nIHx8ICfmlK/ku5jlrp3lsI/nqIvluo8teyVBUFBfTkFNRSV9JyxcbiAgICAgICAgdXJsOiBocmVmLFxuICAgICAgICBvdGhlclBhcmFtczoge1xuICAgICAgICAgIGFwcE5hbWU6J3slQVBQX05BTUUlfScsXG4gICAgICAgICAgYXBwSWNvbjoneyVBUFBfSUNPTiV9JyxcbiAgICAgICAgICBhcHBUeXBlOiflsI/nqIvluo8nXG4gICAgICAgIH0gXG4gICAgICB9XG4gICAgfTtcbiAgICBBbGlwYXlKU0JyaWRnZS5jYWxsKCdzbmFwc2hvdCcsIHtcbiAgICAgIHJhbmdlOiBpc0FuZHJvaWQgPyAnZW1iZWR2aWV3JyA6ICdzY3JlZW4nLFxuICAgICAgZGF0YVR5cGU6ICdmaWxlVVJMJyxcbiAgICAgIHNhdmVUb0dhbGxlcnk6IGZhbHNlXG4gICAgfSwgZnVuY3Rpb24gKHJlc3VsdCkge1xuICAgICAgY29uc29sZS5sb2coJ3NuYXBzaG90Pj4+Pj4gJywgcmVzdWx0KTtcbiAgICAgIGlmKHJlc3VsdC5maWxlVVJMKSB7XG4gICAgICAgIEFsaXBheUpTQnJpZGdlLmNhbGwoJ3VwbG9hZEltYWdlJywge1xuICAgICAgICAgIGRhdGE6IHJlc3VsdC5maWxlVVJMLCAvLyBiYXNlNjTnvJbnoIHov4fnmoTlm77niYflrZfoioLmtYEg5oiWIOWbvueJh+eahOaWh+S7tlVSTOKAnGZpbGU6Ly94eHh44oCdXG4gICAgICAgICAgZGF0YVR5cGU6ICdmaWxlVVJMJywgXG4gICAgICAgICAgY29tcHJlc3M6IDMsXG4gICAgICAgICAgYnVzaW5lc3M6IFwibXVsdGlNZWRpYVwiIC8vIOWPr+mAie+8jCDpu5jorqTkuLrigJxOZWJ1bGFCaXrigJ1cbiAgICAgICAgfSwgZnVuY3Rpb24gKHJlc3VsdCkge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCd1cGxvYWRJbWFnZT4+Pj4+ICcsIHJlc3VsdCk7XG4gICAgICAgICAgaWYocmVzdWx0Lm11bHRpbWVkaWFJRCkge1xuICAgICAgICAgICAgb3B0cy5wYXJhbS5pY29uVXJsID0gcmVzdWx0Lm11bHRpbWVkaWFJRDtcbiAgICAgICAgICB9IFxuICAgICAgICAgIHNoYXJlVG9DaGFubmVsKCk7XG4gICAgICAgIH0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc2hhcmVUb0NoYW5uZWwoKTtcbiAgICAgIH1cbiAgICB9KTtcbiAgfSBlbHNlIHtcbiAgICBzaGFyZVRvQ2hhbm5lbCgpO1xuICB9XG4gIGZ1bmN0aW9uIHNoYXJlVG9DaGFubmVsKCkge1xuICAgIGNvbnNvbGUubG9nKCdvcHRzPj4+PicsIG9wdHMpO1xuICAgIEFsaXBheUpTQnJpZGdlLmNhbGwoJ3NoYXJlVG9DaGFubmVsJywgb3B0cyAsIGZ1bmN0aW9uKHNoYXJlUmVzdWx0KXtcbiAgICAgIHZhciBldnQgPSBkb2N1bWVudC5jcmVhdGVFdmVudCgnRXZlbnRzJyk7XG4gICAgICBldnQuaW5pdEV2ZW50KCdhZnRlclNoYXJlJywgZmFsc2UsIHRydWUpO1xuICAgICAgZXZ0LmRhdGEgPSBzaGFyZVJlc3VsdCB8fCB7fTtcbiAgICAgIGRvY3VtZW50LmRpc3BhdGNoRXZlbnQoZXZ0KTtcbiAgICB9KTtcbiAgfVxuICBmdW5jdGlvbiBjb21wYXJlQWxpcGF5VmVyc2lvbih0YXJnZXRWZXJzaW9uKSB7XG4gICAgdmFyIHZlciA9IG5hdmlnYXRvci51c2VyQWdlbnQubWF0Y2goL0FsaXBheUNsaWVudFxcLyhbXFxkLl0rKSAvaSkgfHwgW107XG4gICAgdmFyIHRhciA9IHRhcmdldFZlcnNpb24uc3BsaXQoJy4nKTtcbiAgICB2YXIgcmVzdWx0ID0gMDtcbiAgICBpZiAodmVyWzFdKSB7XG4gICAgICB2ZXIgPSB2ZXJbMV0uc3BsaXQoJy4nKTtcbiAgICB9XG5cbiAgICBmb3IgKHZhciBfdiwgX3QsIGkgPSAwOyBpIDwgMzsgaSsrKSB7XG4gICAgICBfdiA9IHZlcltpXSB8fCAwO1xuICAgICAgX3QgPSB0YXJbaV0gfHwgMDtcblxuICAgICAgaWYgKCtfdCA8ICtfdikge1xuICAgICAgICByZXN1bHQgPSAxO1xuICAgICAgICBicmVhaztcbiAgICAgIH0gZWxzZSBpZiAoK190ID4gK192KSB7XG4gICAgICAgIHJlc3VsdCA9IC0xO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxufSIsImljb24iOiJodHRwczovL3pvcy5hbGlwYXlvYmplY3RzLmNvbS9jbXNtbmcvY21zL2ltYWdlcy9pemZmZXZjYy9kOGRjNDY5Yi1iOGU4LTQ4MmUtOTg0NC03NjIwMmJlZTU0MDQucG5nIiwibWlkIjoiMTAwMiIsIm5hbWUiOiLliIbkuqsiLCJvcHRpb25zIjoie1xuICBiaXpUeXBlOiAnSDVBcHBfREQnLFxuICBzZW5kRXZlbnQ6dHJ1ZSxcbiAgb25seVNlbGVjdENoYW5uZWw6IFtcbiAgICAnV2VpYm8nLFxuICAgICdBTFBDb250YWN0JyxcbiAgICAnQUxQVGltZUxpbmUnLFxuICAgICdTTVMnLFxuICAgICdXZWl4aW4nLFxuICAgICdXZWl4aW5UaW1lTGluZScsXG4gICAgJ1FRJyxcbiAgICAnUVFab25lJyxcbiAgICAnRGluZ1RhbGtTZXNzaW9uJ1xuICBdXG59In1dfSwic3VjY2VzcyI6dHJ1ZX0="

    .line 813
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 815
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6$2;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyBlurMenu$6;Ljava/lang/String;)V

    invoke-static {v0, v12, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 829
    return-void

    .line 827
    :catchall_3
    move-exception v0

    .line 828
    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 831
    return-void
.end method
