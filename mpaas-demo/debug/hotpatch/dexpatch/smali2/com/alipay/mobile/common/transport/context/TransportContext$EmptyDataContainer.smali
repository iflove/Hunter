.class Lcom/alipay/mobile/common/transport/context/TransportContext$EmptyDataContainer;
.super Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;
.source "TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/context/TransportContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyDataContainer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .line 223
    return-void
.end method

.method public removeDataItem(Ljava/lang/String;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .line 236
    return-void
.end method

.method public timeItemDot(Ljava/lang/String;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .line 244
    return-void
.end method

.method public timeItemRelease(Ljava/lang/String;)V
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .line 252
    return-void
.end method
