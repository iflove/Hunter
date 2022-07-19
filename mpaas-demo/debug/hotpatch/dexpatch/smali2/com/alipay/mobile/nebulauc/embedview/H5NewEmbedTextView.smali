.class public Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;
.super Lcom/alipay/mobile/nebula/newembedview/H5NewBaseEmbedView;
.source "H5NewEmbedTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5NewEmbedTextView"


# instance fields
.field private element:Ljava/lang/String;

.field private mCore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/newembedview/H5NewBaseEmbedView;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->element:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    .line 30
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView$1;-><init>(Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 1

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->initView()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedTextView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    return-object v0
.end method

.method public onEmbedViewAttachedToWebView()V
    .locals 2

    .line 61
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onEmbedViewAttachedToWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onEmbedViewDestory()V
    .locals 2

    .line 71
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onEmbedViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onEmbedViewDetachedFromWebView()V
    .locals 2

    .line 66
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onEmbedViewDetachedFromWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onEmbedViewParamChanged()V
    .locals 2

    .line 76
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onEmbedViewParamChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onEmbedViewVisibilityChanged()V
    .locals 2

    .line 81
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onEmbedViewVisibilityChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onReceivedData(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 144
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedData data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedTextView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void

    .line 145
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 101
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedMessage actionType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedTextView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 102
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 10
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 109
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedRender data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NewEmbedTextView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "element"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->element:Ljava/lang/String;

    .line 114
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "text":Ljava/lang/String;
    const-string v1, "color"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "textColor":Ljava/lang/String;
    const-string v2, "textAlign"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "textAlign":Ljava/lang/String;
    const-string v3, "fontSize"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "fontSize":Ljava/lang/String;
    const-string v4, "fontWeight"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "fontWeight":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->generateBackgroundDrawable(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;I)Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;

    move-result-object v5

    .line 122
    .local v5, "drawable":Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/embedview/H5EmbedViewUtil;->convertRGBAColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :cond_1
    const-string v6, "center"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 129
    :cond_2
    const-string v6, "right"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 135
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    :cond_4
    const-string v6, "bold"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 138
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/H5NewEmbedTextView;->mCore:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    :cond_5
    return-void

    .line 110
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "textColor":Ljava/lang/String;
    .end local v2    # "textAlign":Ljava/lang/String;
    .end local v3    # "fontSize":Ljava/lang/String;
    .end local v4    # "fontWeight":Ljava/lang/String;
    .end local v5    # "drawable":Lcom/alipay/mobile/nebulauc/embedview/H5BorderDrawable;
    :cond_6
    :goto_1
    return-void
.end method

.method public onWebViewDestory()V
    .locals 2

    .line 96
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onWebViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onWebViewPause()V
    .locals 2

    .line 91
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onWebViewPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onWebViewResume()V
    .locals 2

    .line 86
    const-string v0, "H5NewEmbedTextView"

    const-string v1, "onWebViewResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .line 158
    return-void
.end method
