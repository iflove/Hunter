.class public Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TransWebContent.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5TransWebContent"


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private a()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_trans_web_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    .line 55
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_trans_web_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->c:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tf_nav_ly:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->d:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_tf_nav_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->e:Landroid/widget/ImageView;

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "transAnimate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 65
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Lcom/alipay/mobile/h5container/api/H5PluginManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z

    .line 66
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->getContent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5ThirdDisclaimerUtils;->needShowDisclaimer(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->g:I

    .line 87
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    .line 88
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->g:I

    if-eqz v1, :cond_2

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    .line 92
    :cond_2
    return-void
.end method

.method private b()Z
    .locals 3

    .line 161
    const/4 v0, 0x1

    .line 162
    .local v0, "result":Z
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v2, "inputWarning"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 164
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->getWarningTipSet()Ljava/util/HashSet;

    move-result-object v1

    const-string v2, "dataFlow"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    .line 168
    :cond_1
    return v0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b:Landroid/view/View;

    return-object v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 6
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 125
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 127
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "closeWebview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v5, "h5PageClose"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_3

    .line 129
    :cond_0
    const-string v2, "h5PagePhysicalBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 130
    const-string v2, "h5ToolbarBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 132
    :cond_1
    const-string v2, "hideTransBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->d:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto :goto_3

    .line 135
    :cond_2
    const-string v2, "disClaimerClick"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->g:I

    if-eqz v2, :cond_a

    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget v5, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->g:I

    invoke-interface {v2, v3, v5}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    goto :goto_3

    .line 142
    :cond_3
    const-string v2, "showDisClaimer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 144
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v2, :cond_7

    .line 145
    const-string v2, "mode"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    move v5, v3

    .line 146
    .local v5, "mode":I
    move v5, v2

    if-eq v2, v4, :cond_5

    const/4 v2, 0x2

    if-ne v5, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 147
    :cond_5
    :goto_0
    if-eqz v4, :cond_6

    .line 148
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->showDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;I)V

    goto :goto_1

    .line 150
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->hideDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 153
    .end local v5    # "mode":I
    :cond_7
    :goto_1
    return v3

    .line 155
    :cond_8
    return v3

    .line 131
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v5, "h5PageBack"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 157
    :cond_a
    :goto_3
    return v4
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 110
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->f:Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->g:I

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5DisClaimerProvider;->hideDisclaimer(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 115
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;

    const/4 v2, 0x0

    .line 116
    .local v2, "tipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;->a:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;->hideWarningTip(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 120
    .end local v2    # "tipProvider":Lcom/alipay/mobile/nebula/provider/H5WarningTipProvider;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 100
    const-string v0, "closeWebview"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v0, "hideTransBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "disClaimerClick"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v0, "showDisClaimer"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "h5PageError"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 173
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 174
    return-void
.end method
