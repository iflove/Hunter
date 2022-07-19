.class public Lcom/alipay/mobile/monitor/track/TrackIntegrator;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;,
        Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;,
        Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;,
        Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    }
.end annotation


# static fields
.field public static final END_SEPARATOR_CHAR:Ljava/lang/String; = "_"

.field public static final SEPARATOR_CHAR:Ljava/lang/String; = "__"

.field public static final TAG:Ljava/lang/String;

.field public static TAG_DISABLE_AUTOTRACK:Ljava/lang/String;

.field private static e:Landroid/os/Handler;

.field public static entityContentTagId:I

.field private static f:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

.field public static lastTrackPage:Ljava/lang/String;

.field public static lastViewName:Ljava/lang/String;

.field public static mLastActiveTime:J

.field public static semTagId:I


# instance fields
.field private a:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

.field private h:Z

.field public handleClickTime:J

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field public lastClickTime:J

.field public lastClickViewId:Ljava/lang/String;

.field public lastClickViewSpm:Ljava/lang/String;

.field public lastClickViewTime:J

.field private m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

.field mOnAutoClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;",
            ">;>;"
        }
    .end annotation
.end field

.field mRecyclerViewIndexGetter:Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field public respond:J

.field public respondOnResume:J

.field public resumeHandleClickTime:J

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    const-class v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Landroid/os/Handler;

    .line 137
    const-string v0, "first"

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    .line 145
    const/4 v1, 0x0

    sput v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->entityContentTagId:I

    .line 147
    sput v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->semTagId:I

    .line 149
    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastTrackPage:Ljava/lang/String;

    .line 155
    const-string v0, "disable_auto_track"

    sput-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG_DISABLE_AUTOTRACK:Ljava/lang/String;

    .line 162
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mLastActiveTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mOnAutoClickListeners:Ljava/util/List;

    .line 117
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    .line 118
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    .line 119
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Landroid/util/Pair;

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Z

    .line 133
    iput-boolean v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:Z

    .line 139
    const-string v1, ""

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickViewSpm:Ljava/lang/String;

    .line 141
    const-string v1, "first"

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickViewId:Ljava/lang/String;

    .line 143
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickViewTime:J

    .line 166
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    .line 221
    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->q:Ljava/lang/ref/WeakReference;

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->r:J

    .line 223
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->s:J

    .line 175
    new-instance v0, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-direct {v0}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    .line 177
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerAdapter()Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    move-result-object v0

    .line 178
    .local v0, "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->onTrackIntegratorInit(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)V

    .line 181
    :cond_0
    return-void
.end method

