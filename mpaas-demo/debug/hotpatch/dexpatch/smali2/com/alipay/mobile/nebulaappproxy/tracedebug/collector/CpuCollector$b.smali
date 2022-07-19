.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$b;
.super Ljava/lang/Object;
.source "CpuCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector$b;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/CpuCollector;

    return-void
.end method
