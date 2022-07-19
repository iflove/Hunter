.class public Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;
.super Ljava/lang/Object;
.source "CornerMarkingDataProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CornerMarkingDataProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;Lcom/alibaba/fastjson/JSONArray;Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONArray;
    .param p2, "x2"    # Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;->filterArray2List(Lcom/alibaba/fastjson/JSONArray;Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private filterArray2List(Lcom/alibaba/fastjson/JSONArray;Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;)Ljava/util/List;
    .locals 9
    .param p1, "menus"    # Lcom/alibaba/fastjson/JSONArray;
    .param p2, "sp"    # Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 92
    return-object v0

    .line 94
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "list":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 96
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 97
    .local v4, "menuObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;-><init>()V

    .line 98
    .local v0, "dataItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    move-object v0, v5

    const-string/jumbo v6, "superscript"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->superscript:Ljava/lang/String;

    .line 99
    iget-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->superscript:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 102
    const-string/jumbo v5, "noticeId"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->noticeId:Ljava/lang/String;

    .line 103
    const-string v5, "0"

    const-string v6, "1"

    if-eqz p2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "click_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->noticeId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7, v5}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 107
    :cond_1
    if-eqz p2, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "expose_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->noticeId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {p2, v7, v5}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->exposed:Z

    .line 109
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->action:Ljava/lang/String;

    .line 110
    const-string v5, "callback"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->callback:Ljava/lang/String;

    .line 111
    const-string v5, "icon"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->icon:Ljava/lang/String;

    .line 112
    const-string/jumbo v5, "menuIconUrl"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->menuIconUrl:Ljava/lang/String;

    .line 113
    const-string/jumbo v5, "mid"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->mid:Ljava/lang/String;

    .line 114
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->name:Ljava/lang/String;

    .line 115
    const-string/jumbo v5, "options"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->options:Ljava/lang/String;

    .line 116
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v0    # "dataItem":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    .end local v4    # "menuObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 118
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_4
    return-object v1
.end method


# virtual methods
.method public click(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "noticeId"    # Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    .local v1, "userId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider$2;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "IO"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 88
    return-void

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public expose(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "menus"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 124
    .local v2, "userId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 127
    :cond_0
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    const/4 v0, 0x0

    .line 131
    .local v0, "needSyncData":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;

    .line 132
    .local v1, "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    move-object v1, v4

    iget-boolean v4, v4, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->exposed:Z

    if-nez v4, :cond_2

    .line 133
    const/4 v0, 0x1

    .line 134
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;->exposed:Z

    .line 136
    .end local v1    # "item":Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;
    :cond_2
    goto :goto_0

    .line 137
    :cond_3
    if-nez v0, :cond_4

    .line 138
    return-void

    .line 140
    :cond_4
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider$3;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "IO"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 156
    return-void

    .line 128
    .end local v0    # "needSyncData":Z
    :cond_5
    :goto_1
    return-void

    .line 125
    :cond_6
    :goto_2
    return-void
.end method

.method public getData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "callback"    # Lcom/alipay/mobile/nebulaappproxy/utils/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/alipay/mobile/nebulaappproxy/utils/Callback<",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingData;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/TinyappUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 31
    .local v2, "userId":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v6, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider$1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/corner/CornerMarkingDataProvider;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulaappproxy/utils/Callback;Lcom/alibaba/fastjson/JSONObject;)V

    const-string v0, "IO"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->runNotOnMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    return-void

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p3, v1}, Lcom/alipay/mobile/nebulaappproxy/utils/Callback;->callback(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
