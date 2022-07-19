.class public Lcom/alipay/mobile/nebulaappproxy/plugin/ui/AntUILinkagePickerPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "AntUILinkagePickerPlugin.java"


# static fields
.field public static final GET_LINKAGE_PICKER:Ljava/lang/String; = "antUIGetCascadePicker"

.field public static final TAG:Ljava/lang/String; = "AntUILinkagePickerPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 54
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 57
    return-void

    .line 60
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "listString":Ljava/lang/String;
    const-string/jumbo v2, "selectedList"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "selectedListString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 65
    .local v3, "modelList":Ljava/util/List;
    const/4 v4, 0x0

    .line 67
    .local v4, "selectedList":Ljava/util/List;
    new-instance v5, Lcom/alipay/mobile/antui/picker/AUCascadePicker;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;-><init>(Landroid/app/Activity;)V

    .line 71
    .local v5, "pickerView":Lcom/alipay/mobile/antui/picker/AUCascadePicker;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 72
    const-class v6, Lcom/alipay/mobile/antui/model/PickerDataModel;

    invoke-static {v0, v6}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    .line 75
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 76
    const-class v6, Lcom/alipay/mobile/antui/model/PickerDataModel;

    invoke-static {v2, v6}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    move-object v4, v6

    .line 79
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    invoke-virtual {v5, v3}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setDateData(Ljava/util/List;)V

    .line 82
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 83
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/antui/model/PickerDataModel;

    .line 84
    .local v6, "selectedModel":Lcom/alipay/mobile/antui/model/PickerDataModel;
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setSelectedItem(Lcom/alipay/mobile/antui/model/PickerDataModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v6    # "selectedModel":Lcom/alipay/mobile/antui/model/PickerDataModel;
    :cond_4
    nop

    .line 94
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/AntUILinkagePickerPlugin$1;

    invoke-direct {v6, p0, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/AntUILinkagePickerPlugin$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/ui/AntUILinkagePickerPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->setOnLinkagePickerListener(Lcom/alipay/mobile/antui/picker/AUCascadePicker$OnLinkagePickerListener;)V

    .line 113
    invoke-virtual {v5}, Lcom/alipay/mobile/antui/picker/AUCascadePicker;->show()V

    .line 115
    return-void

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parse json fail:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AntUILinkagePickerPlugin"

    invoke-static {v8, v7}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v7, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v7}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 43
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "antUIGetCascadePicker"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/AntUILinkagePickerPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 37
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 31
    const-string v0, "antUIGetCascadePicker"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 32
    return-void
.end method
