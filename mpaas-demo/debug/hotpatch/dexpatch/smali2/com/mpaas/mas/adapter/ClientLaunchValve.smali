.class public Lcom/mpaas/mas/adapter/ClientLaunchValve;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientLaunchValve"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 16
    .local v2, "now":J
    move-wide v2, v0

    invoke-static {v0, v1}, Lcom/mpaas/mas/adapter/api/MPLogger;->setLastReportClientLaunchTime(J)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLastReportClientLaunchTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientLaunchValve"

    invoke-static {v1, v0}, Lcom/mpaas/mas/adapter/api/MPLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
