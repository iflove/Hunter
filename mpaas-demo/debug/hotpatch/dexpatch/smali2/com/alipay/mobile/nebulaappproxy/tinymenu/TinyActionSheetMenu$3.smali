.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;
.super Ljava/lang/Object;
.source "TinyActionSheetMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->requestRpc(Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

.field final synthetic val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    .line 601
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 604
    move-object/from16 v1, p0

    const-string v2, "_oldmenuUpdateTime"

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppParamUtils;->getHostAppId(Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 606
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppName(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->appName:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->access$2002(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppDesc(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->appDesc:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->access$2102(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppIcon(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->appIcon:Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->access$2202(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 611
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 612
    const-wide/16 v6, 0x32

    const-string v15, "TinyActionSheetMenu"

    if-eqz v5, :cond_9

    .line 613
    nop

    .line 614
    nop

    .line 615
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v14, "_old"

    const-string v8, ""

    const-string v13, "_"

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_oldmenu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 622
    :cond_0
    move-object v9, v8

    :goto_0
    const/4 v10, 0x1

    :try_start_0
    const-string v0, "0"

    .line 623
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 624
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v11

    .line 625
    if-eqz v11, :cond_1

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v8}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_1
    nop

    .line 630
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-wide/16 v11, 0x0

    if-nez v8, :cond_2

    .line 631
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_1

    .line 630
    :cond_2
    move-wide/from16 v16, v11

    .line 633
    :goto_1
    cmp-long v0, v16, v11

    if-lez v0, :cond_5

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v16

    .line 635
    const-wide/32 v16, 0x5265c00

    .line 636
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->access$2300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->mMixActionService:Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;->access$2300(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu;)Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;->getTinyMenuUpdateInterval(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :cond_3
    cmp-long v0, v11, v16

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 643
    :cond_5
    :goto_2
    goto :goto_3

    .line 641
    :catchall_0
    move-exception v0

    .line 642
    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v10, :cond_6

    goto :goto_4

    .line 665
    :cond_6
    nop

    .line 666
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3$1;

    invoke-direct {v0, v1, v9}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;Ljava/lang/String;)V

    invoke-static {v0, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 677
    return-void

    .line 645
    :cond_7
    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v7, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;->val$h5SimpleRpcListener:Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;

    const-string v6, "com.alipay.staticweb.commonService.commonCall"

    const-string v16, "[{\"method\":\"h5data\",\"params\":{\"rgn\":\"popMenu_config_popmenu-h5data\"}}]"

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move-object/from16 v18, v13

    move-object v13, v0

    move-object v1, v14

    move-object/from16 v14, v17

    invoke-interface/range {v5 .. v14}, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;->sendSimpleRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V

    .line 650
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 651
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 653
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 654
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v1

    .line 655
    if-eqz v1, :cond_8

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 662
    :cond_8
    return-void

    .line 660
    :catchall_1
    move-exception v0

    .line 661
    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    return-void

    .line 679
    :cond_9
    :try_start_2
    const-string v0, "eyJyZXN1bHQiOnsibWVudXMiOlt7ImFjdGlvbiI6InN0YXJ0QXBwIiwiY2FsbGJhY2siOiJmdW5jdGlvbigpe30iLCJpY29uIjoiaHR0cHM6Ly96b3MuYWxpcGF5b2JqZWN0cy5jb20vY21zbW5nL2Ntcy9pbWFnZXMvaXpmZmVhYTYvYTIwMzkwNDktMzAwNy00YTA0LTllYjItNTY2ZjZjMDg4NTI5LnBuZyIsIm1pZCI6IjEwMDEiLCJuYW1lIjoi5YWz5LqOIiwib3B0aW9ucyI6IntcbiAgYXBwSWQ6ICc2NjY2NjcxOCcsXG4gIHBhcmFtOiB7XG4gICAgdXJsOiAnL3d3dy9kZXRhaWwuaHRtbCcsXG4gICAgdGlueUFwcElkOiAneyVBUFBfSUQlfScsXG4gICAgdGlueUFwcFZlcnNpb246ICd7JUFQUF9QQUNLQUdFX05JQ0slfScsIFxuICAgIHRpbnlBcHBTY2VuZTogJ3slQVBQX1NDRU5FJX0nLFxuICAgIGFwcENsZWFyVG9wOiBmYWxzZVxuICB9LFxuICBjbG9zZUN1cnJlbnRBcHA6IGZhbHNlXG59In0seyJhY3Rpb24iOiJzdGFydFNoYXJlIiwiY2FsbGJhY2siOiJmdW5jdGlvbihyZXMpe1xuICB2YXIgbXNnPXJlc1tcIm1lc3NhZ2VcIl18fFwiXCI7XG4gIGlmKG1zZy5pbmRleE9mKCdjYW5jZWxlZCcpPj0wKXtyZXR1cm47fVxuICB2YXIgZW5hYmxlVGFiQmFyID0gQWxpcGF5SlNCcmlkZ2Uuc3RhcnR1cFBhcmFtcy5lbmFibGVUYWJCYXIgPT09IHRydWUgfHwgIEFsaXBheUpTQnJpZGdlLnN0YXJ0dXBQYXJhbXMuZW5hYmxlVGFiQmFyID09PSAnWUVTJyA/ICcmZW5hYmxlVGFiQmFyPVlFUycgOiAnJztcbiAgdmFyIHNjaGVtYSA9ICdhbGlwYXlzOi8vcGxhdGZvcm1hcGkvc3RhcnRhcHA/YXBwSWQ9eyVBUFBfSUQlfScgKyBlbmFibGVUYWJCYXI7XG4gIHZhciBocmVmID0gJ3slQVBQX1VSTCV9JztcbiAgdmFyIHN1cHBvcnRBbmRyb2lkU25hcHNob3QgPSAoY29tcGFyZUFsaXBheVZlcnNpb24oJzEwLjEuMCcpID4gLTEpOyBcbiAgdmFyIGlzQW5kcm9pZCA9IC9hbmRyb2lkL2kudGVzdCh3aW5kb3cubmF2aWdhdG9yLnVzZXJBZ2VudCk7XG4gIHZhciBvcHRzID0ge1xuICAgIG5hbWU6IHJlcy5jaGFubmVsTmFtZSxcbiAgICBwYXJhbToge1xuICAgICAgY29udGVudFR5cGU6ICd1cmwnLFxuICAgICAgdGl0bGU6ICd7JUFQUF9OQU1FJX0nLFxuICAgICAgY29udGVudDogJ3slQVBQX0RFU0MlfScgfHwgJ+aUr+S7mOWuneWwj+eoi+W6jy17JUFQUF9OQU1FJX0nLFxuICAgICAgaW1hZ2VVcmw6ICd7JUFQUF9JQ09OJX0nLFxuICAgICAgaWNvblVybDogJ3slQVBQX0lDT04lfScsXG4gICAgICB1cmw6IGhyZWZcbiAgICB9XG4gIH07XG5cbiAgaWYgKHJlcy5jaGFubmVsTmFtZSA9PT0gJ1dlaXhpbicgfHwgXG4gICAgICByZXMuY2hhbm5lbE5hbWUgPT09ICdRUScgfHwgXG4gICAgICByZXMuY2hhbm5lbE5hbWUgPT09ICdXZWl4aW5UaW1lTGluZScgfHwgXG4gICAgICByZXMuY2hhbm5lbE5hbWUgPT09ICdRUVpvbmUnKSB7XG4gICAgb3B0cyA9IHtcbiAgICAgIG5hbWU6IHJlcy5jaGFubmVsTmFtZSxcbiAgICAgIHBhcmFtOiAge1xuICAgICAgICB0aXRsZTogJ3slQVBQX05BTUUlfScsXG4gICAgICAgIGNvbnRlbnQ6ICd7JUFQUF9ERVNDJX0nIHx8ICfmlK/ku5jlrp3lsI/nqIvluo8teyVBUFBfTkFNRSV9JyxcbiAgICAgICAgdXJsOiAnJyxcbiAgICAgICAgaW1hZ2VVcmw6ICd7JUFQUF9JQ09OJX0nLFxuICAgICAgICBvdGhlclBhcmFtczoge1xuICAgICAgICAgIGJpelR5cGU6ICdDT01NT05fQ09ORklHJyxcbiAgICAgICAgICBzaGFyZVRpdGxlOiAnJyxcbiAgICAgICAgICBpY29uVVJMOiAneyVBUFBfSUNPTiV9JyxcbiAgICAgICAgICBidG4xOiAn5Y+W5raIJyxcbiAgICAgICAgICBidG4xQTogJycsXG4gICAgICAgICAgYnRuMjogJ+WOu+eci+eciycsXG4gICAgICAgICAgYnRuMkE6ICdhbGlwYXlzOi8vcGxhdGZvcm1hcGkvc3RhcnRhcHA/YXBwSWQ9eyVBUFBfSUQlfSZ1cmw9JytlbmNvZGVVUklDb21wb25lbnQoaHJlZiksXG4gICAgICAgICAgcHJlQ29udGVudDogJyPlkLHlj6Pku6Qj6ZW/5oyJ5aSN5Yi25q2k5p2h5raI5oGv77yM5omT5byA5pSv5LuY5a6d5Y2z5Y+v5L2/55SoW3slQVBQX05BTUUlfV3lsI/nqIvluo8nLFxuICAgICAgICAgIGVuZENvbnRlbnQ6ICcnXG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9O1xuICB9XG4gIGlmIChyZXMuY2hhbm5lbE5hbWUgPT09ICdBTFBUaW1lTGluZScgJiYgJ3slQVBQX0RFU0MlfScpIHtcbiAgICBvcHRzLnBhcmFtLnRpdGxlICs9ICcgLSB7JUFQUF9ERVNDJX0nXG4gIH1cbiAgaWYgKHJlcy5jaGFubmVsTmFtZSA9PT0gJ0FMUENvbnRhY3QnICYmICghaXNBbmRyb2lkIHx8IChpc0FuZHJvaWQgJiYgc3VwcG9ydEFuZHJvaWRTbmFwc2hvdCkpKSB7XG4gICAgb3B0cyA9IHtcbiAgICAgIG5hbWU6IHJlcy5jaGFubmVsTmFtZSxcbiAgICAgIHBhcmFtOiB7XG4gICAgICAgIGNvbnRlbnRUeXBlOiAndGlueUFwcCcsIFxuICAgICAgICB0aXRsZTogJ3slQVBQX05BTUUlfScsXG4gICAgICAgIGNvbnRlbnQ6ICd7JUFQUF9ERVNDJX0nIHx8ICfmlK/ku5jlrp3lsI/nqIvluo8teyVBUFBfTkFNRSV9JyxcbiAgICAgICAgdXJsOiBocmVmLFxuICAgICAgICBvdGhlclBhcmFtczoge1xuICAgICAgICAgIGFwcE5hbWU6J3slQVBQX05BTUUlfScsXG4gICAgICAgICAgYXBwSWNvbjoneyVBUFBfSUNPTiV9JyxcbiAgICAgICAgICBhcHBUeXBlOiflsI/nqIvluo8nXG4gICAgICAgIH0gXG4gICAgICB9XG4gICAgfTtcbiAgICBBbGlwYXlKU0JyaWRnZS5jYWxsKCdzbmFwc2hvdCcsIHtcbiAgICAgIHJhbmdlOiBpc0FuZHJvaWQgPyAnZW1iZWR2aWV3JyA6ICdzY3JlZW4nLFxuICAgICAgZGF0YVR5cGU6ICdmaWxlVVJMJyxcbiAgICAgIHNhdmVUb0dhbGxlcnk6IGZhbHNlXG4gICAgfSwgZnVuY3Rpb24gKHJlc3VsdCkge1xuICAgICAgY29uc29sZS5sb2coJ3NuYXBzaG90Pj4+Pj4gJywgcmVzdWx0KTtcbiAgICAgIGlmKHJlc3VsdC5maWxlVVJMKSB7XG4gICAgICAgIEFsaXBheUpTQnJpZGdlLmNhbGwoJ3VwbG9hZEltYWdlJywge1xuICAgICAgICAgIGRhdGE6IHJlc3VsdC5maWxlVVJMLCAvLyBiYXNlNjTnvJbnoIHov4fnmoTlm77niYflrZfoioLmtYEg5oiWIOWbvueJh+eahOaWh+S7tlVSTOKAnGZpbGU6Ly94eHh44oCdXG4gICAgICAgICAgZGF0YVR5cGU6ICdmaWxlVVJMJywgXG4gICAgICAgICAgY29tcHJlc3M6IDMsXG4gICAgICAgICAgYnVzaW5lc3M6IFwibXVsdGlNZWRpYVwiIC8vIOWPr+mAie+8jCDpu5jorqTkuLrigJxOZWJ1bGFCaXrigJ1cbiAgICAgICAgfSwgZnVuY3Rpb24gKHJlc3VsdCkge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCd1cGxvYWRJbWFnZT4+Pj4+ICcsIHJlc3VsdCk7XG4gICAgICAgICAgaWYocmVzdWx0Lm11bHRpbWVkaWFJRCkge1xuICAgICAgICAgICAgb3B0cy5wYXJhbS5pY29uVXJsID0gcmVzdWx0Lm11bHRpbWVkaWFJRDtcbiAgICAgICAgICB9IFxuICAgICAgICAgIHNoYXJlVG9DaGFubmVsKCk7XG4gICAgICAgIH0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc2hhcmVUb0NoYW5uZWwoKTtcbiAgICAgIH1cbiAgICB9KTtcbiAgfSBlbHNlIHtcbiAgICBzaGFyZVRvQ2hhbm5lbCgpO1xuICB9XG4gIGZ1bmN0aW9uIHNoYXJlVG9DaGFubmVsKCkge1xuICAgIGNvbnNvbGUubG9nKCdvcHRzPj4+PicsIG9wdHMpO1xuICAgIEFsaXBheUpTQnJpZGdlLmNhbGwoJ3NoYXJlVG9DaGFubmVsJywgb3B0cyAsIGZ1bmN0aW9uKHNoYXJlUmVzdWx0KXtcbiAgICAgIHZhciBldnQgPSBkb2N1bWVudC5jcmVhdGVFdmVudCgnRXZlbnRzJyk7XG4gICAgICBldnQuaW5pdEV2ZW50KCdhZnRlclNoYXJlJywgZmFsc2UsIHRydWUpO1xuICAgICAgZXZ0LmRhdGEgPSBzaGFyZVJlc3VsdCB8fCB7fTtcbiAgICAgIGRvY3VtZW50LmRpc3BhdGNoRXZlbnQoZXZ0KTtcbiAgICB9KTtcbiAgfVxuICBmdW5jdGlvbiBjb21wYXJlQWxpcGF5VmVyc2lvbih0YXJnZXRWZXJzaW9uKSB7XG4gICAgdmFyIHZlciA9IG5hdmlnYXRvci51c2VyQWdlbnQubWF0Y2goL0FsaXBheUNsaWVudFxcLyhbXFxkLl0rKSAvaSkgfHwgW107XG4gICAgdmFyIHRhciA9IHRhcmdldFZlcnNpb24uc3BsaXQoJy4nKTtcbiAgICB2YXIgcmVzdWx0ID0gMDtcbiAgICBpZiAodmVyWzFdKSB7XG4gICAgICB2ZXIgPSB2ZXJbMV0uc3BsaXQoJy4nKTtcbiAgICB9XG5cbiAgICBmb3IgKHZhciBfdiwgX3QsIGkgPSAwOyBpIDwgMzsgaSsrKSB7XG4gICAgICBfdiA9IHZlcltpXSB8fCAwO1xuICAgICAgX3QgPSB0YXJbaV0gfHwgMDtcblxuICAgICAgaWYgKCtfdCA8ICtfdikge1xuICAgICAgICByZXN1bHQgPSAxO1xuICAgICAgICBicmVhaztcbiAgICAgIH0gZWxzZSBpZiAoK190ID4gK192KSB7XG4gICAgICAgIHJlc3VsdCA9IC0xO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxufSIsImljb24iOiJodHRwczovL3pvcy5hbGlwYXlvYmplY3RzLmNvbS9jbXNtbmcvY21zL2ltYWdlcy9pemZmZXZjYy9kOGRjNDY5Yi1iOGU4LTQ4MmUtOTg0NC03NjIwMmJlZTU0MDQucG5nIiwibWlkIjoiMTAwMiIsIm5hbWUiOiLliIbkuqsiLCJvcHRpb25zIjoie1xuICBiaXpUeXBlOiAnSDVBcHBfREQnLFxuICBzZW5kRXZlbnQ6dHJ1ZSxcbiAgb25seVNlbGVjdENoYW5uZWw6IFtcbiAgICAnV2VpYm8nLFxuICAgICdBTFBDb250YWN0JyxcbiAgICAnQUxQVGltZUxpbmUnLFxuICAgICdTTVMnLFxuICAgICdXZWl4aW4nLFxuICAgICdXZWl4aW5UaW1lTGluZScsXG4gICAgJ1FRJyxcbiAgICAnUVFab25lJyxcbiAgICAnRGluZ1RhbGtTZXNzaW9uJ1xuICBdXG59In1dfSwic3VjY2VzcyI6dHJ1ZX0="

    .line 680
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 682
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3$2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v2, p0

    :try_start_3
    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyActionSheetMenu$3;Ljava/lang/String;)V

    invoke-static {v0, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 696
    return-void

    .line 694
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v2, p0

    .line 695
    :goto_5
    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    return-void
.end method
