.class public Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;
.super Ljava/lang/Object;
.source "RemoteDebugStateManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

.field private e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

.field private f:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->g:Z

    .line 32
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_NON_REMOTE_DEBUG:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECTING:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 94
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "remoteDebugConnecting...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 98
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECTED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 115
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "remoteDebugConnected...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method private d()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECT_FAILED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 136
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "remoteDebugConnectFailed...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->g:Z

    return v0
.end method

.method private e()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_REMOTE_DISCONNECTED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 164
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "remoteDisconnected...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private f()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_HIT_BREAKPOINT:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string v1, "hitBreakpoint...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 195
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method private g()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_RELEASE_BREAKPOINT:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 213
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "releaseBreakpoint...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$6;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method private h()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_EXITED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 232
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string v1, "exitDebugMode...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->d:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    .line 237
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->f:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;->exitDebugMode()V

    .line 242
    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_NETWORK_UNAVAILABLE:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-eq v0, v1, :cond_0

    .line 249
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    const-string v1, "handleNetworkUnavailable...state error"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 252
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$7;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method private j()V
    .locals 7

    .line 278
    new-instance v6, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u786e\u5b9a\u9000\u51fa\u8fdc\u7a0b\u8c03\u8bd5?"

    const-string/jumbo v4, "\u786e\u5b9a"

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    .local v0, "dialog":Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
    move-object v0, v6

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$8;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$8;-><init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V

    .line 287
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->show()V

    .line 288
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->g:Z

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_EXITED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V

    return-void

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->j()V

    .line 272
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 40
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c:Ljava/lang/ref/WeakReference;

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;)V
    .locals 3
    .param p1, "state"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    .line 46
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyStateChanged...state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", old state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-ne v1, p1, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    sget-object v2, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_EXITED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-ne v1, v2, :cond_1

    .line 52
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->STATE_CONNECT_FAILED:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    if-ne p1, v1, :cond_1

    .line 53
    const-string v1, "RemoteDebug is already exited, will not transit state to failed"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$9;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->h()V

    goto :goto_0

    .line 79
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->g()V

    .line 80
    return-void

    .line 76
    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->f()V

    .line 77
    return-void

    .line 73
    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->e()V

    .line 74
    return-void

    .line 70
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->i()V

    .line 71
    return-void

    .line 67
    :pswitch_5
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->d()V

    .line 68
    return-void

    .line 64
    :pswitch_6
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c()V

    .line 65
    return-void

    .line 61
    :pswitch_7
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b()V

    .line 62
    return-void

    .line 87
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->f:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$onStateChangedActionListener;

    .line 37
    return-void
.end method
