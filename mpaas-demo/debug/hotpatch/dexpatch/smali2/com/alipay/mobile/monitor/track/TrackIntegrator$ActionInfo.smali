.class Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/track/TrackIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionInfo"
.end annotation


# instance fields
.field public actionDesc:Ljava/lang/String;

.field public actionId:Ljava/lang/String;

.field public actionToken:Ljava/lang/String;

.field public appId:Ljava/lang/String;

.field public entryTime:Ljava/lang/String;

.field public launchTime:J

.field public preViewId:Ljava/lang/String;

.field public sourceId:Ljava/lang/String;

.field public startTimestamp:J

.field final synthetic this$0:Lcom/alipay/mobile/monitor/track/TrackIntegrator;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)V
    .locals 2

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->this$0:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;->launchTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator;
    .param p2, "x1"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/monitor/track/TrackIntegrator$ActionInfo;-><init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;)V

    return-void
.end method
