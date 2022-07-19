.class final Lcom/mpaas/mas/adapter/api/MPLogger$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/monitor/track/AutoTrackerHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/mas/adapter/api/MPLogger;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mTrackAgent:Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/mpaas/mas/adapter/api/MPLogger$3;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance p1, Lcom/alipay/mobile/monitor/track/agent/DefaultTrackAgent;

    invoke-direct {p1}, Lcom/alipay/mobile/monitor/track/agent/DefaultTrackAgent;-><init>()V

    iput-object p1, p0, Lcom/mpaas/mas/adapter/api/MPLogger$3;->mTrackAgent:Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/mpaas/mas/adapter/api/MPLogger$3;->val$application:Landroid/app/Application;

    return-object v0
.end method

.method public final getTrackAgent()Lcom/alipay/mobile/monitor/track/agent/TrackAgent;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/mpaas/mas/adapter/api/MPLogger$3;->mTrackAgent:Lcom/alipay/mobile/monitor/track/agent/TrackAgent;

    return-object v0
.end method
