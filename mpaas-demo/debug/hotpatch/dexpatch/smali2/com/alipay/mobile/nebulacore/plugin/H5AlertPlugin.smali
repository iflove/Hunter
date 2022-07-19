.class public Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5AlertPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AlertPlugin"

.field public static final showUCFailDialog:Ljava/lang/String; = "showUCFailDialog"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/view/H5Alert;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 20
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 80
    .local v9, "activity":Landroid/app/Activity;
    if-nez p1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 84
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v10, v2

    .end local v4    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v10, "params":Lcom/alibaba/fastjson/JSONObject;
    if-nez v2, :cond_1

    .line 85
    return-void

    .line 88
    :cond_1
    const-string v2, "title"

    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "title":Ljava/lang/String;
    const-string v2, "message"

    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "message":Ljava/lang/String;
    const-string v2, "button"

    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "button":Ljava/lang/String;
    const-string v4, "align"

    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, "align":Ljava/lang/String;
    const-string v4, "confirmColor"

    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    .local v14, "confirmColor":Ljava/lang/String;
    const-string v4, "cancelColor"

    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 96
    .local v15, "cancelColor":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_0

    .line 96
    :cond_2
    move-object/from16 v16, v2

    .line 100
    .end local v2    # "button":Ljava/lang/String;
    .local v16, "button":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v16, v2, v4

    move-object v8, v2

    .line 105
    .local v8, "buttons":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 106
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    move-object v5, v3

    .line 107
    .local v5, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    move-object v7, v2

    .end local v5    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v7, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-eqz v2, :cond_4

    .line 109
    aget-object v6, v8, v4

    const/16 v17, 0x0

    move-object v2, v7

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v18, v10

    move-object v10, v7

    .end local v7    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v10, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v18, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v7, v17

    move-object/from16 v19, v8

    .end local v8    # "buttons":[Ljava/lang/String;
    .local v19, "buttons":[Ljava/lang/String;
    move-object v8, v13

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    .line 112
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-interface {v10, v14}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveTextColor(Ljava/lang/String;)V

    .line 113
    invoke-interface {v10, v15}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeTextColor(Ljava/lang/String;)V

    .line 115
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$1;

    invoke-direct {v3, v0, v10, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 116
    invoke-interface {v10, v3}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 125
    invoke-interface {v10}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 127
    if-eqz v2, :cond_3

    .line 128
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$2;

    invoke-direct {v3, v0, v1, v10}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 136
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_3
    return-void

    .line 138
    .end local v18    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v19    # "buttons":[Ljava/lang/String;
    .restart local v7    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .restart local v8    # "buttons":[Ljava/lang/String;
    .local v10, "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    move-object/from16 v19, v8

    move-object/from16 v18, v10

    move-object v10, v7

    .end local v7    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .end local v8    # "buttons":[Ljava/lang/String;
    .local v10, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .restart local v18    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "buttons":[Ljava/lang/String;
    new-instance v2, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$3;

    invoke-direct {v2, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 152
    .local v2, "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v5, :cond_5

    .line 153
    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 154
    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 157
    :cond_5
    new-instance v3, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v3, v9}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    .line 158
    invoke-virtual {v3, v12}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    move-object/from16 v4, v19

    .end local v19    # "buttons":[Ljava/lang/String;
    .local v4, "buttons":[Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 160
    .end local v2    # "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 333
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 335
    .local v2, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "h5_show_uc_fail_dialog"

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 337
    .local v3, "value":Ljava/lang/String;
    const-string v4, "no"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    return-void

    .line 335
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    .line 342
    :cond_1
    if-nez p2, :cond_2

    .line 343
    return-void

    .line 347
    :cond_2
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "nburl"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v3, "url":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 350
    const-string v0, "H5_UC_FAIL_FALLBACK_NBURL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 351
    .local v0, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 352
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 353
    invoke-virtual {v5, v4, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 355
    :cond_3
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 357
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->moveTaskToBack(Landroid/app/Activity;)V

    .line 361
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    return-void

    .line 388
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 389
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v4

    if-eqz v4, :cond_5

    .line 390
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 392
    :cond_5
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->openUrl(Ljava/lang/String;)V

    .line 395
    .end local v0    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v1    # "activity":Landroid/app/Activity;
    return-void

    .line 396
    :cond_6
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    move-object v4, v1

    .line 398
    .local v4, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    move-object v4, v0

    if-eqz v0, :cond_7

    .line 399
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 400
    .restart local v1    # "activity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 401
    nop

    .line 402
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "\u7cfb\u7edf\u6846\u67b6\u5f02\u5e38\uff0c\u6682\u65f6\u65e0\u6cd5\u542f\u52a8\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const-string v9, "\u786e\u8ba4"

    move-object v5, v4

    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 405
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/app/Activity;)V

    invoke-interface {v4, v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 431
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 435
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    :cond_7
    return-void
.end method

.method private b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 22
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 167
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    if-nez v2, :cond_1

    .line 168
    return-void

    .line 170
    :cond_1
    const-string v2, "title"

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "title":Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "message":Ljava/lang/String;
    const-string v5, "okButton"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "confirm":Ljava/lang/String;
    const-string v6, "confirmColor"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 176
    .local v13, "confirmColor":Ljava/lang/String;
    const-string v6, "cancelColor"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, "cancelColor":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 179
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    sget v6, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_0

    .line 179
    :cond_2
    move-object/from16 v16, v5

    .line 182
    .end local v5    # "confirm":Ljava/lang/String;
    .local v16, "confirm":Ljava/lang/String;
    :goto_0
    const-string v5, "cancelButton"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    .line 183
    .local v6, "cancel":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_1

    .line 183
    :cond_3
    move-object/from16 v17, v6

    .line 187
    .end local v6    # "cancel":Ljava/lang/String;
    .local v17, "cancel":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v7, 0x1

    aput-object v17, v5, v7

    move-object v11, v5

    .line 190
    .local v11, "buttons":[Ljava/lang/String;
    const-string v5, "align"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 192
    .local v18, "align":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 195
    .local v10, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v5

    const-class v8, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 196
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    move-object v8, v3

    .line 197
    .local v8, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    move-object v9, v5

    .end local v8    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v9, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-eqz v5, :cond_5

    .line 198
    aget-object v3, v11, v6

    aget-object v19, v11, v7

    move-object v5, v9

    move-object v6, v10

    move-object v7, v2

    move-object v8, v12

    move-object/from16 v20, v4

    move-object v4, v9

    .end local v9    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v4, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v20, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v9, v3

    move-object v3, v10

    .end local v10    # "activity":Landroid/app/Activity;
    .local v3, "activity":Landroid/app/Activity;
    move-object/from16 v10, v19

    move-object/from16 v21, v11

    .end local v11    # "buttons":[Ljava/lang/String;
    .local v21, "buttons":[Ljava/lang/String;
    move-object/from16 v11, v18

    invoke-interface/range {v5 .. v11}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v5

    .line 201
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-interface {v4, v13}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveTextColor(Ljava/lang/String;)V

    .line 202
    invoke-interface {v4, v14}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeTextColor(Ljava/lang/String;)V

    .line 204
    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$4;

    invoke-direct {v6, v0, v4, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 205
    invoke-interface {v4, v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 216
    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$5;

    invoke-direct {v6, v0, v4, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$5;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 217
    invoke-interface {v4, v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V

    .line 229
    if-eqz v5, :cond_4

    .line 230
    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;

    invoke-direct {v6, v0, v1, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 241
    :cond_4
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 242
    .end local v5    # "dialog":Landroid/app/Dialog;
    return-void

    .line 244
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v20    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "buttons":[Ljava/lang/String;
    .local v4, "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .restart local v10    # "activity":Landroid/app/Activity;
    .restart local v11    # "buttons":[Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v4

    move-object v4, v9

    move-object v5, v10

    move-object/from16 v21, v11

    .end local v9    # "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .end local v10    # "activity":Landroid/app/Activity;
    .end local v11    # "buttons":[Ljava/lang/String;
    .local v4, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    .local v5, "activity":Landroid/app/Activity;
    .restart local v20    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v21    # "buttons":[Ljava/lang/String;
    new-instance v7, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;

    invoke-direct {v7, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 263
    .local v7, "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v8, :cond_6

    .line 264
    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 265
    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 268
    :cond_6
    new-instance v3, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v3, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    .line 269
    invoke-virtual {v3, v12}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    move-object/from16 v6, v21

    .end local v21    # "buttons":[Ljava/lang/String;
    .local v6, "buttons":[Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 273
    .end local v7    # "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    return-void
.end method

.method private c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 276
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 277
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const-string v3, "H5AlertPlugin"

    if-nez v0, :cond_0

    .line 278
    const-string v0, "none params"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void

    .line 281
    :cond_0
    const-string v0, "title"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "title":Ljava/lang/String;
    const-string v4, "message"

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "message":Ljava/lang/String;
    const/4 v5, 0x0

    .line 285
    .local v5, "buttonLabels":[Ljava/lang/String;
    :try_start_0
    const-string v6, "buttons"

    invoke-static {v2, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    move-object v7, v1

    .line 286
    .local v7, "buttons":Lcom/alibaba/fastjson/JSONArray;
    move-object v7, v6

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 287
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object v5, v6

    .line 288
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 289
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v6    # "i":I
    :cond_1
    goto :goto_1

    .line 292
    :cond_2
    return-void

    .line 294
    .end local v7    # "buttons":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v6

    .line 295
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;

    invoke-direct {v3, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 319
    .local v3, "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v6, :cond_3

    .line 320
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 321
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 324
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 325
    .local v1, "activity":Landroid/app/Activity;
    new-instance v6, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v6, v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v6

    .line 326
    invoke-virtual {v6, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v6

    .line 327
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 328
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 62
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string v1, "showAlert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->c(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "alert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 67
    :cond_1
    const-string v1, "confirm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "showUCFailDialog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 72
    .local v1, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-direct {p0, p1, v1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Page;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 75
    .end local v1    # "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    :cond_3
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 54
    const-string v0, "showAlert"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v0, "alert"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v0, "showUCFailDialog"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->a:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 50
    return-void
.end method
