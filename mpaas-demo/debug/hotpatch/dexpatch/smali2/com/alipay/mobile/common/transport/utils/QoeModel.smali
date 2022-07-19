.class public Lcom/alipay/mobile/common/transport/utils/QoeModel;
.super Ljava/lang/Object;
.source "QoeModel.java"


# instance fields
.field public rtt_d:D

.field public rtt_o:D

.field public rtt_s:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_s:D

    .line 18
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    .line 19
    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_o:D

    return-void
.end method


# virtual methods
.method public estimate(D)V
    .locals 10
    .param p1, "rtt"    # D

    .line 27
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_s:D

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    .line 28
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_s:D

    .line 29
    mul-double v2, v2, p1

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    .line 30
    const-wide v0, 0x407f400000000000L    # 500.0

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    goto :goto_1

    .line 32
    :cond_1
    const-wide v6, 0x3fb999999999999aL    # 0.1

    sub-double v8, p1, v0

    mul-double v8, v8, v6

    add-double/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_s:D

    .line 33
    sub-double v0, p1, v0

    .line 34
    move-wide p1, v0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_2

    .line 35
    neg-double p1, p1

    .line 37
    :cond_2
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    mul-double v4, v4, v0

    mul-double v2, v2, p1

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    .line 39
    :goto_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_s:D

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iget-wide v4, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_o:D

    .line 40
    return-void
.end method

.method public reset()V
    .locals 2

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_o:D

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_d:D

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/utils/QoeModel;->rtt_s:D

    .line 23
    return-void
.end method
