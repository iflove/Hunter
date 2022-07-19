.class public Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5TransProgressContent.java"


# static fields
.field public static final DEFAULT_SHOW_CLOSE_DELAY:I = 0x7d0

.field public static final KEY_SHOW_CLOSE_DELAY:Ljava/lang/String; = "h5_showCloseDelay"

.field public static final TAG:Ljava/lang/String; = "H5TransProgressContent"


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Ljava/lang/Runnable;

.field private c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/os/Handler;

.field private h:Landroid/content/Context;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 137
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->a:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$3;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->b:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->a()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private a()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h:Landroid/content/Context;

    .line 52
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_trans_progress_content:I

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d:Landroid/widget/RelativeLayout;

    .line 55
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_progress_pb:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->e:Landroid/widget/ProgressBar;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_close_tv:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->f:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "backgroundColor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 60
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->g:Landroid/os/Handler;

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->b:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->a:Ljava/lang/Runnable;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->i:Z

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->i:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "H5TransProgressContent"

    const-string v1, "alreadyAddView return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->i:Z

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 114
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->c:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method private static c()I
    .locals 5

    .line 127
    const-string v0, "h5_showCloseDelay"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "delayStr":Ljava/lang/String;
    const/16 v1, 0x7d0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 130
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return v1

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "globalException":Ljava/lang/Exception;
    const-string v3, "H5TransProgressContent"

    const-string v4, "exception detail."

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v2    # "globalException":Ljava/lang/Exception;
    return v1
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 91
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 93
    .local v1, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "h5PageFinished"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 94
    const-string v2, "h5PageError"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const-string v2, "h5PageProgress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "progress"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 98
    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->b()V

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->b()V

    .line 102
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v2

    return v2
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 84
    const-string v0, "h5PageFinished"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v0, "h5PageError"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v0, "h5PageProgress"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 121
    invoke-super {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onRelease()V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5TransProgressContent;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method
