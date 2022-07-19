.class public Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PromptPlugin.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string/jumbo v0, "prompt"

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p0, "x1"    # Landroid/app/Activity;
    .param p1, "x2"    # Landroid/view/View;

    .line 17
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;->b(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;

    .line 82
    :try_start_0
    const-string v0, "input_method"

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 84
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5PromptPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 21
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 34
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    const-string/jumbo v5, "title"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v6, "message"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 37
    .local v13, "message":Ljava/lang/String;
    const-string/jumbo v6, "okButton"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 38
    .local v14, "okButton":Ljava/lang/String;
    const-string v6, "cancelButton"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 39
    .local v15, "cancelButton":Ljava/lang/String;
    const-string/jumbo v6, "placeholder"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 41
    .local v12, "hint":Ljava/lang/String;
    const-string v6, "confirmColor"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 42
    .local v11, "confirmColor":Ljava/lang/String;
    const-string v6, "cancelColor"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "cancelColor":Ljava/lang/String;
    new-instance v9, Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/16 v16, 0x0

    move-object v6, v9

    move-object v8, v5

    move-object/from16 v17, v9

    move-object v9, v13

    move-object/from16 v18, v10

    .end local v10    # "cancelColor":Ljava/lang/String;
    .local v18, "cancelColor":Ljava/lang/String;
    move-object v10, v14

    move-object/from16 v19, v3

    move-object v3, v11

    .end local v11    # "confirmColor":Ljava/lang/String;
    .local v3, "confirmColor":Ljava/lang/String;
    .local v19, "action":Ljava/lang/String;
    move-object v11, v15

    move-object/from16 v20, v4

    move-object v4, v12

    .end local v12    # "hint":Ljava/lang/String;
    .local v4, "hint":Ljava/lang/String;
    .local v20, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v12, v16

    invoke-direct/range {v6 .. v12}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    .line 48
    .local v6, "auInputDialog":Lcom/alipay/mobile/antui/dialog/AUInputDialog;
    move-object/from16 v6, v17

    move-object/from16 v7, v17

    invoke-virtual {v7, v3}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->setPositiveTextColor(Ljava/lang/String;)V

    .line 49
    move-object/from16 v7, v18

    .end local v18    # "cancelColor":Ljava/lang/String;
    .local v7, "cancelColor":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->setNegativeTextColor(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->show()V

    .line 52
    invoke-virtual {v6}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->getInputContent()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alipay/mobile/antui/basic/AUEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;

    invoke-direct {v8, v0, v2, v6, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/antui/dialog/AUInputDialog;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;)V

    .line 64
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$2;

    invoke-direct {v8, v0, v6, v2, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;Lcom/alipay/mobile/antui/dialog/AUInputDialog;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;)V

    goto :goto_0

    .line 34
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "auInputDialog":Lcom/alipay/mobile/antui/dialog/AUInputDialog;
    .end local v7    # "cancelColor":Ljava/lang/String;
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "okButton":Ljava/lang/String;
    .end local v15    # "cancelButton":Ljava/lang/String;
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "action":Ljava/lang/String;
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 76
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v20    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    const/4 v3, 0x1

    return v3
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 26
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5PromptPlugin;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 27
    return-void
.end method
