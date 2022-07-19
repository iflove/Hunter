.class public Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ActionSheetPlugin.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 32
    const-string v0, "H5ActionSheetPlugin"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->a:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->b:Z

    .line 46
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 12

    .line 97
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 99
    if-nez v2, :cond_0

    .line 100
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 101
    return-void

    .line 104
    :cond_0
    const-string p1, "title"

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    const-string v1, "cancelBtn"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v3, "btns"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 107
    const-string v5, "badges"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 108
    nop

    .line 109
    const-string v6, "destructiveBtnIndex"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    .line 112
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->f:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    .line 114
    const/4 v7, 0x1

    if-eqz v6, :cond_8

    .line 115
    nop

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v9, "-1"

    const-string v10, "index"

    if-nez v1, :cond_1

    .line 120
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 123
    invoke-virtual {v0, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    nop

    .line 130
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 133
    :try_start_0
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v1

    .line 135
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 136
    invoke-virtual {v1, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :goto_1
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_2
    const/4 v7, 0x0

    :cond_3
    nop

    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 142
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    move v8, v7

    .line 149
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 150
    if-nez v8, :cond_6

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->f:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->setContextAndContent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->f:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    const/4 v7, 0x0

    move-object v3, v4

    move-object v4, v6

    move-object v6, p2

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->setContextAndContent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Landroid/view/View$OnClickListener;)V

    .line 155
    :goto_3
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->f:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->getAntUIActionSheet()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->e:Landroid/app/Dialog;

    .line 156
    if-eqz p1, :cond_7

    .line 157
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 159
    :cond_7
    return-void

    .line 161
    :cond_8
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->c:Landroid/view/ViewGroup;

    if-nez v5, :cond_9

    .line 162
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020002

    .line 163
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->c:Landroid/view/ViewGroup;

    .line 166
    :cond_9
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 167
    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_action_sheet:I

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    .line 169
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v9, -0x2

    invoke-direct {v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 173
    const/4 v9, 0x7

    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v6

    .line 174
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    new-instance v6, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$1;

    invoke-direct {v6, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 188
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    sget v10, Lcom/alipay/mobile/nebula/R$id;->rl_h5_action_sheet:I

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 189
    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    sget v11, Lcom/alipay/mobile/nebula/R$id;->h5_action_sheet_content:I

    .line 190
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 192
    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    sget v9, Lcom/alipay/mobile/nebula/R$id;->h5_action_sheet_title:I

    .line 196
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 199
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 202
    :cond_a
    const/16 p1, 0x8

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :goto_4
    new-instance p1, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;

    invoke-direct {p1, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 218
    nop

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 221
    sget p2, Lcom/alipay/mobile/nebula/R$layout;->h5_as_default_button:I

    invoke-virtual {v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 223
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v10, p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    const/4 p2, 0x1

    goto :goto_5

    .line 220
    :cond_b
    const/4 p2, 0x0

    .line 230
    :goto_5
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 231
    nop

    :goto_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    .line 232
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "otherButton ="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "H5ActionSheetPlugin"

    invoke-static {v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget v6, Lcom/alipay/mobile/nebula/R$layout;->h5_as_default_button:I

    invoke-virtual {v2, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 236
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v10, v6, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 231
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 244
    :cond_c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 245
    sget v0, Lcom/alipay/mobile/nebula/R$layout;->h5_as_cancel_button:I

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    add-int/2addr p2, v7

    invoke-virtual {v10, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 254
    :cond_d
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->c:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->c:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 256
    iput-boolean v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->b:Z

    .line 258
    return-void
.end method

.method private a()Z
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->e:Landroid/app/Dialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 81
    return v1

    .line 83
    :cond_0
    return v2

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->b:Z

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->b:Z

    .line 89
    return v1

    .line 91
    :cond_2
    return v2
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 64
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    return v2

    .line 69
    :cond_0
    const-string v1, "actionSheet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->a()Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 72
    return v2

    .line 74
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 58
    const-string v0, "actionSheet"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->a()Z

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->f:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->onRelease()V

    .line 54
    :cond_0
    return-void
.end method
