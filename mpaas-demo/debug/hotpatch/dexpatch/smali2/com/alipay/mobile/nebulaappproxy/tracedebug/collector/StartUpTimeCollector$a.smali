.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector$a;
.super Ljava/lang/Object;
.source "StartUpTimeCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/StartUpTimeCollector;

    return-void
.end method