.method private a()V
    .locals 7

    .line 947
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 948
    return-void

    .line 950
    :cond_0
    iget-wide v4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->resumeHandleClickTime:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_1

    .line 951
    return-void

    .line 953
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respondOnResume:J

    .line 954
    iput-wide v4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->resumeHandleClickTime:J

    .line 955
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    .line 956
    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    .line 959
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .line 1182
    const-string v0, "com.alipay.android.launcher.TabLauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1183
    const/4 v0, 0x0

    return v0

    .line 1186
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    .locals 2

    const-class v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    monitor-enter v0

    .line 184
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-direct {v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;-><init>()V

    sput-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    .line 187
    :cond_0
    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->f:Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLastActiveTime()J
    .locals 2

    .line 1208
    sget-wide v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mLastActiveTime:J

    return-wide v0
.end method

.method public static getSemTagId()I
    .locals 1

    .line 1118
    sget v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->semTagId:I

    return v0
.end method

.method public static setLastActiveTime(J)V
    .locals 0
    .param p0, "mLastActiveTime"    # J

    .line 1212
    sput-wide p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mLastActiveTime:J

    .line 1213
    return-void
.end method

.method public static setSemTagId(I)V
    .locals 0
    .param p0, "semTagId"    # I

    .line 1122
    sput p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->semTagId:I

    .line 1123
    return-void
.end method


# virtual methods
.method public addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V
    .locals 1
    .param p1, "interceptor"    # Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->addClickInterceptor(Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptor;)V

    .line 201
    return-void
.end method

.method public addDelegate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "rootContentView"    # Landroid/view/View;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isBindingImmediately"    # Z

    .line 1034
    if-nez p1, :cond_0

    .line 1035
    return-void

    .line 1037
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    .line 1038
    .local v0, "touchables":Ljava/util/List;
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i":I
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_4

    .line 1040
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v11, v1

    .line 1041
    .local v11, "touchable":Landroid/view/View;
    if-nez v11, :cond_1

    .line 1042
    goto :goto_2

    .line 1045
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v1

    move-object v12, v1

    .line 1046
    .local v12, "delegate":Landroid/view/TouchDelegate;
    nop

    instance-of v1, v12, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    if-nez v1, :cond_3

    .line 1047
    const/4 v1, 0x0

    .line 1048
    .local v1, "adapterView":Landroid/widget/AdapterView;
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v13, v2

    .line 1049
    .local v13, "parentView":Landroid/view/ViewParent;
    if-eqz v13, :cond_3

    instance-of v2, v13, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1050
    move-object v2, v13

    check-cast v2, Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AdapterView;

    if-eqz v2, :cond_2

    .line 1051
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView;

    move-object v1, v2

    move-object v14, v1

    goto :goto_1

    .line 1050
    :cond_2
    move-object v14, v1

    .line 1053
    .end local v1    # "adapterView":Landroid/widget/AdapterView;
    .local v14, "adapterView":Landroid/widget/AdapterView;
    :goto_1
    new-instance v15, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;

    move-object/from16 v9, p0

    iget-object v5, v9, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    move-object v1, v15

    move-object v2, v14

    move-object v3, v11

    move-object/from16 v4, p1

    move-object v6, v12

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/alipay/mobile/monitor/track/TrackTouchDelegate;-><init>(Landroid/widget/AdapterView;Landroid/view/View;Landroid/view/View;Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;Landroid/view/TouchDelegate;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v15}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    .end local v11    # "touchable":Landroid/view/View;
    .end local v12    # "delegate":Landroid/view/TouchDelegate;
    .end local v13    # "parentView":Landroid/view/ViewParent;
    .end local v14    # "adapterView":Landroid/widget/AdapterView;
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1062
    .end local v0    # "touchables":Ljava/util/List;
    .end local v10    # "i":I
    :cond_4
    goto :goto_3

    .line 1060
    :catchall_0
    move-exception v0

    .line 1061
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1063
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method public addPageInfo(Ljava/lang/String;Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pageInfo"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1126
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->o:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    iput-object v0, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->referPageInfo:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1128
    invoke-static {p2}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->clonePageInfo(Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->o:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1129
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->p:Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_0
    return-void
.end method

.method public autoTrackClick(Z)V
    .locals 0
    .param p1, "isAutoTrack"    # Z

    .line 209
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Z

    .line 210
    return-void
.end method

.method public autoTrackPage(Z)V
    .locals 0
    .param p1, "isAutoTrack"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:Z

    .line 219
    return-void
.end method

.method public clickView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->g:Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/monitor/track/interceptor/ClickInterceptorManager;->handleOnClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    .line 757
    return-void
.end method

.method public createActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 231
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->q:Ljava/lang/ref/WeakReference;

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->r:J

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->s:J

    .line 238
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 239
    return-void

    .line 232
    :cond_1
    :goto_0
    return-void
.end method

.method public destoryActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 500
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->dropPageInfo(Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public destoryFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 490
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->dropPageInfo(Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public displayActivity(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 247
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "activeActivity":Ljava/lang/Object;
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->q:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 254
    .local v1, "storedActivity":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_3

    if-ne p1, v1, :cond_3

    .line 255
    iget-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->s:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->r:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->s:J

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    .line 260
    .local v2, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    iget-wide v6, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->launchTime:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3

    .line 261
    iget-wide v3, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->s:J

    iput-wide v3, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->launchTime:J

    .line 265
    .end local v0    # "activeActivity":Ljava/lang/Object;
    .end local v1    # "storedActivity":Ljava/lang/Object;
    .end local v2    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    :cond_3
    return-void

    .line 248
    :cond_4
    :goto_1
    return-void
.end method

.method public enterActivity(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .line 274
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 279
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viewSwitch"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;)V

    .line 282
    .local v0, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->startTimestamp:J

    .line 283
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionToken"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionToken:Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionDesc"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->entryTime:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerAdapter()Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    move-result-object v2

    .line 289
    .local v2, "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v2, p1}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->getAppId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    .line 291
    invoke-interface {v2, p1}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->getSourceId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->sourceId:Ljava/lang/String;

    .line 294
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a()V

    .line 296
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8fdb\u5165\u9875\u9762:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n\u70b9\u51fb\u6765\u6e90:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")\r\n\u4e1a\u52a1\u6765\u6e90:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->sourceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n\u6240\u5728\u5e94\u7528:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " respond = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "test"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v5, "appid\u4e3a\u7a7a"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_2
    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    const-string v6, "appID"

    invoke-interface {v5, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 310
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f53\u524d\u9875\u9762\u5e94\u7528\u548cappID\u4e0d\u4e00\u81f4\uff1a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const-string/jumbo v5, "refViewID"

    invoke-interface {v3, v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "refViewID":Ljava/lang/String;
    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 316
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u6765\u6e90\u63a7\u4ef6\u548c\u548crefViewID\u4e0d\u4e00\u81f4\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v3    # "refViewID":Ljava/lang/String;
    :cond_4
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastTrackPage:Ljava/lang/String;

    .line 326
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p1, v4}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 328
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->trackClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 329
    return-void

    .line 275
    .end local v0    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    .end local v2    # "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    :cond_5
    :goto_0
    return-void
.end method

.method public enterFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 446
    return-void
.end method

.method public enterFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isHookInvoke"    # Z

    .line 413
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->isCollectFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 418
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viewSwitch"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;)V

    .line 421
    .local v0, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->startTimestamp:J

    .line 422
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionToken"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionToken:Ljava/lang/String;

    .line 424
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionDesc"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->entryTime:Ljava/lang/String;

    .line 426
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u8fdb\u5165\u9875\u9762(\u5982\u679cisHookInvoke=true\u53ef\u80fd\u4e0d\u4f1a\u81ea\u52a8\u5316\u57cb\u70b9\uff0c\u6839\u636eTrackPageConfig\u5224\u65ad):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isHookInvoke = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6765\u6e90\u63a7\u4ef6:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    .line 432
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastTrackPage:Ljava/lang/String;

    .line 434
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 436
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->trackClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 437
    return-void

    .line 414
    .end local v0    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method public enterH5Page(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tile"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "sourceId"    # Ljava/lang/String;

    .line 767
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "sourceId"    # Ljava/lang/String;

    .line 798
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 799
    return-void
.end method

.method public enterView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "extParams"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 802
    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 806
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "viewSwitch"

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 808
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;)V

    .line 809
    .local v0, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->startTimestamp:J

    .line 810
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionID"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionToken"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionToken:Ljava/lang/String;

    .line 812
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    const-string v3, "actionDesc"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    .line 813
    iput-object p3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    .line 814
    iput-object p4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->sourceId:Ljava/lang/String;

    .line 815
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->getNowTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->entryTime:Ljava/lang/String;

    .line 816
    const-wide/16 v2, -0x1

    .line 817
    .local v2, "launchTime":J
    if-eqz p5, :cond_1

    .line 818
    const-string v4, "launchTime"

    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 820
    .local v4, "launchTimeString":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide v2, v5

    .line 821
    iput-wide v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->launchTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    goto :goto_0

    .line 822
    :catch_0
    move-exception v5

    .line 823
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v7, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v8, "launchTime cast Exception"

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .end local v4    # "launchTimeString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a()V

    .line 829
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u8fdb\u5165\u9875\u9762:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n\u70b9\u51fb\u6765\u6e90:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")\r\n\u4e1a\u52a1\u6765\u6e90:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->sourceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n\u6240\u5728\u5e94\u7528:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " respond = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "test"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 838
    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 839
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v6, "appid\u4e3a\u7a7a"

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_2
    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v6

    const-string v7, "appID"

    invoke-interface {v6, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 843
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u5f53\u524d\u9875\u9762\u5e94\u7528\u548cappID\u4e0d\u4e00\u81f4\uff1a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 843
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v4

    const-string/jumbo v6, "refViewID"

    invoke-interface {v4, v6}, Lcom/alipay/mobile/common/logging/api/LogContext;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 848
    .local v4, "refViewID":Ljava/lang/String;
    iget-object v6, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    iget-object v6, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 849
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6765\u6e90\u63a7\u4ef6\u548c\u548crefViewID\u4e0d\u4e00\u81f4\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_4
    const-string v6, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "20000002"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 853
    :cond_5
    const-string v6, "com.alipay.android.phone.discovery.o2ohome.O2oWidgetGroup"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "20000238"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 854
    :cond_6
    const-string v6, "com.alipay.mobile.socialwidget.ui.SocialHomePage"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "20000217"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 855
    :cond_7
    const-string v6, "com.alipay.android.widgets.asset.AssetWidgetGroup"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "20000004"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 856
    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appId\u4e0d\u6b63\u786e\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .end local v4    # "refViewID":Ljava/lang/String;
    :cond_9
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Landroid/util/Pair;

    .line 863
    sput-object p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastTrackPage:Ljava/lang/String;

    .line 865
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, p1, v5}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 867
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->trackClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 868
    return-void

    .line 803
    .end local v0    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    .end local v2    # "launchTime":J
    :cond_a
    :goto_1
    return-void
.end method

.method public getAutoPageInfoByView(Ljava/lang/Object;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    .line 624
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getAutoPageInfoByView(Ljava/lang/Object;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageInfo()Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    return-object v0
.end method

.method public getEntityContentTagId()I
    .locals 1

    .line 1114
    sget v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->entityContentTagId:I

    return v0
.end method

.method public getLastClickViewSpm()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickViewSpm:Ljava/lang/String;

    return-object v0
.end method

.method public getLastClickViewTime()J
    .locals 2

    .line 685
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickViewTime:J

    return-wide v0
.end method

.method public getPageIdByView(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "view"    # Ljava/lang/Object;

    .line 573
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 574
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v3, "getPageId_View is null or spm is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-object v0

    .line 578
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 580
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v4, "getPageId_view.toString() is null"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-object v0

    .line 584
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getPageInfoByKey(Ljava/lang/String;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    move-result-object v2

    .line 585
    .local v2, "pageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v2, :cond_2

    .line 586
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v5, "getPageId_pageInfo is null"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-object v0

    .line 590
    :cond_2
    iget-object v0, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method getPageInfoByKey(Ljava/lang/String;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    return-object v0

    .line 1170
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageInfoByView(Ljava/lang/Object;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 6
    .param p1, "view"    # Ljava/lang/Object;

    .line 634
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v3, "getPageInfoByView is null or spm is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-object v0

    .line 639
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v4, "getPageInfoByView() is null"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-object v0

    .line 645
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getPageInfoByKey(Ljava/lang/String;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    move-result-object v2

    .line 646
    .local v2, "pageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v2, :cond_2

    .line 647
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v5, "getPageInfoByView view is null"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    return-object v0

    .line 650
    :cond_2
    return-object v2
.end method

.method public getPageMonitorCurrentPageInfo()Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1080
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    return-object v0

    .line 1082
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageStartTimeByView(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "view"    # Ljava/lang/Object;

    .line 600
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 601
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v3, "getPageTime_View is null or spm is null"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-object v0

    .line 605
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v4, "getPageTime_view.toString() is null"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-object v0

    .line 611
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getPageInfoByKey(Ljava/lang/String;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    move-result-object v2

    .line 612
    .local v2, "pageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v2, :cond_2

    .line 613
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v5, "getPageTime_pageInfo is null"

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-object v0

    .line 616
    :cond_2
    iget-object v0, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTag(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 689
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 690
    return-object v0

    .line 692
    :cond_0
    sget v1, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->TAG_ID:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 694
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 697
    :cond_1
    return-object v0
.end method

.method public getXpath(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1018
    invoke-static {p1}, Lcom/alipay/mobile/monitor/track/xpath/XPathFinder;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmRecyclerViewIndexGetter()Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;
    .locals 1

    .line 1190
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mRecyclerViewIndexGetter:Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;

    return-object v0
.end method

.method public isCollectFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 1204
    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->i:Z

    return v0
.end method

.method public isDisableAutoTrackView(Landroid/view/View;)Z
    .locals 3
    .param p1, "clickView"    # Landroid/view/View;

    .line 704
    if-eqz p1, :cond_1

    .line 706
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getViewTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "tag":Ljava/lang/String;
    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG_DISABLE_AUTOTRACK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 708
    const/4 v1, 0x1

    return v1

    .line 712
    .end local v0    # "tag":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public leaveActivity(Landroid/app/Activity;)V
    .locals 19
    .param p1, "activity"    # Landroid/app/Activity;

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 342
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    .line 343
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leaveActivity lastViewName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    .line 347
    .local v9, "pathBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 348
    .local v1, "hasAddTopAc":Z
    const/4 v2, 0x0

    .line 350
    .local v2, "activityTrackId":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerAdapter()Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    move-result-object v10

    .line 351
    .local v10, "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    const/16 v3, 0x3e

    if-eqz v10, :cond_4

    .line 352
    invoke-interface {v10, v8}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->getActivityTrackId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-interface {v10, v8}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->getStartActivityCount(Landroid/app/Activity;)I

    move-result v4

    .line 357
    .local v4, "activityCount":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 358
    invoke-interface {v10, v8, v5}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->getActivityAt(Landroid/app/Activity;I)Landroid/app/Activity;

    move-result-object v6

    .line 359
    .local v6, "ac":Landroid/app/Activity;
    if-ne v6, v8, :cond_1

    .line 360
    const/4 v1, 0x1

    .line 362
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "unkown"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    .end local v6    # "ac":Landroid/app/Activity;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v11, v1

    move-object v12, v2

    goto :goto_2

    .line 351
    .end local v4    # "activityCount":I
    .end local v5    # "index":I
    :cond_4
    move v11, v1

    move-object v12, v2

    .line 368
    .end local v1    # "hasAddTopAc":Z
    .end local v2    # "activityTrackId":Ljava/lang/String;
    .local v11, "hasAddTopAc":Z
    .local v12, "activityTrackId":Ljava/lang/String;
    :goto_2
    if-nez v11, :cond_5

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    :cond_5
    const/4 v1, 0x0

    .line 374
    .local v1, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    iget-object v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    if-eqz v2, :cond_8

    .line 375
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 376
    .local v2, "activeActivity":Ljava/lang/Object;
    if-eqz v2, :cond_7

    if-ne v2, v8, :cond_7

    .line 377
    new-instance v3, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v1, v3

    .line 378
    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->b:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    .line 379
    .local v3, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    iget-object v4, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 380
    iget-object v4, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionToken:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 381
    iget-object v4, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v12}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 383
    iget-object v4, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->startTimestamp:J

    sub-long/2addr v4, v6

    .line 385
    .local v4, "time":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 386
    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 385
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "timeStr":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 389
    iget-wide v13, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->launchTime:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 390
    iget-object v7, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->sourceId:Ljava/lang/String;

    const-string/jumbo v13, "sourceappid"

    invoke-virtual {v1, v13, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "staytime"

    invoke-virtual {v1, v14, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v7, v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->entryTime:Ljava/lang/String;

    const-string/jumbo v14, "openpagetime"

    invoke-virtual {v1, v14, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object v7, v2

    move-object v14, v3

    .end local v2    # "activeActivity":Ljava/lang/Object;
    .end local v3    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    .local v7, "activeActivity":Ljava/lang/Object;
    .local v14, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    iget-wide v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    const-wide/16 v15, 0x0

    cmp-long v17, v2, v15

    if-lez v17, :cond_6

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v4

    .end local v4    # "time":J
    .local v17, "time":J
    iget-wide v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "respond"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 393
    .end local v17    # "time":J
    .restart local v4    # "time":J
    :cond_6
    move-wide/from16 v17, v4

    .line 396
    .end local v4    # "time":J
    .restart local v17    # "time":J
    :goto_3
    if-eqz v10, :cond_8

    .line 397
    invoke-interface {v10, v1}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->onAssembleBehavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_4

    .line 376
    .end local v6    # "timeStr":Ljava/lang/String;
    .end local v7    # "activeActivity":Ljava/lang/Object;
    .end local v14    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    .end local v17    # "time":J
    .restart local v2    # "activeActivity":Ljava/lang/Object;
    :cond_7
    move-object v7, v2

    .line 403
    .end local v2    # "activeActivity":Ljava/lang/Object;
    :cond_8
    :goto_4
    move-object v13, v1

    .end local v1    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .local v13, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v6, v13

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Z)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 405
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    .line 406
    iget-wide v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    iget-wide v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->resumeHandleClickTime:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    iget-wide v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->handleClickTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_a

    .line 407
    :cond_9
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    .line 409
    :cond_a
    return-void

    .line 339
    .end local v9    # "pathBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    .end local v11    # "hasAddTopAc":Z
    .end local v12    # "activityTrackId":Ljava/lang/String;
    .end local v13    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_b
    :goto_5
    return-void
.end method

.method public leaveFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->leaveFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 455
    return-void
.end method

.method public leaveFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 13
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "isHookInvoke"    # Z

    .line 458
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->isCollectFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 463
    .local v0, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 465
    .local v1, "activeFragement":Ljava/lang/Object;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_1

    .line 466
    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v0, v2

    .line 467
    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->c:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    .line 469
    .local v2, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->startTimestamp:J

    sub-long/2addr v3, v5

    .line 470
    .local v3, "stayTime":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 471
    iget-object v5, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 472
    iget-object v5, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionToken:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 473
    iget-object v5, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "staytime"

    invoke-virtual {v0, v6, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v5, v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->entryTime:Ljava/lang/String;

    const-string/jumbo v6, "openpagetime"

    invoke-virtual {v0, v6, v5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerAdapter()Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    move-result-object v5

    .line 478
    .local v5, "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    if-eqz v5, :cond_1

    .line 479
    invoke-interface {v5, v0}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->onAssembleBehavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 484
    .end local v1    # "activeFragement":Ljava/lang/Object;
    .end local v2    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    .end local v3    # "stayTime":J
    .end local v5    # "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    move-object v11, v0

    move v12, p2

    invoke-virtual/range {v6 .. v12}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Z)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 486
    return-void

    .line 459
    .end local v0    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_2
    :goto_0
    return-void
.end method

.method public leaveH5Page(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 776
    return-void
.end method

.method public leaveView(Landroid/view/View;Ljava/lang/String;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewId"    # Ljava/lang/String;

    .line 877
    move-object v0, p0

    move-object/from16 v1, p2

    if-eqz p1, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 881
    :cond_0
    sput-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    .line 882
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leaveView lastViewName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastViewName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string v2, ""

    .line 885
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 888
    :cond_1
    move-object v9, v2

    .end local v2    # "title":Ljava/lang/String;
    .local v9, "title":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 889
    .local v2, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    iget-object v3, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Landroid/util/Pair;

    const-wide/16 v10, 0x0

    if-eqz v3, :cond_3

    .line 890
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 891
    .local v3, "activeViewId":Ljava/lang/Object;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 892
    new-instance v4, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    move-object v2, v4

    .line 893
    iget-object v4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->d:Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;

    .line 895
    .local v4, "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->startTimestamp:J

    sub-long/2addr v5, v7

    .line 896
    .local v5, "stayTime":J
    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 897
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 899
    iget-wide v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->launchTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 900
    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->sourceId:Ljava/lang/String;

    const-string/jumbo v8, "sourceappid"

    invoke-virtual {v2, v8, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "staytime"

    invoke-virtual {v2, v12, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->entryTime:Ljava/lang/String;

    const-string/jumbo v12, "openpagetime"

    invoke-virtual {v2, v12, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackId(Ljava/lang/String;)V

    .line 904
    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionToken:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackToken(Ljava/lang/String;)V

    .line 905
    iget-object v7, v4, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->actionDesc:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setTrackDesc(Ljava/lang/String;)V

    .line 906
    iget-wide v12, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_2

    .line 907
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "respond"

    invoke-virtual {v2, v8, v7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/monitor/track/AutoTracker;->getAutoTrackerAdapter()Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    move-result-object v7

    .line 911
    .local v7, "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    if-eqz v7, :cond_3

    .line 912
    invoke-interface {v7, v2}, Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;->onAssembleBehavior(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 918
    .end local v3    # "activeViewId":Ljava/lang/Object;
    .end local v4    # "info":Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
    .end local v5    # "stayTime":J
    .end local v7    # "adapter":Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    :cond_3
    move-object v12, v2

    .end local v2    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .local v12, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, v12

    invoke-virtual/range {v2 .. v8}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Z)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 921
    iput-wide v10, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    .line 922
    iget-wide v2, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    iget-wide v4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->resumeHandleClickTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget-wide v4, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->handleClickTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 923
    :cond_4
    iput-wide v10, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    .line 925
    :cond_5
    return-void

    .line 878
    .end local v9    # "title":Ljava/lang/String;
    .end local v12    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    :cond_6
    :goto_1
    return-void
.end method

.method public logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 518
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Z)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 520
    return-void
.end method

.method public logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V
    .locals 7
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "map"    # Ljava/util/HashMap;
    .param p5, "behavor"    # Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/common/logging/api/behavor/Behavor;",
            ")V"
        }
    .end annotation

    .line 525
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;Z)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 527
    return-void
.end method

.method public logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 507
    return-void
.end method

.method public logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "needRpc"    # Z

    .line 511
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 513
    return-void
.end method

.method public logPageEndWithSpmId(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    .locals 2
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .param p3, "bizCode"    # Ljava/lang/String;
    .param p4, "map"    # Ljava/util/HashMap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;->logPageEndWithSpmId(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 557
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getInstance()Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->getViewKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getPageInfoByKey(Ljava/lang/String;)Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    move-result-object v1

    return-object v1

    .line 561
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public logPageStartWithSpmId(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "view"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;->logPageStartWithSpmId(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    :cond_0
    return-void
.end method

.method public notifyOnAutoClickListener(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p1, "spm"    # Ljava/lang/String;
    .param p2, "semInfo"    # Ljava/lang/Object;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "xPath"    # Ljava/lang/String;

    .line 1245
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mOnAutoClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1246
    .local v1, "softReference":Ljava/lang/ref/SoftReference;
    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;

    .line 1248
    .local v2, "tmpListener":Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;
    if-eqz v2, :cond_0

    .line 1250
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;->onClick(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    goto :goto_1

    .line 1251
    :catchall_0
    move-exception v3

    .line 1252
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyConfigChange Exception :  tmpListener.onSyncReceiver  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error listener is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .end local v1    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v2    # "tmpListener":Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1257
    :cond_1
    return-void
.end method

.method public onPageFinishInitializing()V
    .locals 5

    .line 931
    iget-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 932
    return-void

    .line 934
    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->handleClickTime:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 936
    return-void

    .line 938
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->respond:J

    .line 939
    iput-wide v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->handleClickTime:J

    .line 941
    return-void
.end method

.method public postAddDelegate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 8
    .param p1, "rootContentView"    # Landroid/view/View;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isBindingImmediately"    # Z
    .param p5, "time"    # J

    .line 1023
    sget-object v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->e:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/monitor/track/TrackIntegrator$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$3;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1029
    return-void
.end method

.method public refreshViewDelegate()V
    .locals 4

    .line 1067
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->addDelegate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1068
    return-void
.end method

.method public registerOnAutoClickListener(Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;)V
    .locals 2
    .param p1, "onAutoClickListener"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;

    .line 1216
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mOnAutoClickListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    return-void
.end method

.method public removePageInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1161
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    return-void

    .line 1162
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pageInfos did not contains key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public setEntityContentTagId(I)V
    .locals 0
    .param p1, "tagId"    # I

    .line 1110
    sput p1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->entityContentTagId:I

    .line 1111
    return-void
.end method

.method public setLastClickViewSpm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "lastClickViewSpm"    # Ljava/lang/String;
    .param p2, "semInfo"    # Ljava/lang/Object;

    .line 678
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->lastClickViewSpm:Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    if-eqz v0, :cond_0

    .line 680
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;->setLastClickViewSpm(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    :cond_0
    return-void
.end method

.method public setSpmTrackIntegrator(Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;)V
    .locals 0
    .param p1, "spmTrackIntegrator"    # Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    .line 192
    return-void
.end method

.method public setTagViewId(I)V
    .locals 1
    .param p1, "tagViewId"    # I

    .line 667
    sput p1, Lcom/alipay/mobile/monitor/track/interceptor/AutoClickInterceptor;->TAG_ID:I

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    if-eqz v0, :cond_0

    .line 669
    invoke-interface {v0, p1}, Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;->setTagId(I)V

    .line 671
    :cond_0
    return-void
.end method

.method public setmRecyclerViewIndexGetter(Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;)V
    .locals 0
    .param p1, "mRecyclerViewIndexGetter"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;

    .line 1194
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mRecyclerViewIndexGetter:Lcom/alipay/mobile/monitor/track/TrackIntegrator$RecyclerViewIndexGetter;

    .line 1195
    return-void
.end method

.method public tagViewEntityContentId(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "entityContentId"    # Ljava/lang/String;

    .line 726
    if-nez p1, :cond_0

    .line 727
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v2, "entityContentId..View is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void

    .line 743
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 731
    :cond_0
    if-nez p2, :cond_1

    .line 732
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    const-string v2, "entityContentId..entityContentId is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void

    .line 737
    :cond_1
    sget v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->entityContentTagId:I

    if-eqz v0, :cond_2

    .line 738
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 740
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entityContentTagId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->entityContentTagId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    :goto_0
    goto :goto_2

    .line 744
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 746
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public tagViewSpm(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "spm"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->m:Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/monitor/track/ISpmTrackIntegrator;->tagViewSpm(Landroid/view/View;Ljava/lang/String;)V

    .line 664
    :cond_0
    return-void
.end method

.method public trackClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "rootContentView"    # Landroid/view/View;
    .param p2, "pageId"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "isBindingImmediately"    # Z

    .line 966
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->h:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 969
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->j:Landroid/view/View;

    .line 970
    iput-object p3, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->k:Ljava/lang/String;

    .line 971
    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->l:Ljava/lang/String;

    .line 973
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->addDelegate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 975
    new-instance v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 985
    .local v0, "globalLayoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 986
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 988
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :goto_0
    goto :goto_1

    .line 990
    :catchall_0
    move-exception v1

    .line 993
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 996
    new-instance v1, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1015
    return-void

    .line 967
    .end local v0    # "globalLayoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_2
    :goto_2
    return-void
.end method

.method public unRegisterOnAutoClickListener(Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;)V
    .locals 4
    .param p1, "onAutoClickListener"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;

    .line 1221
    if-nez p1, :cond_0

    .line 1222
    return-void

    .line 1224
    :cond_0
    const/4 v0, 0x0

    .line 1226
    .local v0, "target":Ljava/lang/ref/SoftReference;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mOnAutoClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 1227
    .local v2, "softReference":Ljava/lang/ref/SoftReference;
    if-eqz v2, :cond_1

    .line 1228
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;

    .line 1229
    .local v3, "tmp":Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    .line 1230
    move-object v0, v2

    .line 1231
    goto :goto_1

    .line 1234
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v3    # "tmp":Lcom/alipay/mobile/monitor/track/TrackIntegrator$OnAutoClickListener;
    :cond_1
    goto :goto_0

    .line 1235
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1236
    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->mOnAutoClickListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    .end local v0    # "target":Ljava/lang/ref/SoftReference;
    :cond_3
    goto :goto_2

    .line 1238
    :catchall_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1241
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public updateCurrentPageInfo(Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;)V
    .locals 0
    .param p1, "pageInfo"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1071
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->a:Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1072
    return-void
.end method

.method public updatePageInfo(Ljava/lang/String;Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pageInfo"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1135
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;

    .line 1139
    .local v0, "oldPageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    if-nez v0, :cond_1

    .line 1140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pageInfos did not contains key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void

    .line 1143
    :cond_1
    iget-wide v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime10:J

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime10:J

    .line 1144
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStartTime64:Ljava/lang/String;

    .line 1145
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageId:Ljava/lang/String;

    .line 1146
    iget-wide v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStayTime:J

    iput-wide v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->pageStayTime:J

    .line 1147
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->spm:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->spm:Ljava/lang/String;

    .line 1148
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->refer:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->refer:Ljava/lang/String;

    .line 1149
    iget-boolean v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->isEnd:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->isEnd:Z

    .line 1150
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->spmStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->spmStatus:Ljava/lang/String;

    .line 1151
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->miniPageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->miniPageId:Ljava/lang/String;

    .line 1152
    iget-boolean v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->needRpc:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->needRpc:Z

    .line 1153
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->referClickSpm:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->referClickSpm:Ljava/lang/String;

    .line 1154
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->className:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->className:Ljava/lang/String;

    .line 1155
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->srcSpm:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->srcSpm:Ljava/lang/String;

    .line 1156
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->lastClickSpm:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->lastClickSpm:Ljava/lang/String;

    .line 1157
    iget-object v1, p2, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->lastClickSem:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;->lastClickSem:Ljava/lang/String;

    .line 1158
    return-void

    .line 1136
    .end local v0    # "oldPageInfo":Lcom/alipay/mobile/monitor/track/TrackIntegrator$PageInfo;
    :cond_2
    :goto_0
    return-void
.end method
