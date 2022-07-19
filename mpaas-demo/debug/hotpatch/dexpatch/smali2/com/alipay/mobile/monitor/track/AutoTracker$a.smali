.class final Lcom/alipay/mobile/monitor/track/AutoTracker$a;
.super Ljava/lang/Object;
.source "AutoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/track/AutoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/alipay/mobile/monitor/track/AutoTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/alipay/mobile/monitor/track/AutoTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/monitor/track/AutoTracker;-><init>(Lcom/alipay/mobile/monitor/track/AutoTracker$1;)V

    sput-object v0, Lcom/alipay/mobile/monitor/track/AutoTracker$a;->a:Lcom/alipay/mobile/monitor/track/AutoTracker;

    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/monitor/track/AutoTracker;
    .locals 1

    .line 11
    sget-object v0, Lcom/alipay/mobile/monitor/track/AutoTracker$a;->a:Lcom/alipay/mobile/monitor/track/AutoTracker;

    return-object v0
.end method
