.class public Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "TrackTouchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/TouchDelegate;

.field private final b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

.field private final c:Landroid/view/View;

.field private final d:Landroid/view/View;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private final j:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/AdapterView$OnItemClickListener;

.field private l:Landroid/widget/AdapterView$OnItemClickListener;

.field private m:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;Landroid/view/View;Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;Landroid/view/TouchDelegate;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "rootContentView"    # Landroid/view/View;
    .param p4, "clickInterceptorManager"    # Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
    .param p5, "touchDelegate"    # Landroid/view/TouchDelegate;
    .param p6, "pageId"    # Ljava/lang/String;
    .param p7, "appId"    # Ljava/lang/String;
    .param p8, "isBindingImmediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;",
            "Landroid/view/TouchDelegate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView;

    .line 93
    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    .line 94
    iput-object p3, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d:Landroid/view/View;

    .line 95
    iput-object p4, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->m:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    .line 96
    iput-object p5, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a:Landroid/view/TouchDelegate;

    .line 97
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;-><init>(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    .line 98
    iput-object p6, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f:Ljava/lang/String;

    .line 100
    iput-boolean p8, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g:Z

    .line 101
    return-void
.end method

.method private a()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 125
    .local v0, "curAdapterViewListener":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    if-nez v1, :cond_0

    .line 129
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->k:Landroid/widget/AdapterView$OnItemClickListener;

    .line 132
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 134
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    .end local v0    # "curAdapterViewListener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a()Lcom/alipay/mobile/monitor/track/TrackReflector;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 140
    .local v0, "curonClickListener":Landroid/view/View$OnClickListener;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    if-eq v0, v1, :cond_1

    .line 143
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->h:Landroid/view/View$OnClickListener;

    .line 146
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/view/View$OnClickListener;

    .line 148
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a()Lcom/alipay/mobile/monitor/track/TrackReflector;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b:Lcom/alipay/mobile/monitor/track/TrackTouchDelegate$TrackClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 151
    .end local v0    # "curonClickListener":Landroid/view/View$OnClickListener;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->j:Landroid/widget/AdapterView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->k:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->h:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 162
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a()Lcom/alipay/mobile/monitor/track/TrackReflector;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/monitor/track/TrackReflector;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->m:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->l:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->b()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 110
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->f:Ljava/lang/String;

    const/4 v6, 0x1

    const-wide/16 v7, 0x5dc

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->postAddDelegate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    :goto_0
    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TrackTouchDelegate"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;->a:Landroid/view/TouchDelegate;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
