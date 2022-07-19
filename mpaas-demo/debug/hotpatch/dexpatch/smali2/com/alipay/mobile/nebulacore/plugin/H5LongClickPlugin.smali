.class public Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5LongClickPlugin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;
    }
.end annotation


# static fields
.field public static final SAVE_IMAGE:Ljava/lang/String; = "saveImage"

.field public static final TAG:Ljava/lang/String; = "H5LongClickPlugin"

.field public static final privateSaveImage:Ljava/lang/String; = "privateSaveImage"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 72
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->enableLongClick(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->d:Z

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p3, "cusHandleResult"    # Z
    .param p4, "savePath"    # Ljava/lang/String;

    .line 220
    const-string v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V

    .line 221
    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method private a(Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "showDialog"    # Z
    .param p3, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .param p4, "cusHandleResult"    # Z
    .param p5, "savePath"    # Ljava/lang/String;

    .line 122
    move-object/from16 v6, p0

    if-nez p2, :cond_0

    .line 123
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V

    return-void

    .line 126
    :cond_0
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_save_to_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 129
    .local v11, "savePhone":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    move-object v13, v0

    .line 135
    .local v13, "items":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;

    const/4 v14, 0x0

    move-object v1, v14

    .line 137
    .local v1, "h5ListPopDialogProvider":Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
    move-object v15, v0

    .end local v1    # "h5ListPopDialogProvider":Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
    .local v15, "h5ListPopDialogProvider":Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v14

    .line 141
    .local v1, "list":Ljava/util/ArrayList;
    move-object v12, v0

    .end local v1    # "list":Ljava/util/ArrayList;
    .local v12, "list":Ljava/util/ArrayList;
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, v6, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    invoke-interface {v15, v0, v12}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->createDialog(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 143
    invoke-interface {v15}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->showDialog()V

    .line 144
    new-instance v14, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V

    .line 145
    invoke-interface {v15, v14}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->setOnItemClickListener(Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;)V

    .line 155
    .end local v12    # "list":Ljava/util/ArrayList;
    return-void

    .line 157
    :cond_1
    new-instance v16, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V

    .line 173
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v6, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v13, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    move-object v2, v14

    .line 175
    .local v2, "dialog":Landroid/app/Dialog;
    move-object v2, v1

    invoke-virtual {v1, v12}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 176
    iget-object v1, v6, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 182
    .end local v0    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v11    # "savePhone":Ljava/lang/String;
    .end local v13    # "items":[Ljava/lang/String;
    .end local v15    # "h5ListPopDialogProvider":Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEvent event is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LongClickPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "action":Ljava/lang/String;
    const-string v1, "saveImage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "privateSaveImage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    return v2

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 104
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v1

    const-string v5, "src"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v3, "url":Ljava/lang/String;
    move-object v7, v1

    .end local v3    # "url":Ljava/lang/String;
    .local v7, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "error"

    const-string v2, "2"

    invoke-interface {p2, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 107
    return v3

    .line 109
    :cond_2
    const-string v1, "showActionSheet"

    invoke-static {v4, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    .line 110
    .local v1, "showDialog":Z
    const-string v5, "cusHandleResult"

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 111
    .local v2, "cusHandleResult":Z
    const-string v5, "savePath"

    const-string v6, "default"

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "savePath":Ljava/lang/String;
    move-object v6, p0

    move v8, v1

    move-object v9, p2

    move v10, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a(Ljava/lang/String;ZLcom/alipay/mobile/h5container/api/H5BridgeContext;ZLjava/lang/String;)V

    .line 113
    return v3
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 186
    const-string v0, "H5LongClickPlugin"

    const-string v1, "onLongClick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 191
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->d:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 193
    return v3

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v1

    const/4 v4, 0x0

    move-object v5, v4

    .line 196
    .local v5, "result":Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    move-object v5, v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v1

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2

    .line 197
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 199
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 201
    :try_start_0
    invoke-interface {v5}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "imgUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imgUrl:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 205
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v2

    const-string v6, "imgUrl"

    invoke-virtual {v2, v6, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v6, "h5PageLongClick"

    invoke-virtual {v2, v6, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 208
    :cond_4
    return v2

    .line 210
    .end local v1    # "imgUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "getExtras Exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v3

    .line 215
    :cond_5
    return v2

    .line 189
    .end local v5    # "result":Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    :cond_6
    :goto_2
    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 83
    const-string v0, "saveImage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v0, "privateSaveImage"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 89
    const-string v0, "H5LongClickPlugin"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->c:Landroid/view/View;

    .line 94
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 95
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->a:Landroid/app/Activity;

    .line 96
    return-void
.end method
