.class public Lcom/alipay/mobile/monitor/track/AutoTracker;
.super Ljava/lang/Object;
.source "AutoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/monitor/track/AutoTracker$a;
    }
.end annotation


# instance fields
.field private mAutoTrackerAdapter:Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

.field private mAutoTrackerHolder:Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/monitor/track/AutoTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/monitor/track/AutoTracker$1;

    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/monitor/track/AutoTracker;-><init>()V

    return-void
.end method

.method public static getImpl()Lcom/alipay/mobile/monitor/track/AutoTracker;
    .locals 1

    .line 19
    invoke-static {}, Lcom/alipay/mobile/monitor/track/AutoTracker$a;->a()Lcom/alipay/mobile/monitor/track/AutoTracker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoTrackerAdapter()Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/AutoTracker;->mAutoTrackerAdapter:Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    return-object v0
.end method

.method public getAutoTrackerHolder()Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/AutoTracker;->mAutoTrackerHolder:Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;

    return-object v0
.end method

.method public launch(Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/AutoTracker;->mAutoTrackerHolder:Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;

    .line 32
    return-void
.end method

.method public setAutoTrackerAdapter(Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/AutoTracker;->mAutoTrackerAdapter:Lcom/alipay/mobile/monitor/track/AutoTrackerAdapter;

    .line 36
    return-void
.end method
