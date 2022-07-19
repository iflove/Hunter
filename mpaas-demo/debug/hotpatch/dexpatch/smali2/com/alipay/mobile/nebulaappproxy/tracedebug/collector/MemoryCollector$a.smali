.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector$a;
.super Ljava/lang/Object;
.source "MemoryCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;

    return-void
.end method
