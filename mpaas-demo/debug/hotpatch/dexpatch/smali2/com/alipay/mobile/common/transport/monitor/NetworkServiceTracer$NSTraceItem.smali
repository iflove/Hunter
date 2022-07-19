.class public Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;
.super Ljava/lang/Object;
.source "NetworkServiceTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NSTraceItem"
.end annotation


# instance fields
.field public errorCount:I

.field public firstErrorTime:J

.field public lastErrorCode:I

.field public lastErrorMsg:Ljava/lang/String;

.field public lastErrorTime:J

.field public networkType:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    .line 389
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer$NSTraceItem;->this$0:Lcom/alipay/mobile/common/transport/monitor/NetworkServiceTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
