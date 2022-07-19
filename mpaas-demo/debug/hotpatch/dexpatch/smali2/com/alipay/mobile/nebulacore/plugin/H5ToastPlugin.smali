.class public Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ToastPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ToastPlugin"

.field private static final a:I

.field private static final b:I

.field private static final c:I


# instance fields
.field private d:Landroid/widget/Toast;

.field private e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_toast_ok:I

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a:I

    .line 37
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_toast_false:I

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->b:I

    .line 38
    sget v0, Lcom/alipay/mobile/nebula/R$drawable;->h5_toast_exception:I

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    .line 41
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "image"    # Ljava/lang/String;

    .line 64
    const-string v0, "success"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a:I

    return v0

    .line 66
    :cond_0
    const-string v0, "fail"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->b:I

    return v0

    .line 68
    :cond_1
    const-string v0, "exception"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->c:I

    return v0

    .line 71
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private a()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->dismiss()V

    .line 169
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconRes"    # I
    .param p3, "textRes"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .line 114
    instance-of v0, p1, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 116
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/util/H5ToastUtil;->checkOp(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 117
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    .line 119
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->setDuration(I)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->setTextColor(I)V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->setImageView(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->e:Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5ToastLikeDialog;->showToastLikeDialog()V

    return-void

    .line 128
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 129
    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_toast:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v2, v3

    .line 130
    .local v2, "view":Landroid/view/View;
    move-object v2, v0

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_mini_toast_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .local v0, "image":Landroid/widget/ImageView;
    const/16 v3, 0x8

    if-eqz p2, :cond_2

    .line 132
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :goto_0
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_mini_toast_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 137
    .local v4, "text":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v5, 0xc0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 143
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    if-nez v3, :cond_4

    .line 144
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    .line 145
    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 147
    :cond_4
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 150
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "text":Landroid/widget/TextView;
    goto :goto_2

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    if-nez v0, :cond_6

    .line 153
    invoke-static {p1, p3, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {v0, p3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 158
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_7
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 81
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    .local v1, "params":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "content"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "content":Ljava/lang/String;
    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "type":Ljava/lang/String;
    const-string v3, "duration"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 89
    .local v4, "duration":I
    move v4, v3

    if-nez v3, :cond_1

    .line 90
    const/16 v4, 0x7d0

    .line 92
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a(Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "iconId":I
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5, v3, v0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a(Landroid/content/Context;ILjava/lang/String;I)V

    .line 96
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;

    invoke-direct {v5, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 107
    const-string v5, "H5ToastPlugin"

    const-string v6, "toast show"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 83
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "iconId":I
    .end local v4    # "duration":I
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a()V

    return-void
.end method

.method private static b()Z
    .locals 2

    .line 172
    const-string v0, "h5_showToastLikeDialog"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    return v1

    .line 176
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgecontext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 53
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string v1, "toast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "hideToast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->a()V

    .line 59
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 46
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 47
    const-string v0, "toast"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v0, "hideToast"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ToastPlugin;->d:Landroid/widget/Toast;

    .line 78
    return-void
.end method
