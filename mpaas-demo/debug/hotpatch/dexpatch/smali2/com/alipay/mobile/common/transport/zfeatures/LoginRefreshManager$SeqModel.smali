.class Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;
.super Ljava/lang/Object;
.source "LoginRefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeqModel"
.end annotation


# instance fields
.field final createTime:J

.field final seqNum:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;
    .param p2, "seqNum"    # I

    .line 262
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->this$0:Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->createTime:J

    .line 263
    iput p2, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->seqNum:I

    .line 264
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/zfeatures/LoginRefreshManager$SeqModel;->createTime:J

    return-wide v0
.end method
