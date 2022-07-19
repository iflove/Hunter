.class public Lcom/alipay/dexpatch/util/DPMonitor;
.super Ljava/lang/Object;
.source "DPMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPMonitor;->a:Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;

    if-eqz v0, :cond_0

    .line 2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/alipay/dexpatch/util/DPMonitor;->a:Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static setDPMonitorImpl(Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/alipay/dexpatch/util/DPMonitor;->a:Lcom/alipay/dexpatch/util/DPMonitor$DPMonitorImpl;

    return-void
.end method
