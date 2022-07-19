.class public Lcom/alipay/mobile/nebulacore/view/H5FontBar;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5FontBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HIDE_FONT_BAR:Ljava/lang/String; = "hideFontBar"

.field public static final SHOW_FONT_BAR:Ljava/lang/String; = "showFontBar"

.field public static final TAG:Ljava/lang/String; = "H5FontBar"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/ViewGroup;

.field private m:Lcom/alipay/mobile/h5container/api/H5Page;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 1
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    .line 61
    return-void
.end method

.method private a()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    move-object v2, v1

    .line 69
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 71
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    .line 73
    sget v3, Lcom/alipay/mobile/nebula/R$layout;->h5_font_bar:I

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    .line 75
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_blank:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a:Landroid/view/View;

    .line 76
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->g:Landroid/widget/ImageView;

    .line 82
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h:Landroid/widget/ImageView;

    .line 83
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size3:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->i:Landroid/widget/ImageView;

    .line 84
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_iv_font_size4:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->j:Landroid/widget/ImageView;

    .line 85
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_close:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->f:Landroid/view/View;

    .line 87
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_size1:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b:Landroid/view/View;

    .line 88
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_size2:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c:Landroid/view/View;

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_size3:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d:Landroid/view/View;

    .line 90
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_font_size4:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->e:Landroid/view/View;

    .line 92
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->e:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->f:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/16 v3, 0x64

    .line 100
    .local v3, "fontSize":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/h5container/api/H5Session;->getScenario()Lcom/alipay/mobile/h5container/api/H5Scenario;

    move-result-object v4

    move-object v5, v1

    .line 101
    .local v5, "scenario":Lcom/alipay/mobile/h5container/api/H5Scenario;
    move-object v5, v4

    if-eqz v4, :cond_2

    .line 102
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Scenario;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v4

    const-string v6, "h5_font_size"

    invoke-interface {v4, v6}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v1, "fontStr":Ljava/lang/String;
    move-object v1, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    :cond_1
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b(I)V

    .line 108
    .end local v1    # "fontStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 4
    .param p1, "size"    # I

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 136
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "h5PageFontSize"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b(I)V

    .line 140
    .end local v1    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 159
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d()V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "H5FontBar"

    const-string v2, "fatal view state error "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    .line 170
    return-void
.end method

.method private b(I)V
    .locals 2
    .param p1, "size"    # I

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->g:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size1_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size2_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->i:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size3_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->j:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size4_enable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->g:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size1_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 149
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->h:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size2_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 151
    :cond_1
    const/16 v0, 0x96

    if-ne p1, v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->i:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size3_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 153
    :cond_2
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->j:Landroid/widget/ImageView;

    sget v1, Lcom/alipay/mobile/nebula/R$drawable;->h5_font_size4_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :cond_3
    return-void
.end method

.method private c()V
    .locals 2

    .line 173
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d()V

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    .line 176
    return-void
.end method

.method private d()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a()V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 197
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string v1, "showFontBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b()V

    goto :goto_0

    .line 200
    :cond_0
    const-string v1, "hideFontBar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c()V

    .line 205
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 203
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 185
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->n:Z

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c()V

    .line 189
    const/4 v1, 0x1

    return v1

    .line 192
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, "targetFontSize":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/16 v0, 0x4b

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    const/16 v0, 0x64

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const/16 v0, 0x96

    goto :goto_0

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->e:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 123
    const/16 v0, 0xc8

    .line 126
    :cond_4
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 127
    return-void

    .line 130
    :cond_5
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->a(I)V

    .line 131
    return-void

    .line 114
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->c()V

    .line 115
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 210
    const-string v0, "showFontBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v0, "hideFontBar"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v0, "h5PageBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;->m:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 181
    return-void
.end method
